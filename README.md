# terraform101

## What is Terraform?
Terraform is a tool for building, changing, and versioning infrastructure safely and efficiently. 

Terraform is used to create, manage, and update infrastructure resources such as physical machines, VMs, network switches, containers, and more. Almost any infrastructure type can be represented as a resource in Terraform.

Configuration files describe to Terraform the components needed to run a single application or your entire datacenter. Terraform generates an execution plan describing what it will do to reach the desired state, and then executes it to build the described infrastructure. As the configuration changes, Terraform is able to determine what changed and create incremental execution plans which can be applied.

Tools like CloudFormation, Heat, etc. allow the details of an infrastructure to be codified into a configuration file. The configuration files allow the infrastructure to be elastically created, modified and destroyed. Terraform is inspired by the problems they solve.

Terraform similarly uses configuration files to detail the infrastructure setup, but it goes further by being both cloud-agnostic and enabling multiple providers and services to be combined and composed. For example, Terraform can be used to orchestrate an AWS and OpenStack cluster simultaneously, while enabling 3rd-party providers like Cloudflare and DNSimple to be integrated to provide CDN and DNS services.

## Install Terraform
Install Terraform: https://www.terraform.io/downloads.html

or

`Brew install terraform`

## Install AWS cli
Then as we will be using AWS services we will need access to the cli

Run `brew install awscli`

Once that is done, in your terminal type `aws configure`

And follow the commands, it will ask for your access key, secret key and a region (eu-west-1 is Ireland and eu-west-2 is London) we will be using Ireland

All other commands just press enter on

### Terraform Init

The `terraform init` command is used to initialize a working directory containing Terraform configuration files. This is the first command that should be run after writing a new Terraform configuration or cloning an existing one from version control. It is safe to run this command multiple times.

### Terraform Plan

Terraform also separates the planning phase from the execution phase, by using the concept of an execution plan. By running terraform plan,the current state is refreshed and the configuration is consulted to generate an action plan. The plan includes all actions to be taken: which resources will be created, destroyed or modified. It can be inspected by operators to ensure it is exactly what is expected.

`terraform plan -var-file=< path to file >`

### Terraform Apply

The terraform apply command is used to apply the changes required to reach the desired state of the configuration, or the pre-determined set of actions generated by a terraform plan execution plan

`terraform apply -var-file=dev.tfvars`

### Terraform Destroy

Destroying your infrastructure is a rare event in production environments. But if you're using Terraform to spin up multiple environments such as development, test, QA environments, then destroying is a useful action.

**WE MUST REMEMBER TO DELETE ALL RESOURCES AFTER THIS SESSION**
`terraform destroy -var-file=dev.tfvars`

### Removing any local state

`rm -rf .terraform terraform.tfstate terraform.tfstate.backup`

## Providers

A provider is responsible for understanding API interactions and exposing resources. Providers generally are an IaaS (e.g. Alibaba Cloud, AWS, GCP, Microsoft Azure, OpenStack), PaaS (e.g. Heroku), or SaaS services (e.g. Terraform Cloud, DNSimple, Cloudflare).

## Outputs

Output values are like the return values of a Terraform resources/modules and can be used elsewhere on creating other resources


## TODO

1. Create S3 resource
2. use variables for bucket name and tags
3. output the ARN of the bucket
