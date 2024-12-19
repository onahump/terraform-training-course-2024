output "instance_id" {
  description = "ID of the Bigtable instance"
  value       = google_bigtable_instance.bigtable_instance.id
}

output "cluster_id" {
  description = "ID of the Bigtable cluster"
  value       = google_bigtable_instance.bigtable_instance.cluster[0].cluster_id
}
