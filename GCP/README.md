# GCP Terraform VM

Creates one small Ubuntu Compute Engine VM using GCP's default network.
It does not install software on the VM.

The Ubuntu image can be found in **Compute Engine > Images**. Official Ubuntu
images belong to the `ubuntu-os-cloud` image project.

## Prerequisites

- Terraform
- Google Cloud CLI
- A project with billing and the Compute Engine API enabled

Authenticate:

```bash
gcloud auth application-default login
```

## Configure

```bash
cp terraform.tfvars.example terraform.tfvars
```

Replace the example with your Google Cloud project ID.

## Run

```bash
terraform init
terraform plan
terraform apply
```

The `public_ip` output shows the VM's assigned external IP.

## Delete

```bash
terraform destroy
```
