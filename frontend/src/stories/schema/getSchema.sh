get-graphql-schema http://localhost:5000/graphql > ./src/stories/schema/schema.graphql;
echo "const schema = \`" > ./src/stories/schema/schema.js;
sed "s/\`/\'/g" ./src/stories/schema/schema.graphql >> ./src/stories/schema/schema.js;
echo "\`; export default schema;" >> ./src/stories/schema/schema.js;
