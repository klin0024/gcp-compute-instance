module "instance_template" {
  
  source          = "./instance_template"
  project_id      = var.project_id
  name_prefix     = var.name_prefix
  machine_type    = var.machine_type
  tags            = var.tags
  labels          = var.labels
  region          = var.region
  source_image_family = var.source_image_family
  disk_size_gb    = var.disk_size_gb
  disk_type       = var.disk_type
  network         = var.network
  subnetwork      = var.subnetwork
  startup_script  = var.startup_script
  service_account = var.service_account
  
}

module "compute_instance" {

  source       = "./compute_instance"
  for_each     = toset( var.hostnames )
  hostname     = each.key
  add_hostname_suffix = false
  num_instances = 1
  instance_template = module.instance_template.self_link
  network      = var.network
  subnetwork   = var.subnetwork
  subnetwork_project = var.project_id
  region       = var.region
  zone = var.zone

}

