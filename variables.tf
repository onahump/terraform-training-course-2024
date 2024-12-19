#Project Configuration Variables

variable "region" {
  type        = string
  description = "Region you will set your infrastructure"
}

variable "zone" {
  type        = string
  description = "Region you will set your infrastructure"
}

variable "project_id" {
  type        = string
  description = "GCP project ID"
}

#Compute Instance Variables

variable "compute_instance_name" {
  type = string
  description = "Compute instance name"
}

#Github Repository - Generate Multiple Buckets

variable "buckets" {
  description = "List of buckets to create with specific settings"
  type = list(object({
    bucket_name        = string
    storage_class      = string
    enable_versioning  = bool
  }))
}

#Terraform Cloud Bucket Variables

variable "bucket_name" {
  description = "Bucket Name"
  type        = string
}

variable "storage_class" {
  description = "Kind of Storage Class for Bucket"
  type        = string
}

variable "enable_versioning" {
  description = "Variable to enable or disable versioning within your Bucket"
  type        = string
}

#BigTable variables

variable "bigtable_instance_name" {
  description = "Name of the Bigtable instance"
  type        = string
}

variable "cluster_id" {
  description = "Cluster ID for the Bigtable instance"
  type        = string
}

variable "num_nodes" {
  description = "Number of nodes for the Bigtable cluster (only applicable for PRODUCTION instances)"
  type        = number
}

variable "big_table_storage_type" {
  description = "Storage type for the Bigtable cluster: SSD or HDD"
  type        = string
}
