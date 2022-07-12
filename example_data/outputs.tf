output "repos" {
  value = data.bridgecrew_repositories.all
}

output "suppression" {
  value = data.bridgecrew_suppressions.all
}

output "polices" {
  value = data.bridgecrew_policies.all
}

output "authors" {
  value = data.bridgecrew_authors.all
}

output "incidents" {
  value = data.bridgecrew_incidents.all
}

output "justifications" {
  value = data.bridgecrew_justifications.given
}