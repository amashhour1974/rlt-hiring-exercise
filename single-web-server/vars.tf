# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = 8080
}
variable "public_key_path" {
  description = "Enter the path to the SSH Public Key to add to AWS."
  default = "/Volumes/MacDisk2/GitHup/Terraform/terraform-aws-2/intro-to-terraform/single-web-server/ssh_keypair.pem"
}
variable "key_name" {
  description = "Key name for SSHing into EC2"
  default = "ssh_keypair"
}