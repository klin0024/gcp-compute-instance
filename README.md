# 使用說明

Var |Type |Value |Description
:---|:---|:---|:---
project_id |string |gcp-expert-sandbox-allen |GCP Project
machine_type |string |e2-medium |Machine Type
tags |list |[] |GCE Tags
labels |object |{} |GCE Labels
region |string |us-central1 |GCE region
zone |string |null |GCE Zone
source_image_family |string |centos-8 |GCE Image
disk_size_gb |string |120 |GCE root disk size
disk_type |string |pd-balanced |GCE root disk type
network |string |default |VPC Name
subnetwork |string |default |Subnet Name
startup_script |string |null |GCE Startup Script
service_account |object |{ <br>email  = "138974918188-compute@developer.gserviceaccount.com" <br>scopes = ["cloud-platform"] <br>} |GCE Service Account
hostnames |list |["demo1","demo2"] |GCE Name

