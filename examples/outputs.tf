# API Gateway
output "aws_api_gateway_rest_api_id" {
  value       = module.apigateway.aws_api_gateway_rest_api_id
  description = "The ID of the REST API"
}

output "aws_api_gateway_rest_api_root_resource_id" {
  value       = module.apigateway.aws_api_gateway_rest_api_root_resource_id
  description = "The resource ID of the REST API's root"
}

output "aws_api_gateway_rest_api_created_date" {
  value       = module.apigateway.aws_api_gateway_rest_api_created_date
  description = "The creation date of the REST API "
}

output "aws_api_gateway_rest_api_execution_arn" {
  value       = module.apigateway.aws_api_gateway_rest_api_execution_arn
  description = "The execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path."
}

output "aws_api_gateway_rest_api_arn" {
  value       = module.apigateway.aws_api_gateway_rest_api_arn
  description = "Amazon Resource Name (ARN)"
}

# Resource
output "aws_api_gateway_resource_id" {
  value       = module.apigateway.aws_api_gateway_resource_id
  description = "The resource's identifier."
}

output "aws_api_gateway_resource_path" {
  value       = module.apigateway.aws_api_gateway_resource_path
  description = "The complete path for this API resource, including all parent paths."
}

# Method: None Outputs
# Method Response: No Outputs
# Integration: No Outputs
# Integration Response: No Ouputs

# Deployment
output "aws_api_gateway_deployment_id" {
  value       = module.apigateway.aws_api_gateway_deployment_id
  description = "The ID of the deployment"
}

output "aws_api_gateway_deployment_invoke_url" {
  value       = module.apigateway.aws_api_gateway_deployment_invoke_url
  description = "The URL to invoke the API pointing to the stage, e.g. https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod"
}

output "aws_api_gateway_deployment_execution_arn" {
  value       = module.apigateway.aws_api_gateway_deployment_execution_arn
  description = "The execution ARN to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod"
}

output "aws_api_gateway_deployment_created_date" {
  value       = module.apigateway.aws_api_gateway_deployment_created_date
  description = "The creation date of the deployment"
}

# Stage
output "aws_api_gateway_stage_arn" {
  value       = module.apigateway.aws_api_gateway_stage_arn
  description = "Amazon Resource Name (ARN)"
}

output "aws_api_gateway_stage_id" {
  value       = module.apigateway.aws_api_gateway_stage_id
  description = "The ID of the stage"
}

output "aws_api_gateway_stage_invoke_url" {
  value       = module.apigateway.aws_api_gateway_stage_invoke_url
  description = "The URL to invoke the API pointing to the stage, e.g. https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod"
}

output "aws_api_gateway_stage_execution_arn" {
  value       = module.apigateway.aws_api_gateway_stage_execution_arn
  description = "The execution ARN to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod"
}