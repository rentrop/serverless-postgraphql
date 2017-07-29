get-graphql-schema http://localhost:5000/graphql > ./stories/schema/schema.graphql;
echo "const schema = \`" > ./stories/schema/schema.js;
sed "s/\`/\'/g" ./stories/schema/schema.graphql >> ./stories/schema/schema.js;
echo "\`; export default schema;" >> ./stories/schema/schema.js;
