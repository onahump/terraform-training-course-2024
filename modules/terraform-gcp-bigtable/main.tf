resource "google_bigtable_instance" "bigtable_instance" {
  name          = var.bigtable_instance_name
  project       = var.project_id
  cluster {
    cluster_id   = var.cluster_id
    zone         = var.zone
    num_nodes    = var.num_nodes
    storage_type = var.big_table_storage_type
  }
}