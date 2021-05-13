# Terraform Examples with the Nutanix Terraform Provider

The [Terraform](https://www.terraform.io/) configurations in this repository demonstrate how to use the [Nutanix Terraform provider](https://registry.terraform.io/providers/nutanix/nutanix/latest).

Main concepts covered in the [intro/](intro/) directory:

- Adding `nutanix` as a required provider
- Creating a Nutanix AHV image that can be used as the base disk for a Nutanix AHV-hosted virtual machine
- Specification of a Nutanix AHV-hosted virtual machine, including custom virtual resource spec (vCPU, vRAM, storage, networking)
- Using Terraform variables to specify Nutanix Prism Central connection parameters:
  - Prism Central endpoint/IP address
  - Credentials
  - Cluster name for virtual machine deployment
  - Subnet name for new virtual machine network connection
- Please see the related [Nutanix.dev blog](https://www.nutanix.dev/2021/04/20/using-the-nutanix-terraform-provider/) and [video](https://www.nutanix.dev/videos/what-is-hci-for-devs-part-5-nutanix-terraform-provider/) for a guided walk-through!

## Usage

- Clone this repository to your local system:

  ```shell
  git clone https://github.com/nutanixdev/terraform_blog.git
  ```

- Change to the subdirectory and edit the `terraform.tfvars` variables for your environment

- Initialise, plan, and apply the Terraform configuration.  For example:

  ```shell
  terraform init
  terraform validate
  terraform plan
  terraform apply
  # terraform destroy # optional, when finished
  ```

## Disclaimer

Please see the [.disclaimer](intro/.disclaimer) file distributed with this repository.
