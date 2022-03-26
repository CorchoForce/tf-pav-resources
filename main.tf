terraform {
  required_version = ">= 1.1.7"
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 5.0"
    }
  }
}

provider "heroku" {
  api_key = var.heroku_api_key
  email   = var.heroku_email
}