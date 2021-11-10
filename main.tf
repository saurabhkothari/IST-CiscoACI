terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
    }
  }
}
provider "aci" {

 username = var.apic_user
 password = var.apic_password
 url = var.apic_url

}

resource "aci_tenant" "tenant" {
 name = var.apic_tenant_name
 description = "Terraform"
}

resource "aci_vrf" "vrf" {
  tenant_dn = aci_tenant.tenant.id
  name = "demo-vrf-ist"
}
