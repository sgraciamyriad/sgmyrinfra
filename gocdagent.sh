echo "CONFIGURING GOCD AGENT access..."

aws cloudformation create-stack /
--stack-name <stack_name> /
--region <region_name> /
--capabilities CAPABILITY_IAM /
--template-body file:///<path_to_json_template_file>