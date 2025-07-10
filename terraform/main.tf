provider "aws" {
  region = var.aws_region
}

resource "aws_lambda_function" "power_lambda" {
  function_name = var.lambda_function_name
  handler       = var.lambda_handler
  runtime       = var.lambda_runtime
  filename      = var.lambda_zip_path
  role          = var.existing_lambda_role_arn

  source_code_hash = filebase64sha256(var.lambda_zip_path)
}
