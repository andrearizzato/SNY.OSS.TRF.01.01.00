variable "CREDENTIAL_FILE" {}
variable "VM_USERNAME" {}
variable "PROJECT_ID" {}
variable "REGION" {
    default="europe-west1"
}

variable "ZONE" {
    default="b"
}
variable "VPC_NAME" {
     default="test-vpc"
}
variable "PUBLIC_SUBNET_CDIR" {
    default="10.26.1.0/24"
}
variable "PRIVATE_SUBNET_CDIR" {
    default="10.26.2.0/24"
}
variable "WEBSERVER_IP" {
    default="10.26.1.2"
}
variable "APPSERVER_IP" {
    default="10.26.2.2"
}
variable "IMAGE" {
    type="map"
    default={
        "europe-west1-b"="debian-cloud/debian-9"
        "us-west2-a"="debian-cloud/debian-8"
    }
}