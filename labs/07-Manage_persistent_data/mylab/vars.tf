variable "CREDENTIAL_FILE" {}
variable "VM_USERNAME" {}
variable "PROJECT_ID" {}
variable "REGION" {
    default="europe-west1-b"
}
variable "IMAGE" {
    type="map"
    default={
        "europe-west1-b"="debian-cloud/debian-9"
        "us-west2-a"="debian-cloud/debian-8"
    }
}