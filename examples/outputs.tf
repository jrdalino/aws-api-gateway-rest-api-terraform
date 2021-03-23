# API Gateway Rest API
output "id" {
  value       = module.restapi.id
  description = "The ID of the REST API"
}

output "root_resource_id" {
  value       = module.restapi.root_resource_id
  description = "The resource ID of the REST API's root"
}

output "created_date" {
  value       = module.restapi.created_date
  description = "The creation date of the REST API "
}

output "execution_arn" {
  value       = module.restapi.execution_arn
  description = "The execution ARN part to be used in lambda_permission's source_arn when allowing API Gateway to invoke a Lambda function, e.g. arn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path."
}

output "arn" {
  value       = module.restapi.arn
  description = "Amazon Resource Name (ARN)"
}