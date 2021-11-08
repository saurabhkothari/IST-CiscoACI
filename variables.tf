variable "apic_url" {
  type = string
  description = "the url for apic controller (https://<ip or hostname>)"
}

variable "apic_user" {
  type = string
  description = "the username for apic controller"
}

variable "apic_password" {
  type = string
  description = "the password for apic controller"
}

variable "apic_tenant_name" {
  type = string
  description = "new tenant name"
}
