# tf-pav-resources

## Table of Contents

<!--ts-->

- [About](#about)
- [Requirements](#requirements)
- [How to use](#how-to-use)
  - [Setting up](#setup)
- [Technologies](#technologies)
<!--te-->

## About

It is a project to store all the terraform archives that can up the entire pav project with a single command

## Requirements

To run this repository by yourself you will need to install terraform v1.1.7 or greater. We will show how to do it in the next step.

## How to use

### Setup

```bash
# Clone the terraform repository
$ git clone <https://github.com/CorchoForce/tf-pav-resources>

# Access the frontend directory
$ cd tf-pav-resources/

# Run the terraform init command to install all the backend
$ terraform init

# Run the terraform plan command to check every resource that will be created
$ terraform plan

# Run the terraform apply command to create every resource located in the terraform
$ terraform apply

# After that you will need to input your env variables and write yes to build the project on heroku

```

![demonstration](https://cdn.discordapp.com/attachments/542057973728542726/957675918317469706/unknown.png)

## Technologies

- Terraform
