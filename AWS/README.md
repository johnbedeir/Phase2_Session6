# AWS Terraform VM

Creates one small Ubuntu EC2 instance using AWS's default network settings.
It does not install software on the VM.

The Ubuntu AMI ID comes from **EC2 > AMI Catalog** in `us-east-1`. AMI IDs are
different in every AWS region.

## Prerequisites

- Terraform
- AWS CLI authenticated with `aws configure`

## Run

```bash
terraform init
terraform plan
terraform apply
```

The `public_ip` output shows the VM's assigned public IP, when available.

## Delete

```bash
terraform destroy
```

The Terraform state is local for this introductory lab. Do not commit
`terraform.tfstate`.
