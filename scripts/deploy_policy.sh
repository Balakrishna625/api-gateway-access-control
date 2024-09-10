#!/bin/bash

# Variables
ACCOUNT_ID=<your-account-id>
API_ID=<your-api-gateway-id>
STAGE_NAME=<stage-name>
REGION=us-east-1

# Deploy access policy
aws apigateway update-rest-api-policy \
    --region $REGION \
    --rest-api-id $API_ID \
    --patch-operations op='replace',path='/policy',value=file://policies/access_policy.json
