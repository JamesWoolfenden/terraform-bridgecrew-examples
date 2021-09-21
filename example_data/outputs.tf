output "repos" {
  value = data.bridgecrew_repositories.all
}

output "suppression" {
  value = data.bridgecrew_suppressions.all
}

output "polices" {
  value = data.bridgecrew_policies.all
}
