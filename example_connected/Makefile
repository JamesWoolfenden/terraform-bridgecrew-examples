POLICYDIR=add_policy

policy:
	cd $(POLICYDIR) && terraform init
	cd $(POLICYDIR) && terraform apply --auto-approve

pass:
	checkov -d compliant/ --bc-api-key $(BRIDGECREW_API) --repo-id james/dynamictest

fail:
	checkov -d non_compliant/ --bc-api-key $(BRIDGECREW_API) --repo-id james/dynamictest

destroy:
	cd $(POLICYDIR) && terraform destroy --auto-approve
