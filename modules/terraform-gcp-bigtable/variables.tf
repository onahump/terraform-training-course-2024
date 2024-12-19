variable "bigtable_instance_name" {
  description = "Name of the Bigtable instance"
  type        = string
}

variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "cluster_id" {
  description = "Cluster ID for the Bigtable instance"
  type        = string
}

variable "zone" {
  description = "Zone for the Bigtable cluster"
  type        = string
  default     = "us-central1-a"
}

variable "num_nodes" {
  description = "Number of nodes for the Bigtable cluster (only applicable for PRODUCTION instances)"
  type        = number
  default     = 1
}

variable "big_table_storage_type" {
  description = "Storage type for the Bigtable cluster: SSD or HDD"
  type        = string
  default     = "SSD"
}