module "compute_instance" {
  source = "./modules/terraform-gcp-compute-instance"
  
  compute_instance_name = var.compute_instance_name
}

module "bigtable" {
  source          = "./modules/terraform-gcp-bigtable"
  bigtable_instance_name   = var.bigtable_instance_name
  project_id      = var.project_id
  cluster_id      = var.cluster_id
  zone            = var.zone
  num_nodes       = var.num_nodes # Only applicable for PRODUCTION instances
  big_table_storage_type    = var.big_table_storage_type
}

module "pubsub_example_simple" {
  source  = "terraform-google-modules/pubsub/google//examples/simple"
  version = "7.0.0"
  # insert the 1 required variable here
  project_id = var.project_id
}

module "terraform_cloud" {
  source = "app.terraform.io/Nahum-organization/modules/gcp//terraform-gcp-storage-bucket"
  version = "1.0.0"

  region             = var.region
  bucket_name        = var.bucket_name
  storage_class      = var.storage_class
  enable_versioning  = var.enable_versioning
}

module "gcp_bucket_github" {
  source = "git::https://github.com/onahump/terraform_modules.git//terraform-gcp-storage-bucket?ref=main"

  for_each           = { for bucket in var.buckets : bucket.bucket_name => bucket }
  region             = var.region
  bucket_name        = each.value.bucket_name
  storage_class      = each.value.storage_class
  enable_versioning  = each.value.enable_versioning
}