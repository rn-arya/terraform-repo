provider "github" {
  token = var.github_token
}

#provider "azure" {}
#provider "rohit"{} #it will show in list of providers but it will not work because it is not defined in terraform registry

resource "github_repository" "terraform-repo" {
  name        = "terraform-repo"
  description = "This is a terraform tutorial repository"
  visibility = "public"
  #auto_init   = true
}