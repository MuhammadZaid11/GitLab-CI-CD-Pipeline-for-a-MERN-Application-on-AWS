output "repository_urls" {
  description = "Repository URLs"

  value = {
    for repo in aws_ecr_repository.repositories :
    repo.name => repo.repository_url
  }
}

output "repository_names" {
  value = [
    for repo in aws_ecr_repository.repositories :
    repo.name
  ]
}