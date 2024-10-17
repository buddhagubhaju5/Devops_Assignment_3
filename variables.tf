variable "region" {
  description = "The AWS region to deploy resources"
  default     = "us-east-2"
}

variable "instance_type" {
  description = "The instance type to use for EC2 instances"
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI ID to use for EC2 instances"
  type        = string
  default     = "ami-0c808db6baea2d0ed"  # Update this with a valid AMI ID
}


variable "private_key_path" {
  description = "Path to the private key for SSH access"
  type        = string
  default     = "~/.ssh/id_ed25519"
}