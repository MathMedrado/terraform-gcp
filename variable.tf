variable "project_id" {
    description = "the id of the actual project"
    type = string
    default = "terraform-test-337814"
}

variable "region" {
    description = "the region where the resources will be created"
    type = string
    default = "us-east1"
  
}

variable "vpc_name" {
    description = "the name of the vpc that will be created"
    type = string
    default = "terraform-network"
}

variable "machine_name" {
    description = "the name of the compute that will be created"
    type = string
    default = "terraform-web-test"
}


variable "machine_type" {
    description = "the type of the compute that will be created"
    type = string
    default = "f1-micro"
}

variable "machine_image" {
    description = "the image use to boot the compute that will be created"
    type = string
    default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "credencial_file" {
    description = "the name of the file that has the credencial"
    type = string
    default = "terraform-test-service-account.json"
}