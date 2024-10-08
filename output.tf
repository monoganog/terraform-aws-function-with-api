output "bucket_name" {
  value = module.code_bucket.s3_bucket_id
}

output "api_gateway_url" {
  description = "API Gateway URL."
  value       = "${aws_api_gateway_stage.this.invoke_url}/${aws_api_gateway_resource.this.path_part}"
}

output "lambda_invoke_arn" {
  description = "The Invoke ARN of the Lambda function."
  value       = aws_lambda_function.this.invoke_arn
}

output "lambda_function_name" {
  description = "The name of the lambda function."
  value       = aws_lambda_function.this.function_name
}

output "github_repository_url" {
  description = "The URL of the Github repository."
  value       = github_repository.code.html_url
}
