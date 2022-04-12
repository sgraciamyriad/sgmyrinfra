# Myriad Base Infrastructure 
MAIN GOAL: Automate the creation of infrastructure in AWS Accounts

- This repo will be used to create the baseline infrastructure when a new account is created
- The shell script contained in this project will create the stack and update you when the task has been completed
- There will be room for VPC creation in some capacity. More infra to be added. 

# Requirements
Create all of these pieces of infrastructure in cloudformation:

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

# Instructions

1. Open the profile.txt file and add in a block for the necessary profile 
for the particular account you will be deploying the baseline infrastructure to. The format/template is laid out for you already. Simply add the name of the profile, access key and secret access key. Save this.
2. CD/Navigate to createstack.sh script
3. run `./createstack.sh`
4. The script will add a new profile to your aws credentials file necessary to access the specified account. It will then create a cloudformation stack which will produce 2 certificates, a DNS hosted zone, a role and policy for access to VAULT. 

