POLICYDIR=add_policy

clean: 
	-rm -fr $(POLICYDIR)/.terraform
	-rm -fr $(POLICYDIR)/.terraform.lock.hcl
	-rm -fr compliant/.terraform
	-rm -fr compliant/.terraform.lock.hcl
	-rm -fr non_compliant/.terraform
	-rm -fr non_compliant/.terraform.lock.hcl

policy: clean
	cd $(POLICYDIR) && terraform init
	cd $(POLICYDIR) && terraform apply --auto-approve

pass: clean
	checkov -d compliant/ --bc-api-key $(BRIDGECREW_API) --repo-id james/dynamictest

fail:
	checkov -d non_compliant/ --bc-api-key $(BRIDGECREW_API) --repo-id james/dynamictest

destroy:
	cd $(POLICYDIR) && terraform destroy --auto-approve
