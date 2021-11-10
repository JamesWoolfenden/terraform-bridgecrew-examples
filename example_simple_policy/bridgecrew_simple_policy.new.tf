

resource "bridgecrew_simple_policy" "new" {
  cloud_provider = "aws"
  title          = "my first simple policy ${random_string.new.id}"
  severity       = "critical"
  category       = "logging"
  frameworks     = ["Terraform"]

  conditions {
    resource_types = ["aws_s3_bucket", "aws_instance"]
    cond_type      = "attribute"
    attribute      = "bucket"
    operator       = "not_equals"
    value          = "jimbo"
  }

  guidelines = "This should explain a bit little more than 50 chars"

  benchmarks {
    cis_aws_v12 = ["1.1", "2.1"]
  }

}

resource "random_string" "new" {
  length  = 8
  special = false
}
