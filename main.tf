terraform {
  required_version = ">= 1.1.7"
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "~> 5.0"
    }
  }
}