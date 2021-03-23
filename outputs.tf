# API Gateway Rest API
output "id" {
  value       = aws_api_gateway_rest_api.this.id
  description = "The ID of the REST API"
}

output "root_resource_id" {
  value       = aws_api_gateway_rest_api.this.root_resource_id
  description = "The resource ID of the REST API's root"
}

output "created_date" {
  value       = aws_api_gateway_rest_api.this.created_date
  description = "The creation date of the REST API "
}

output "execution_arn" {
  value       = aws_api_gateway_rest_api.this.execution_arn
  description = "The execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path."
}

output "arn" {
  value       = aws_api_gateway_rest_api.this.arn
  description = "Amazon Resource Name (ARN)"
}