variable "aws_region" {
  default = "us-east-2"
}

variable "lambda_function_name" {
  default = "PowerOfMathFunction"
}

variable "lambda_runtime" {
  default = "python3.13"
}

variable "lambda_handler" {
  default = "power_function.lambda_handler"
}

variable "lambda_zip_path" {
  default = "../lambda.zip"
}

variable "existing_lambda_role_arn" {
  default     = "arn:aws:iam::123456789012:role/my-existing-lambda-role"
}