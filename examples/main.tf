module "restapi" {
  source = "git::https://github.com/jrdalino/aws-api-gateway-rest-api-terraform.git?ref=main"
  # General
  aws_region  = var.aws_region
  aws_account = var.aws_account
  aws_role    = var.aws_role

  # Tagging
  namespace       = var.namespace
  bounded_context = var.bounded_context
  environment     = var.environment

  # API Gateway REST API
  aws_api_gateway_rest_api_name        = var.aws_api_gateway_rest_api_name
  aws_api_gateway_rest_api_description = var.aws_api_gateway_rest_api_description
}