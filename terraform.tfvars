project_id = "gcp-expert-sandbox-allen"
machine_type = "e2-medium"
tags = []
labels = {}
region = "us-central1"
zone = null
source_image_family = "centos-8"
disk_size_gb = "120"
disk_type = "pd-balanced"
network = "default"
subnetwork = "default"
startup_script = null
service_account = {
    email  = "138974918188-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
hostnames = ["demo1","demo2"]