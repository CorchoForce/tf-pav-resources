resource "heroku_app" "back-prod" {
  name   = format("%s-prod", var.back_name)
  region = "us"
  config_vars = {
    "EMAIL_DOMAIN"   = "gmail.com"
    "ENV"            = "production"
    "FRONT_URL"      = heroku_app.front-prod.name
    "MONGO_DB"       = "pega-a-visao"
    "MONGO_HOSTNAME" = "gremiodb.aiybv.mongodb.net"
    "MONGO_PORT"     = "27017"
    "NODE_ENV"       = "production"
    "PRODUCTION"     = true
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

resource "heroku_build" "back-prod" {
  app_id     = heroku_app.back-prod.id
  buildpacks = ["heroku/nodejs"]
  source {
    url     = var.back_repository
    version = "main"
  }
}