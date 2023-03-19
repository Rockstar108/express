# aws cloudformation create-stack --stack-name cfn-stack-hello --template-body file://cf-ecs.yaml --parameters file://cf-ecs.params.json --capabilities CAPABILITY_NAMED_IAM --region 'ap-south-1'
STACK_NAME=cfn-stack-hello

# if ! aws cloudformation describe-stacks --stack-name $STACK_NAME > /dev/null 2>&1; then
#     aws cloudformation create-stack --stack-name $STACK_NAME --template-body file://cf-ecs.yaml --parameters file://cf-ecs.params.json --capabilities CAPABILITY_NAMED_IAM --region 'ap-south-1' 
# else
#     aws cloudformation update-stack --stack-name $STACK_NAME --template-body file://cf-ecs.yaml --parameters file://cf-ecs.params.json --capabilities CAPABILITY_NAMED_IAM --region 'ap-south-1'
# fi
if aws cloudformation describe-stacks --stack-name $STACK_NAME --region 'ap-south-1' &>/dev/null 
then
    aws cloudformation update-stack --stack-name $STACK_NAME  --template-body file://cf-ecs.yaml --parameters file://cf-ecs.params.json --capabilities CAPABILITY_NAMED_IAM --region 'ap-south-1'
else
    aws cloudformation create-stack --stack-name $STACK_NAME  --template-body file://cf-ecs.yaml --parameters file://cf-ecs.params.json --capabilities CAPABILITY_NAMED_IAM --region 'ap-south-1'
fi
