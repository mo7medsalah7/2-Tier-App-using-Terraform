# Theory.

### Using Terraform from HashiCorp to provision our infrastructure in Amazon Web Services (AWS).

# Diagram.

![alt text](https://github.com/mo7medsalah7/2-Tier-App-using-Terraform/blob/main/Assignment_Diagram.png)

# Description.

- In My VPC, i Created Three (3) subnets.
  - One Public Subnet.
  - Two (2) Private Subnets in 2 different Availability Zones.
- Two (2) Amazon EC2 instances are created
  - web-instance.
  - rds- instance (Engine is **MySql**).
- The **_web-instance_** is in the Public Subnet.
- The **_rds-instance_** is distributed in the two (2) Private Subnets to maintain the Multi-AZ deployment.

## :warning: NOTE:
