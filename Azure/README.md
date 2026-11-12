# Azure Terraform VM

Creates one small Ubuntu VM and the network resources Azure requires for it.
It does not install software on the VM.

The Ubuntu image can be found in **Azure Portal > Virtual machines > Create >
Image**. The official publisher is **Canonical**.

## Prerequisites

- Terraform
- Azure CLI authenticated with `az login`
- An SSH key:

```bash
ssh-keygen -t ed25519 -f ~/.ssh/session6-azure
```

## Configure

```bash
cp terraform.tfvars.example terraform.tfvars
```

Replace the example value with the contents of
`~/.ssh/session6-azure.pub`.

## Run

```bash
terraform init
terraform plan
terraform apply
```

The `public_ip` output shows the VM's assigned public IP.

## Delete

```bash
terraform destroy
```
