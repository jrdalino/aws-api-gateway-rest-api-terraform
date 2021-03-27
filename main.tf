# APIGW REST API
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

# APIGW Resource
resource "aws_api_gateway_resource" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id
  parent_id   = aws_api_gateway_rest_api.this.root_resource_id
  path_part   = "healthcheck"
}

# APIGW Method
resource "aws_api_gateway_method" "this" {
  rest_api_id   = aws_api_gateway_rest_api.this.id
  resource_id   = aws_api_gateway_resource.this.id
  http_method   = "GET"
  authorization = "NONE"
  # authorizer_id
  # authorization_scopes
  # api_key_required
  # operation_name
  # request_models
  # request_validator_id
  # request_parameters
}

# APIGW Integration
resource "aws_api_gateway_integration" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id
  resource_id = aws_api_gateway_resource.this.id
  http_method = aws_api_gateway_method.this.http_method
  # integration_http_method
  type = "MOCK"
  # connection_type = "INTERNET"
  # connection_id
  # uri
  # credentials
  request_templates = {
    "application/json" = <<EOF
{
  "statusCode": 200,
  "body" : {
    "status": "ok"
  }
}
EOF
  }
  request_parameters = {
    "integration.request.header.X-Authorization" = "'static'"
  }
  # passthrough_behavior = "WHEN_NO_MATCH"
  # cache_key_parameters = ["method.request.path.param"]
  # cache_namespace      = "foobar"
  # content_handling
  timeout_milliseconds = 29000
  # tls_config
}

resource "aws_api_gateway_method_response" "this" {
  http_method = aws_api_gateway_method.this.http_method
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
  status_code = "200"
}

resource "aws_api_gateway_integration_response" "this" {
  http_method = aws_api_gateway_method.this.http_method
  resource_id = aws_api_gateway_resource.this.id
  rest_api_id = aws_api_gateway_rest_api.this.id
  status_code = aws_api_gateway_method_response.this.status_code
}

# APIGW Deployment
resource "aws_api_gateway_deployment" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id
  # description
  # stage_name  = "prod"
  # stage_description = "prod" 
  # triggers
  lifecycle {
    create_before_destroy = true
  }
  depends_on = [
    aws_api_gateway_rest_api.this,
    aws_api_gateway_resource.this,
    aws_api_gateway_method.this,
    aws_api_gateway_integration.this,
    aws_api_gateway_method_response.this,
    aws_api_gateway_integration_response.this,
  ]  
}

# APIGW Stage
resource "aws_api_gateway_stage" "this" {
  rest_api_id   = aws_api_gateway_rest_api.this.id
  stage_name    = var.aws_api_gateway_stage_stage_name
  deployment_id = aws_api_gateway_deployment.this.id
  # access_log_settings {
  #   destination_arn = ""
  #   format = ""
  # }
  # cache_cluster_enabled
  # cache_cluster_size
  # client_certificate_id
  # description
  # documentation_version
  # variables
  # tags
  # xray_tracing_enabled = true
  depends_on = [
    aws_api_gateway_rest_api.this,
    aws_api_gateway_resource.this,
    aws_api_gateway_method.this,
    aws_api_gateway_integration.this,
    aws_api_gateway_method_response.this,
    aws_api_gateway_integration_response.this,
  ]
}

# API Gateway Account Settings: aws_api_gateway_account
# API Gateway Authorizer: aws_api_gateway_authorizer