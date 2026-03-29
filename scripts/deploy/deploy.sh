#!/bin/bash

# Script to deploy CloudFormation templates for disaster recovery infrastructure

# Setting the AWS region
echo "Setting AWS Region..."
export AWS_REGION=us-west-2

# Define CloudFormation templates
TEMPLATE_FILE="path/to/your-template.yml"

# Check if AWS CLI is installed
if ! command -v aws &>/dev/null
then
    echo "AWS CLI could not be found. Please install it before running this script."
    exit 1
fi

# Create CloudFormation stack
STACK_NAME="DisasterRecoveryStack"
echo "Creating CloudFormation stack: $STACK_NAME"
aws cloudformation create-stack --stack-name $STACK_NAME --template-body file://$TEMPLATE_FILE --region $AWS_REGION

echo "CloudFormation stack creation initiated."