# Terraform Bridgecrew Examples

[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-bridgecrew-examples.svg)](https://github.com/JamesWoolfenden/terraform-bridgecrew-examples/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-bridgecrew-examples.svg?label=latest)](https://github.com/JamesWoolfenden/terraform--http-ip/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-bridgecrew-examples/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-bridgecrew-examples&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-bridgecrew-examples/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-bridgecrew-examples&benchmark=INFRASTRUCTURE+SECURITY)

These early examples show how to use terraform to extract data from the bridgecrew platform, and how to create policies in code.

## example_provider/

How to set-up the provider and authentication.

Add your bridgecrew API key as an Environmental variable:

```bash
export BRIDGECREW_API="xxxx"
```

## example_data/

Demonstrates the 6 of the current data sources for repositories, policies, suppressions and the newer authors,incidents and justifications.

## example_simple_policy/

Demonstrates how to create a basic policy in Terraform.

## example_yaml_policy/

Demonstrates how to create a yaml policy in Terraform.

Each Folder has a video walk-through.

## example_connected/

This examples shows you how to create a policy and then using it against some IaC.
Check a Terraform template against your current policy set, buy running the Make target fail:

```bash
make fail
```

This template would provision an aws_instance of the instance_type *t3.medium*.

Then we add a new policy that checks that the instance size of the aws_instance resource is "t3.micro", run the Make Target policy:

```bash
make policy
```

Once the policy is deployed you can test it again with previous Make fail target:

```bash
make fail 
```

And you should see (In your Checkov output):

```bash
Check: james_aws_1636551748078: "Ensure Developers use the AWS free tier"
        FAILED for resource: aws_instance.non_compliant
        File: /aws_instance.non_compliant.tf:18-27

                18 | resource "aws_instance" "non_compliant" {
                19 |    # checkov:skip=CKV_AWS_79: ADD REASON
                20 |   ami           = data.aws_ami.ubuntu.id
                21 |   instance_type = "t3.medium"
                22 |     root_block_device {
                23 |     encrypted = true
                24 |   }
                25 |   monitoring = true
                26 |   ebs_optimized = true
                27 | }
```

Finally remove the added check with target destroy:

```bash
make destroy
```

## example tag

This example shows how to define a tag rule for the platform.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-bridgecrew-examples/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-bridgecrew-examples/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-bridgecrew-examples&url=https://github.com/JamesWoolfenden/terraform-bridgecrew-examples
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-bridgecrew-examples&url=https://github.com/JamesWoolfenden/terraform-bridgecrew-examples
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-bridgecrew-examples
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-bridgecrew-examples
[share_email]: mailto:?subject=terraform-bridgecrew-examples&body=https://github.com/JamesWoolfenden/terraform-bridgecrew-examples
