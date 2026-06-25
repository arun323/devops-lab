# devops-lab Terraform bootstrap

This folder contains Terraform to create an AWS IAM OIDC provider and an IAM role for GitHub Actions.

Quick bootstrap

1. Configure backend values.

   - Update `devops-lab/terraform/backend.tf` with your S3 bucket name.
   - Create the S3 bucket manually before running `terraform init`.

2. If you want to use an existing IAM role, set `existing_role_name` in `terraform.tfvars` and do not create a new role.

3. Initialize and apply Terraform locally (you need AWS credentials for the first run):

```bash
cd devops-lab/terraform
terraform init
terraform apply -var='github_owner=YOUR_GITHUB_USER_OR_ORG' -var='github_repo=YOUR_REPO_NAME' -auto-approve
```

4. Copy the output `oidc_provider_arn` value if needed.

   - For the workflow, add `aws_role_arn` to `devops-lab/terraform/terraform.tfvars`.
   - This role ARN is used only by the workflow step to assume the IAM role via OIDC.

5. Push changes; the workflow `.github/workflows/terraform-apply.yml` will use OIDC to assume the role and run Terraform.

Notes
- The first `terraform apply` must be done with AWS credentials that can create IAM resources. After that, workflows can use OIDC.
- `aws_role_arn` is used by the workflow only; Terraform resource creation does not depend on it.
- OIDC setup is effectively a one-time configuration for this repo and role, but the role trust policy will continue to allow this repo to assume AWS access whenever the workflow runs.
- Adjust `variables.tf` defaults as needed for least-privilege.
