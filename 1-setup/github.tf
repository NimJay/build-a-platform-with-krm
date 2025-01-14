# https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository 

# https://www.hashicorp.com/blog/managing-github-with-terraform 

provider "github" {
  token = var.github_token
}

# App Source Repo 
resource "github_repository" "app-source" {
  name        = "cymbalbank-app-source"
  description = "Intro to KRM Demo: CymbalBank - Application Source"

  visibility  = "public"
}

# App Config Repo 
resource "github_repository" "app-config" {
  name        = "cymbalbank-app-config"
  description = "Intro to KRM Demo: CymbalBank - Application Manifests"

  visibility  = "public"
}

# Policy Repo 
resource "github_repository" "policy" {
  name        = "cymbalbank-policy"
  description = "Intro to KRM Demo: CymbalBank - ConfigSync Policy Repo"

  visibility  = "public"
}