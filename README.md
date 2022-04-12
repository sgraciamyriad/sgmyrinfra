# Myriad Base Infrastructure 
MAIN GOAL: Automate the creation of infrastructure in AWS Accounts

- This repo will be used to create the baseline infrastructure when a new account is created
- The shell script contained in this project will create the stack and update you when the task has been completed
- There will be room for VPC creation in some capacity. More infra to be added. 

# Requirements
Create all of these pieces of infrastructure in cloudformation/cloud cdk:

1. Route53 - a common zone and connected to all other VPCs 
2. SSL certificate 
3. VPC - optional for now but maybe added later so have a noop option
4. Enable Vault for ECS and EC2
5. Enable gocd agents connection from SWE


# Design/Implementation
### Req#1 
- Exists as cloudformation in mainstuff.json

### Req#2
- Exists as cloudformation in mainstuff.json 

### Req#3
- Does not exist yet

### Req#4
- Exists as cloudformation in mainstuff.json

### Req#5
- In progress in mainstuff.json

