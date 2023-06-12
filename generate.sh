
# Digital Ocean
java -jar openapi-generator-cli.jar generate -g swift-combine -i ./DigitalOcean-v2.yaml --additional-properties projectName=DigitalOcean,apiNamePrefix= --skip-validate-spec

# Pinterest
java -jar openapi-generator-cli.jar generate -g swift-combine -i ./Pinterest-v5.json --additional-properties projectName=Pinterest,apiNamePrefix= --skip-validate-spec