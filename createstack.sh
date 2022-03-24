echo "Creating stack..."


STACK_ID=$( \
  aws cloudformation create-stack \
  --stack-name ${STACK_NAME} \
  --template-body file://${DIR}/cron-batch-stack.yml \
  --capabilities CAPABILITY_IAM \
  --parameters file://${DIR}/parameters.json \
  --tags file://${DIR}/tags.json 
)


# aws cloudformation create-stack \
#   --stack-name ${STACK_NAME} \
#   --template-body file://${DIR}/cron-batch-stack.yml \
#   --capabilities CAPABILITY_IAM \
#   --parameters file://${DIR}/parameters.json \
#   --tags file://${DIR}/tags.json \

echo "Waiting on ${STACK_ID} create completion..."
aws cloudformation wait stack-create-complete --stack-name ${STACK_ID}
aws cloudformation describe-stacks --stack-name ${STACK_ID} 