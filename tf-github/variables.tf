variable "github_token" {
  description = "GitHub Personal Access Token (set via TF_VAR_github_token or local github.auto.tfvars)"
  type        = string
  sensitive   = true
}
