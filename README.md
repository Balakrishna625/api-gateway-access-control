# API Gateway Access Control and Logging

This repository contains configurations for restricting access to an API Gateway to specific IP addresses and logging important request details. The access policy blocks unauthorized requests and allows fine-tuned access control based on IP ranges.

## Structure

- `policies/`
  - `access_policy.json`: Defines the access control policy for the API Gateway.
  - `logging_policy.json`: Custom logging configuration to track request details.
  
- `logs/`
  - `sample-api-log.json`: Example log of an API Gateway request.
  - `log-structure-explanation.md`: Explanation of each field in the logging configuration.

- `scripts/`
  - `deploy_policy.sh`: Script to deploy the API Gateway access policy using AWS CLI.

## Access Control

The access policy restricts access to specific IP addresses using the following:
- **Allow** access from any IP to the OPTIONS method.
- **Deny** access from any IP that is not part of the specified IP ranges.
- **Log** the incoming requests for further analysis.

## Custom Logging

The logging configuration tracks important details such as:
- Source IP (`sourceIp`)
- Request Time (`requestTime`)
- HTTP Method (`httpMethod`)
- Status Code (`status`)
- User-Agent (`userAgent`)
- Integration Error Details (if any)

## Usage

1. **Modify the access policy**: Update the `access_policy.json` file with the required IP addresses and API Gateway details.
2. **Deploy the policy**: Use the provided `deploy_policy.sh` script to apply the access policy to your API Gateway.
3. **Review logs**: The custom logging policy can be viewed in CloudWatch. You can reference the `sample-api-log.json` for an example format.

## Additional Info

- Ensure that the correct **IP addresses** are used in the `NotIpAddress` condition of the policy.
- Logs are crucial for debugging and monitoring API requests. Customizing the log format allows deeper insight into request patterns.
- Use the **integrationRequestId** to correlate API Gateway logs with backend system logs.

## Next Steps

- Automate policy updates using CI/CD pipelines.
- Further enhance access control with additional conditions, such as headers or query parameters.

## Dont forget to deploy the API gateway to stage after this changes