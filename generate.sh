
# Digital Ocean
java -jar openapi-generator-cli.jar generate -g swift-combine -i ./DigitalOcean-v2.yaml --additional-properties projectName=DigitalOcean,apiNamePrefix= --skip-validate-spec

# WeatherApi
java -jar openapi-generator-cli.jar generate -g swift-combine -i ./WeatherApi.json --additional-properties projectName=Weather,apiNamePrefix= --skip-validate-spec