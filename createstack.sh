#!/bin/bash


echo "Creating stack..."

STACK_NAME="myriadbaseinfra"
STACK_ID=$( \
  aws cloudformation create-stack \
  --stack-name ${STACK_NAME} \
  --template-body file://mainstuff.json \
  --capabilities CAPABILITY_NAMED_IAM 
)


echo "Waiting on ${STACK_ID} create completion..."
aws cloudformation wait stack-create-complete --stack-name ${STACK_ID}
aws cloudformation describe-stacks --stack-name ${STACK_ID} 
aws cloudformation list-stack-resources --stack-name myriadbaseinfra



# This command will delete the stack if errors occur or you need to roll back  
# aws cloudformation delete-stack --stack-name ${STACK_ID}
