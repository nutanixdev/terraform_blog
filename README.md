# Terraform Configuration Example for use with the Nutanix Terraform Provider

The Terraform configuration in this repository is intended to demonstrate the use of the Nutanix Terraform provider.

Main concepts covered are as follows:

- Adding `nutanix` as a required provider
- Creating a Nutanix AHV image that can be used as the base disk for a Nutanix AHV-hosted virtual machine
- Specification of a Nutanix AHV-hosted virtual machine, including custom virtual resource spec (vCPU, vRAM, storage, networking)
- Using Terraform variables to specify Nutanix Prism Central connection parameters:
  - Prism Central endpoint/IP address
  - Credentials
  - Cluster name for virtual machine deployment
  - Subnet name for new virtual machine network connection

## Usage

- Clone this repository to your local system
- Edit the [terraform.tfvars](terraform.tfvars) variables for your environment
- Initialise, plan and apply the Terraform configuration as per normal procedure.  For example:

  ```
  terraform init
  terraform validate
  terraform plan
  terraform apply
  # optional, when finished:
  # terraform destroy
  ```

## Disclaimer

Please see the [.disclaimer](.disclaimer) file distributed with this repository.
