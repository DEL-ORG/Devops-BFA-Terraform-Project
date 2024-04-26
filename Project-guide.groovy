S3 Backend (module)
 https://github.com/devopstia/terraform-course-del/tree/main/aws-terraform/modules/s3-backend-with-replication

 Create a s3bucket to store the state file (in terms of module)
 Implement a state lock using a DynamoDB 
 Make sure that the main and the backup are in 2 different regions
 Create a proper policy to will allows object to replicated into the backup 
 Make sure versioning is enabled

 Steps:

 1. BACKEND-REPLICATION-RESOURCES

GUIDANCE ON THE CONSOLE:

IAM Role:
Go to the IAM service in the AWS Management Console.
Choose "Roles" from the sidebar.
Click on "Create role".
Choose "Another AWS account" as the trusted entity and enter s3.amazonaws.com as the Account ID.
Attach policies that grant the necessary permissions for S3 replication.
Review and create the role.

IAM Policy:
Go to the IAM service in the AWS Management Console.
Choose "Policies" from the sidebar.
Click on "Create policy".
Select the JSON tab and paste the policy document from your Terraform code.
Review and create the policy.

IAM Policy Attachment:
Go to the IAM service in the AWS Management Console.
Choose "Roles" from the sidebar.
Click on the role you created earlier.
Scroll down to "Permissions" and click "Attach policies".
Search for and select the policy you created earlier.
Review and attach the policy.

S3 Buckets:
Go to the S3 service in the AWS Management Console.
Click on "Create bucket".
Enter a unique bucket name following your naming convention.
Configure the bucket settings, including versioning and replication.
Review and create the bucket.
Repeat the above steps for both the state bucket and the backup bucket.

DynamoDB Table:
Go to the DynamoDB service in the AWS Management Console.
Click on "Create table".
Enter a unique table name following your naming convention.
Define the table's primary key (hash key).
Configure the table settings, such as read and write capacity.
Review and create the table.


 VPC (module)
 3 Public subnets in 3 different AZ
 3 Private subnets in 3 different AZ
 3 NAT in the public subnets for high availability
 Added the proper tag with the subnets so that the AWS load balancer controller will be 
 able the
 discover the subnets based on the VPC to create the ALB in AWS

 PS: the module should allow the the create the number of subnets that there want
 The number of NAT should always be equal to the number of private subnets

Vpc Steps:
VPC CREATION GUIDANCE ON THE CONSOLE & USING TERRAFORM (complete-course-del)
 
 

Bastion Host (module)
https://github.com/devopstia/terraform-course-del/tree/main/aws-terraform/modules/bastion-host

The bastion host should have all packages installed:
apt-utils   helm       pip3      docker-compose     wget        watch
npm         awscli     mysql     docker engine      vim         tree         
jdk         jre        python3   terraform          kubectl 
psql        htop       maven     build-essential          
pip3        nodejs     kubectx   openssh-server     ansible

 The AMI should be build package using Packer        psql jre jdk htop mysql maven build-essential
 Only port 22 should be open for ssh connection      openssh-server watch
 The bastion should be create on the public subnet
 This bastion should be used to access all resources within the private subnets


 ...Bastion Host Module Steps  WITH [[Packer]]: ...

Creating a bastion host on AWS typically involves launching an EC2 instance 
in a public subnet and configuring it to act as a secure gateway for accessing
instances in private subnets.

The process of using Packer to build images typically involves several steps:

.Install Packer: First, you need to download and install Packer on your local machine or 
the build server where you plan to create the images. You can download Packer from the 
official website or use package managers like Homebrew (for macOS/Linux) or Chocolatey 
(for Windows) for installation.

.Write Packer Configuration: Create a configuration file (usually in JSON or HCL format) that defines the build process. This configuration file specifies the type of image to build, the source of the image, provisioners to run to configure the image, and any post-processing tasks.
[THE EXTENSION OF THE FILE IS .pkr.hcl ]

.Define Builders: In the configuration file, define one or more builders. Builders 
are responsible for creating machines and generating images from them. You specify 
the type of builder (e.g., AWS, Azure, VirtualBox, Docker), the base image or template to use,
 and configuration options such as instance size, region, or virtualization settings.

.Configure Provisioners: Specify provisioners in the configuration file to install and 
configure software on the machine before the image is captured. Packer supports various
 provisioners like shell scripts, Ansible, Chef, Puppet, and others. These tools help in 
 setting up the environment to match your requirements.

.Add Post-Processors (Optional): Optionally, you can define post-processors in the 
configuration file to perform tasks after the image is built. Post-processors can be used 
to compress, encrypt, or upload the image to different platforms or repositories.

.Validate Configuration: Before running the build, its a good practice to validate the Packer 
configuration file to ensure that it's syntactically correct and doesn't have any errors. 
You can do this by using the packer validate command.

.Run Packer Build: Once the configuration file is ready, execute the packer build command and 
provide the path to the configuration file as an argument. Packer will start the build process, which involves launching instances, provisioning software, and capturing the image.

.Monitor Build Progress: During the build process, Packer provides real-time feedback on the 
progress, including information about the current step being executed and any errors 
encountered.

.Capture Image: Once the provisioning is complete, Packer will capture the machine image, c
reating a reusable artifact that can be deployed to various environments.

.Use Images: Finally, you can use the generated images to deploy instances or containers 
in your infrastructure, whether its in a cloud environment, virtualization platform, 
or container orchestration system.

By following these steps, you can leverage Packer to automate the creation of consistent and 
reproducible machine images, streamlining the deployment process and improving infrastructure
management.


 ACM 
 https://github.com/devopstia/terraform-course-del/tree/main/aws-terraform/modules/acm
 Purchase a domain name on route 53 (Console)
 Create a wildcard domain (using terraform)

 Steps:

 1.Purchase a domain name on Route 53 [[Console]]:

Sign in to the AWS Management Console and open the Route 53 console.
In the navigation pane, choose "Registered domains."
Choose "Register domain."
Follow the instructions to search for and purchase your domain name.
Complete the registration process by providing necessary information and payment details.


2. Use Terraform to Create your ACM[[ Amazon Certificate Manager]]

Write Terraform Configuration:( aws_acm_certificate)

Create a file named main.tf (or any suitable name) within your Terraform directory.
Define the Aws Provider,   Aws_acm_certificate and Route 53 Record resources configurations 
in this file.

 Database (module)
 https://github.com/devopstia/s4/tree/master/terroform/session04/modules/databases/postgres
 The Database should be created within the private subnets
 Create final snapshot should be enabled to recover the database in case someone delete the DB
 The DB username and password should be store on AWS secret manager
 The DB should be accessible only through a bastion 

EKS Control Plane
https://github.com/devopstia/terraform-course-del/tree/main/aws-terraform/modules/eks-control-plane
It should be created in at least 2 public subnets

EKS Node Group
https://github.com/devopstia/terraform-course-del/tree/main/aws-terraform/modules/eks-node-group
It should be created in at least 2 private subnets
Node should be labeled
Propore tag should be use for cluster autoscaler
Remote access should be enabled

EKS Namespace
https://github.com/devopstia/terraform-course-del/tree/main/aws-terraform/modules/eks-namespaces
Use loops the create namespace
Make sure namespace will not be deleted and recreate when we add or remove namespace
EKS Cluster Autoscaler

https://github.com/devopstia/terraform-course-del/tree/main/aws-terraform/modules/cluster-auto-scaler
It should be created in the cluster-auto-scaler namespace
Make sure the role have the propore permission to create EC2 instances
Make sure the cluster should scale up with the delay of 2 minutes only
Make sure the cluster should scale down with the delay of 2 minutes only

AWS Loadbalance Controller
https://github.com/devopstia/terraform-course-del/tree/main/aws-terraform/modules/aws-load-balancer-controller
It should be created in the kube-system namespace
Make sure the role have the propore permission to create an ALB
The ALB should be created in the same network with the cluste

External DNS
https://github.com/devopstia/terraform-course-del/tree/main/aws-terraform/modules/external-dns
It should be created in the namespace call external-dns
It should have the necessary permissions to create a records set in Route 53
It should delete the record set immediately when the ingress is deleted in the cluster






