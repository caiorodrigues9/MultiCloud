# Cria a VM com o Google Compute Engine
resource "google_compute_instance" "rundek" {
    name          = "rundek"
    machine_type  = "e2-small"
    zone          = "us-east4-a"
    boot_disk {
        initialize_params {
            #gcloud compute images list | grep ubuntu
            image = "ubuntu-os-pro-cloud/ubuntu-pro-2004-lts"
        }
    }    
    # Instala o servidor RUNDECK
    metadata_startup_script = "${file("installRUNDECK.sh")}"

    network_interface {
        network = "default"
        access_config {

        }
    }
}