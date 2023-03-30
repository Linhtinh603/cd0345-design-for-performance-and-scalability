# TODO: Define the output variable for the lambda function.
output "lambda_function_arn" {
  description = "The ARN of the Lambda function"
  value       = aws_lambda_function.udacity_lambda_function.arn
}
output "function_name" {
  description = "The name of the Lambda function"
  value       = aws_lambda_function.udacity_lambda_function.function_name
}
