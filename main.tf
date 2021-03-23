# API Gateway
resource "aws_api_gateway_rest_api" "this" {
  name        = var.aws_api_gateway_rest_api_name
  description = var.aws_api_gateway_rest_api_description
  endpoint_configuration {
    types = ["REGIONAL"]
  }
  # binary_media_types
  # minimum_compression_size
  # body
  # policy
  # api_key_source

  tags = {
    Name           = var.aws_api_gateway_rest_api_name
    Namespace      = var.namespace
    BoundedContext = var.bounded_context
    Environment    = var.environment
  }
}