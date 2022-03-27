resource "heroku_app" "back-dev" {
  name   = format("%s-dev", var.back_name)
  region = "us"
  config_vars = {
    "EMAIL_DOMAIN"   = "gmail.com"
    "ENV"            = "develop"
    "FRONT_URL"      = heroku_app.front-dev.name
    "MONGO_DB"       = "pega-a-visao"
    "MONGO_HOSTNAME" = "gremiodb.aiybv.mongodb.net"
    "MONGO_PORT"     = "27017"
    "NODE_ENV"       = "develop"
    "PRODUCTION"     = false
    "SERVER_PORT"    = "8080"
  }

  sensitive_config_vars = {
    "APP_KEY"        = var.app_key
    "EMAIL_KEY"      = var.email_key
    "EMAIL_PASSWORD" = var.email_password
    "MONGO_PASSWORD" = var.mongo_password
    "MONGO_USERNAME" = var.mongo_username
  }
}

resource "heroku_build" "back-dev" {
  app_id     = heroku_app.back-dev.id
  buildpacks = ["https://github.com/heroku/heroku-buildpack-nodejs"]
  source {
    url     = var.back_repository
    version = "main"
  }
}