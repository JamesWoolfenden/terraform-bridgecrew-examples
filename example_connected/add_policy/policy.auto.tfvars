cloud_provider = "aws"
title          = "Ensure Developers use the AWS free tier"
severity       = "critical"
category       = "general"
frameworks     = ["Terraform"]


conditions = {
    value= "t3.micro"
    operator= "equals"
    attribute= "instance_type"
    cond_type= "attribute"
    resource_types= [
      "aws_instance"
    ]
  }

guidelines = "This is an example policy to show a use in line one deployed it can be used immediately in connected mode"
