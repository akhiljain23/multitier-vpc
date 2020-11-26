##############################################################################
# Account Variables
##############################################################################

# target region
variable "ibm_region" {
  description = "IBM Cloud region where all resources will be deployed"
  default     = "us-south"
  # default     = "us-east"
  # default     = "eu-gb"
}

# variable "ibmcloud_api_key" {
#   description = "IBM Cloud API key when run standalone"
# }



variable "resource_group_name" {
  description = "Name of IBM Cloud Resource Group used for all VPC resources"
  default     = "Default"
}

# #Only tested with Gen2. Gen1 requires changes to images, profile names and some VPC resources 
# variable "generation" {
#   description = "VPC generation. Only tested with VPC Gen2"
#   default     = 2
# }

# unique name for the VPC in the account 
variable "vpc_name" {
  description = "Name of vpc"
  default     = "ssh-bastion-host"
}

##############################################################################

##############################################################################
# Network variables
##############################################################################

# When running under Schematics the default here is overriden to only SSH access 
# from remove-exec or Redhat Ansible running under Schematics 


# Predefine subnets for all app tiers for use with `ibm_is_address_prefix`. Single tier CIDR used for NACLs  
# Each app tier uses: 
# frontend_cidr_blocks = [cidrsubnet(var.frontend_cidr, 4, 0), cidrsubnet(var.frontend_cidr, 4, 2), cidrsubnet(var.frontend_cidr, 4, 4)]
# to create individual zone subnets for use with `ibm_is_address_prefix`


variable "frontend_cidr" {
  description = "Complete CIDR range across all three zones for frontend subnets"
  default     = "172.16.0.0/20"
}

##############################################################################


