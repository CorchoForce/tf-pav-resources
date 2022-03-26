resource "heroku_app" "front-prod" {
  name   = format("%s-prod", var.front_name)
  region = "us"
  config_vars = {
    "NODE_ENV" = "production"
  }
}

resource "heroku_build" "front-prod" {
  app_id = heroku_app.front-prod.id
  source {
    url     = var.front_repository
    version = "main"
  }
}
