resource "bridgecrew_tag" "example" {
  name          = "james2"
  description   = "first terraform"
  isenabled     = false
  tagruleootbid = ""

  definition {
    tag_groups {
      name = "1653659061445_key"
      tags {
        value = {
          default = "name"
        }
        name = "team2"
      }
    }
  }
  
  repositories = [data.bridgecrew_repositories.all.repositories[0].id,data.bridgecrew_repositories.all.repositories[1].id]
}
