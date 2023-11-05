
terraform {    # you need to add this after terrform version 0.13V 
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = ""       # add you key to this will authenticate to which git account to login and do it.
}

resources "github_repository" "local-repo" {   # this will create a repo in github accnt
name        = "dibya-first-repo-by-terra"   # this will be name of repo
description = "creatingMyFirstTerrformInfra"
visibility  = "public"
}
