variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0"  # Example AMI
}
