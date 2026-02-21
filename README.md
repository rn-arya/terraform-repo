# Terraform Learning Workspace

## Safe GitHub Authentication (Important)

This workspace uses Terraform with the GitHub provider in `tf-github`.
Do not hardcode Personal Access Tokens in `.tf` files.

### Recommended approach

1. Keep provider config using variable input:

```hcl
provider "github" {
  token = var.github_token
}
```

2. Export token as an environment variable (PowerShell):

```powershell
$env:TF_VAR_github_token = "YOUR_NEW_GITHUB_PAT"
```

3. Run Terraform from `tf-github`:

```powershell
cd .\tf-github
terraform init
terraform plan
terraform apply
```

### Security checklist

- Revoke any leaked GitHub tokens immediately.
- Never commit `.tfstate`, `.tfvars`, or `.terraform` directories.
- Keep `.gitignore` updated for local binaries and generated Terraform files.

## Folder Guide

### hello-variable

- Purpose: Demonstrates string and number variables with interpolation in outputs.
- Files:
  - `hello-variable.tf`: Defines `username` variable and prints greeting using `username` and `age`.
  - `variable.tf`: Defines `age` variable.

### hello-world-json

- Purpose: Demonstrates Terraform configuration written in JSON syntax.
- Files:
  - `hello-world.tf.json`: Outputs a basic hello-world message.

### hello-world-multi-block

- Purpose: Demonstrates multiple output blocks in a single file.
- Files:
  - `program.tf`: Defines three separate output blocks.

### hello-world-multi-file

- Purpose: Demonstrates splitting Terraform configuration across multiple files.
- Files:
  - `hello-world-file-1.tf`: First output block.
  - `hello-world-file-2.tf`: Second output block.
  - `hello-world-file-3.tf`: Third output block.

### hello-world

- Purpose: Minimal hello-world Terraform output example.
- Files:
  - `hello-world.tf`: Single output for hello-world text.

### list-variable

- Purpose: Demonstrates list variables, indexing, joining, and string functions.
- Files:
  - `variable.tf`: Defines `name-list` and `index` variables.
  - `print-variable.tf`: Prints full list, indexed value, joined list, and uppercase value.

### map-variable

- Purpose: Demonstrates map variables and key-based lookups.
- Files:
  - `map-variable.tf`: Defines `user-age` map and `username` variable.
  - `print-map-variable.tf`: Prints full map and age using direct index and `lookup`.

### terraform_1.14.5_windows

- Purpose: Local Terraform binary download folder.
- Files:
  - `LICENSE.txt`: License text from the Terraform distribution.
  - `terraform.exe`: Local executable (intentionally ignored by Git).

### tf-github

- Purpose: Demonstrates Terraform GitHub provider usage to create a repository.
- Files:
  - `create-github-repo.tf`: Configures GitHub provider and `github_repository` resource.
  - `variables.tf`: Defines sensitive `github_token` variable.
  - `terraform.tfstate` / `terraform.tfstate.backup`: Local state files (should not be committed).

### tf-var

- Purpose: Demonstrates passing variable values at runtime and via tfvars files.
- Files:
  - `tv-var.tf`: Defines `name` and `age` input variables.
  - `print-tf-var.tf`: Prints message using `name` and `age`.
  - `terraform.tfvars`: Optional local variable values file (should not be committed).
