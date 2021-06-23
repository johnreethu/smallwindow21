
variable "region" {
  default = "eu-west-1"
}

variable "availability_zone_1" {
  description = "Availability Zone 1"
  type        = string
  default     = "eu-west-1a"
}
variable "availability_zone_2" {
  description = "Availability Zone 2"
  type        = string
  default     = "eu-west-1b"
}
variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "Small Window 21"
}

variable "app_name" {
  description = "Name of the elastic beanstalk application"
  type        = string
  default     = "SmallWindow21"
}
variable "app_environment_name" {
  description = "Name of the application environment"
  type        = string
  default     = "smallwindow21-dev"
}

variable "dbase_instance_name" {
  description = "Value of the Identifier tag for the EC2 DBase instance"
  type        = string
  default     = "smallwindow21db"
}
variable "dbase_db_name" {
  description = "Value of the Name tag for the EC2 DBase instance. Name of default database that is created"
  type        = string
  default     = "smallwindow21"
}
variable "dbase_username" {
  description = "Value of the database username"
  type        = string
  default     = "smallwindow21"
}

variable "dbase_subnet_group_name" {
  description = "Value of the database subnet group name"
  type        = string
  default     = "smallwindow21-dbsubnet-group"
}
variable "dbase_instance_type" {
  description = "Value for the database instance type"
  type        = string
  default     = "db.t3.micro"
}
variable "dbase_engine" {
  description = "Value for the database engine"
  type        = string
  // default     = "postgres"
  default = "mysql"
}
variable "dbase_engine_version" {
  description = "Value for the database engine version"
  type        = string
  //default     = "13.2"
  default = "8.0"
}
variable "dbase_allocated_storage" {
  description = "Value for the database allocated storage"
  type        = number
  default     = 10
}
variable "base_resource_name" {
  description = "Tag name for infrastructure"
  type        = string
  default     = "Small Window 21"
}

variable "public_subnet_base_name" {
  description = "Public subnet base name"
  type        = string
  default     = "Public Subnet - Small Window 21"
}
variable "private_subnet_base_name" {
  description = "Private subnet base name"
  type        = string
  default     = "Private Subnet - Small Window 21"
}
variable "owner_name" {
  description = "Owner of the Infrastructure"
  type        = string
  default     = "SmallWindow21 Team"
}

variable "aws_profile" {
  description = "The aws profile to use"
  type        = string
  default     = "default"
}

variable "instance_type" {
  description = "The instance type to use when creating ec2 instances"
  type        = string
  default     = "t2.micro"
}

variable "eb_profile_name" {
  description = "The name of the profile to use for elastic beanstalk"
  type        = string
  default     = "SmallWindow21-Profile"
}

variable "eb_role_name" {
  description = "The name of the role to use for elastic beanstalk"
  type        = string
  default     = "SmallWindow21-Role"
}
variable "eb_server_port" {
  description = "The port that elastic beanstalk will talk to the application on"
  type        = number
  default     = 5000
}
variable "eb_stream_logs" {
  description = "The option to stream logs to cloudwatch from elastic beanstalk or not"
  type        = bool
  default     = true
}
variable "eb_delete_logs_on_terminate" {
  description = "The option to delete logs when terminating an elastic beanstalk environment"
  type        = bool
  default     = true
}
variable "eb_log_retention_days" {
  description = "The option to set the retention in days for logs"
  type        = number
  default     = 3
}
variable "storage_bucket_prefix" {
  description = "The prefix to use for the storage s3 bucket"
  type        = string
  default     = "smallwindow21"
}

variable "asg_min_size" {
  description = "The minimum number of instances in the auto scaling group"
  type        = number
  default     = 1
}
variable "asg_max_size" {
  description = "The maximum number of instances in the auto scaling group"
  type        = number
  default     = 1
}