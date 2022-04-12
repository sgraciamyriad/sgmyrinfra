#!/bin/bash

echo "Creating stack..."

STACK_NAME="myriadbaseinfra"
STACK_ID=$( \
  aws cloudformation create-stack \
  --stack-name ${STACK_NAME} \
  --template-body file://mainstuff.json \
  --capabilities CAPABILITY_NAMED_IAM \
  | jq -r .StackId \
)


echo " ${STACK_NAME} is being created..."
aws cloudformation describe-stacks --stack-name ${STACK_ID} 
aws cloudformation list-stack-resources --stack-name myriadbaseinfra
echo "Certificates need to be manually validated for stack creation to change to status 'COMPLETED' "


# This command will delete the stack if errors occur or you need to roll back  
# aws cloudformation delete-stack --stack-name myriadbaseinfra
