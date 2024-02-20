variable "region" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "bucket_utility" {
  type = string
}

variable "bucket_origin" {
  type = string
}

variable "topic_sns_name" {
  type = string
}

variable "redshift_connection_name" {
  type = string
}

variable "jobs_config" {
  type = map(object({
    job_name              = string
    glue_version          = string
    log_group             = string
    log_retention         = string
    role_name             = string
    role_file             = string
    policy_name           = string
    policy_file           = string
    instance_type         = string
    num_workers           = number
    max_concurrent_runs   = number
    script_location       = string
    extra_py_files        = string
    environment_variables = map(string)
  }))
}

variable "notifications_emails" {
  type = list(string)
}

variable "step_functions_config" {
  type = map(object({
    template            = string
    log_group           = string
    log_retention       = string
    role_name           = string
    role_file           = string
    policy_name         = string
    policy_file         = string
    schedule_expression = string
  }))
}

variable "lambda_config" {
  type = map(object({
    file_name      = string
    role_file      = string
    policy_name    = string
    policy_file    = string
    handler_name   = string
    bucket_trigger = string
    arn_bucket     = string
    log_retention  = number
  }))
}

variable "notifications_config" {
  type = map(object({
    email       = string
    policy_file = string
  }))
}
