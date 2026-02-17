# Terraform State Management Demo

[![Terraform](https://img.shields.io/badge/Terraform-v1.0+-623CE4?logo=terraform)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-S3-FF9900?logo=amazonaws)](https://aws.amazon.com/)

## Overview

This project demonstrates Terraform state management concepts:

- ✅ What is Terraform state
- ✅ Why state is important
- ✅ State commands
- ✅ What happens without state

## What is Terraform State?
┌─────────────────────────────────────────────────────────────────┐
│ │
│ Your Code (.tf) STATE FILE AWS (Real) │
│ ┌───────────┐ ┌───────────────┐ ┌───────────┐ │
│ │ │ │ │ │ │ │
│ │ Desired │ ◄────► │ Memory of │ ◄──►│ Actual │ │
│ │ State │ │ what exists │ │ Resources│ │
│ │ │ │ │ │ │ │
│ └───────────┘ └───────────────┘ └───────────┘ │
│ │
└─────────────────────────────────────────────────────────────────┘


## State Commands

| Command | Description |
|---------|-------------|
| `terraform state list` | List all resources in state |
| `terraform state show <resource>` | Show details of one resource |
| `terraform state mv` | Move/rename resource in state |
| `terraform state rm` | Remove resource from state |
| `terraform show` | Show entire current state |
| `terraform refresh` | Sync state with real infrastructure |

## Why State Matters

| Without State | With State |
|---------------|------------|
| Creates duplicates | Tracks existing resources |
| Can't update resources | Updates in place |
| Can't destroy properly | Destroys only what it created |
| No team collaboration | Team can share state |

## Project Structure
├── providers.tf # Provider configuration
├── variables.tf # Input variables
├── main.tf # S3 bucket resources
├── outputs.tf # Output values
└── .gitignore # Ignore state files!

## Important: Never Commit State Files!

```gitignore
# .gitignore
*.tfstate
*.tfstate.*
State files contain sensitive data!

Usage
bash
# Initialize
terraform init

# Apply
terraform apply

# View state
terraform state list

# Destroy
terraform destroy

Author
Sagar

License
MIT License
