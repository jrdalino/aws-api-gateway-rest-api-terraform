# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."
}

variable "aws_role" {
  type        = string
  description = "Used AWS Role."
}

# Tagging
variable "namespace" {
  type        = string
  description = "Namespace."
}

variable "bounded_context" {
  type        = string
  description = "Bounded Context."
}

variable "environment" {
  type        = string
  description = "Environment."
}

# API Gateway REST API
variable "aws_api_gateway_rest_api_name" {
  type        = string
  description = "(Required) The name of the REST API"
}

variable "aws_api_gateway_rest_api_description" {
  type        = string
  description = "(Optional) The description of the REST API"
}