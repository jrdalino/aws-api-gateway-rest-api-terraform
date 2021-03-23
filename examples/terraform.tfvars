# General
aws_region  = "ap-southeast-1"
aws_account = "623552185285" # AWS account where resource will be created
aws_role    = "OrganizationAccountAccessRole"

# Tagging
namespace       = "bbsdm"
bounded_context = "shared"
environment     = "production"

# API Gateway REST API
aws_api_gateway_rest_api_name        = "bbsdm-api"
aws_api_gateway_rest_api_description = "API for BBSDM"