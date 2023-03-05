# Theory.

### Using Terraform from HashiCorp to provision our infrastructure in Amazon Web Services (AWS).

# Diagram.

### This Diagram illustrates our architecture for the 2-Tier-App-using-Terraform

![alt text](https://github.com/mo7medsalah7/2-Tier-App-using-Terraform/blob/main/Assignment_Diagram.png)

# Description.

- In My VPC, i Created Three (3) subnets.
  - One Public Subnet.
  - Two (2) Private Subnets in 2 different Availability Zones.
- Two (2) Amazon EC2 instances are created
  - web-instance.
  - rds- instance (Engine is **MySql**).
- The **_web-instance_** is in the Public Subnet and it's reached over internet.
- The **_rds-instance_** is distributed in the two (2) Private Subnets to maintain the Multi-AZ deployment.

# Backend.

- I used My S3 Bucket to store the **tfstate file**.

# Modules.

- This architecture utilizes the modules that i created in another Github repository and it's public for the community.

- You can find these modules in the repository:- **https://github.com/mo7medsalah7/Terraform_Infrastructure_Modules_AWS.git**

# Resources

- in Terraform, Resources describe one or more infrastructure objects, such as virtual networks, compute instances, or higher-level components such as DNS records.

- **Subnets**

  - One Public Subnet.
  - Two (2) Private Subnets.

- **Internet Gateway**

  - This internet gateway is associated with the public subnet.

- **EC2 Instance**

  - This instance acts as a web server.
  - It is created using one of Amazin Machines Images (AMIs).
    - Ensure that the image is available in the region since **AMIs are a regional resource**

- **Security Groups**
  - Security Group for **_web-instance_**. Ports[80 and 443] are open.
  - Security Group for **_rds-instance_**. Port[3306] is open inside the VPC.
