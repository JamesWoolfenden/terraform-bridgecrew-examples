

resource "bridgecrew_policy" "new" {
  cloud_provider = "aws"

  file       = "${path.module}/policy/policy.yaml"
  frameworks = ["Terraform"]

  benchmarks {
    cis_aws_v12 = ["1.1", "2.1"]
  }

}

resource "random_string" "new" {
  length  = 8
  special = false
}
