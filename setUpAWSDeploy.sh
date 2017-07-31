export CURRENT_FLOODS_BRANCH_NAME=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

export S3_BUCKET=$(echo "ctxfloods-frontend-$CURRENT_FLOODS_BRANCH_NAME" | tr '[:upper:]' '[:lower:]')

export npm_config_PGCON=""
export npm_config_PGRUNCON=""

tput bold 
echo "Please enter your AWS Credentials"
tput sgr0

echo "Access key ID:"
read AWS_ACCESS_KEY_ID
export AWS_ACCESS_KEY_ID
travis encrypt AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID --add

echo "Secret access key"
read -s AWS_SECRET_ACCESS_KEY
export AWS_SECRET_ACCESS_KEY
travis encrypt AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY --add

tput bold 
echo "Deploying to AWS to get a cloudformation/endpoint"
tput sgr0

cd backend
yarn
sls deploy -v | tee out.tmp
export PGENDPOINT=$(grep "pgEndpoint" out.tmp | cut -f2- -d: | cut -c2-)
rm out.tmp

tput bold 
echo "Setting PGCON and PGRUNCON"
tput sgr0

export npm_config_PGCON=$(echo postgresql://example:serverless@$PGENDPOINT:5432/floods)
travis encrypt npm_config_PGCON=$npm_config_PGCON --add
export npm_config_PGRUNCON=$(echo postgresql://floods_postgraphql:xyz@$PGENDPOINT:5432/floods)
travis encrypt npm_config_PGRUNCON=$npm_config_PGRUNCON --add

tput bold 
echo "Deploying to AWS"
tput sgr0

yarn rebuild-and-deploy | tee out.tmp
export POSTGRAPHQL_ENDPOINT=$(grep "POST" out.tmp | cut -f2- -d- | cut -c2-)
rm out.tmp
travis encrypt POSTGRAPHQL_ENDPOINT=$POSTGRAPHQL_ENDPOINT --add
travis encrypt REACT_APP_AWS_ENDPOINT=$POSTGRAPHQL_ENDPOINT --add

cd ..
echo "  - CURRENT_FLOODS_BRANCH_NAME=$CURRENT_FLOODS_BRANCH_NAME" >> .travis.yml
echo "  - S3_BUCKET=$S3_BUCKET" >> .travis.yml
