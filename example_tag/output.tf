output "repositories" {
    value = data.bridgecrew_repositories.all.repositories[*].id
}

output "tag" {
    value = bridgecrew_tag.example
}