aws cloudformation create-stack --stack-name cfn-stack-hello --template-body file://cf-ecs.yaml --parameters file://cf-ecs.params.json --capabilities CAPABILITY_NAMED_IAM
