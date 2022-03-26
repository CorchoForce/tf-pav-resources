output "front-prod-url" {
  value       = format("%s.herokuapp.com", heroku_app.front-prod.name)
  description = "Frontend production URL"
}

output "front-dev-url" {
  value       = format("%s.herokuapp.com", heroku_app.front-dev.name)
  description = "Frontend development URL"
}