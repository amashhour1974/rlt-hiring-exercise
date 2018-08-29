Infrastructure Coding Test
==========================

# Goal

Script the creation of a web server and your choice of database server, and a script to check the server is up.

# Prerequisites

You will need an AWS account. Create one if you don't own one already. You can use free-tier resources for this test.

# The Task

You are required to set up a new server in AWS. It must:

* Be publicly accessible.
* Run Nginx.
* Run MySQL, Postgresql, MariaDB, MongoDB
* Serve a `/version.txt` file, containing only static text representing a version number, for example:

```
1.0.6
```

# Mandatory Work

Fork this repository.

* Provide instructions on how to create the server.
* Provide a script that can be run periodically (and externally) to check if the server is up and serving the expected version number. Use your scripting language of choice.
* Alter the README to contain the steps required to:
  * Create the server.
  * Run the checker script.
* Provide us IAM credentials to login to the AWS account. If you have other resources in it make sure we can only access what is related to this test.

Send us an email when you’re done with the repo zipped up. Feel free to ask questions if anything is unclear, confusing, or just plain missing.

# Extra Credit

We know time is precious, we won't mark you down for not doing the extra credits, but if you want to give them a go...

* Use a terraform to set up the server.
* Use a configuration management tool (such as Puppet, Chef or Ansible) to bootstrap the server.
* Put the server behind a load balancer.
* Run run inside docker
* Make the checker script SSH into the instance, check if services are running and start it if it isn't.

# Questions

#### What scripting languages can I use?

Anyone you like. You’ll have to justify your decision. We use Bash, Python and JavaScript internally. Please pick something you're familiar with, as you'll need to be able to discuss it.

#### Will I have to pay for the AWS charges?

No. You are expected to use free-tier resources only and not generate any charges. Please remember to delete your resources once the review process is over so you are not charged by AWS.

#### What will you be grading me on?

Scripting skills, elegance, understanding of the technologies you use, security, documentation.

#### Will I have a chance to explain my choices?

Feel free to comment your code, or put explanations in a pull request within the repo.
If we proceed to a phone interview, we’ll be asking questions about why you made the choices you made.

#### Why doesn't the test include X?

Good question. Feel free to tell us how to make the test better. Or, you know, fork it and improve it!

# Solution Overview

This solution contains the sample code using Terraform and It is broken down into two
folders:

* [single-web-server](./single-web-server): Deploy a single EC2 Instance with a web server that will return
  "Hello, World" for every request on port 8080.
* [cluster-of-web-servers](./cluster-of-web-servers): Deploy a cluster of EC2 Instances in an Auto Scaling Group (ASG)
  and an Elastic Load Balancer (ELB). The ELB listens on port 80 and distributes load across the EC2 Instances, each
  of which runs the same "Hello, World" web server.

##  Deployment Steps

**Note**: The resources deployed into your AWS account as following steps

1. Install [Terraform](https://www.terraform.io/).
1. Set your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
1. `cd` into one of the two example folders.
1. Run `terraform plan`.
1. If the plan looks good, run `terraform apply`.
