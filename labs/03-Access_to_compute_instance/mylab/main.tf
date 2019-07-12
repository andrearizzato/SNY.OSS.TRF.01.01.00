// Configure the Google Cloud provider
provider "google" {
 credentials = "${file("/home/vagrant/SCAI-Intranet-Gruppo-ce4fdba87165.json")}"
 project     = "intranet-gruppo-scai"
 region      = "europe-west1-b"
}

// Terraform plugin for creating random ids
resource "random_id" "instance_id" {
 byte_length = 8
}

// A single Google Cloud Engine instance
resource "google_compute_instance" "default" {
 name         = "my-vm-${random_id.instance_id.hex}"
 machine_type = "f1-micro"
 zone         = "europe-west1-b"

 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
 }

 network_interface {
   network = "default"

   access_config {
     // Include this section to give the VM an external ip address
   }
 }

 metadata = {
   ssh-keys = "andrea_rizzato:${file("~/.ssh/id_rsa.pub")}"
 }
}


