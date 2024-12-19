variable "private_network_name"{
    type = string
    description = "(Required) Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash."
    default = "test-private-network"
}

variable "ip_cidr_range" {
    type =  string
    description = "(Optional) The range of internal addresses that are owned by this subnetwork. Provide this property when you create the subnetwork. For example, 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and non-overlapping within a network. Only IPv4 is supported. Field is optional when reserved_internal_range is defined, otherwise required."
    default = "10.0.0.0/24"
}

variable "firewall_rule_internal_name" {
  type = string
  description = " (Required) Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash."
  default = "test-internarl-rule"
}

variable "firewall_rule_ssh_name" {
  type = string
  description = " (Required) Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash."
  default = "test-ssh-rule"
}

variable "compute_instance_name" {
  type = string
  description = "(Required) A unique name for the resource, required by GCE. Changing this forces a new resource to be created."
  default = "test-compute-instance"
}

variable "compute_machine_type" {
  type = string
  description = " (Required) The machine type to create. Note: If you want to update this value (resize the VM) after initial creation, you must set allow_stopping_for_update to true. Custom machine types can be formatted as custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY_MB, e.g. custom-6-20480 for 6 vCPU and 20GB of RAM. Because of current API limitations some custom machine types may get converted to different machine types (such as an equivalent standard type) and cause non-empty plans in your configuration. Use lifecycle.ignore_changes on machine_type in these cases. There is a limit of 6.5 GB per CPU unless you add extended memory. You must do this explicitly by adding the suffix -ext, e.g. custom-2-15360-ext for 2 vCPU and 15 GB of memory."
  default = "n1-standard-1"
}

variable "zone" {
  type = string
  description = "(Optional) The zone that the machine should be created in. If it is not provided, the provider zone is used."
  default = "us-central1-a"
}

variable "region" {
  type = string
  description = "(Optional) The GCP region for this subnetwork." 
  default = "us-central1"
}