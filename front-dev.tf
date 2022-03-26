resource "heroku_app" "front-dev" {
  name   = format("%s-dev", var.front_name)
  region = "us"
  config_vars = {
    "NODE_ENV" = "develop"
  }
}

resource "heroku_build" "front-dev" {
  app_id = heroku_app.front-dev.id
  source {
    url     = var.front_repository
    version = "main"
  }
}
