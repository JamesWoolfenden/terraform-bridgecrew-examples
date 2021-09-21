

resource "bridgecrew_policy" "new" {
  count          = 1
  cloud_provider = "aws"
  title          = "my yaml policy${count.index} ${random_string.new.id}"
  severity       = "critical"
  category       = "logging"

  //still fails for now
  file = "${path.module}/policy/policy.yaml"

  guidelines = "This should explain a little"

  // although benchmarks take a free text this is total ***, as it needs to be an existing benchmark as
  // does the version, and that more like a category than anything
  benchmarks {
    cis_aws_v12 = ["1.1", "2.1"]
    //cis_aws_v13 = ["1.3", "2.4"]
  }

}

resource "random_string" "new" {
  length  = 8
  special = false
}
