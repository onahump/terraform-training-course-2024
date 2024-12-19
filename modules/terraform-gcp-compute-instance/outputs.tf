output "private_vm_internal_ip" {
  value = google_compute_instance.secure_vm.network_interface[0].network_ip
}