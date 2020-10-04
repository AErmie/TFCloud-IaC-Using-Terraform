policy "azure-cis-7.1-compute-managed-disk-encryption-is-enabled" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/compute/azure-cis-7.1-compute-managed-disk-encryption-is-enabled/azure-cis-7.1-compute-managed-disk-encryption-is-enabled.sentinel"
  enforcement_level = "advisory"
}

policy "azure-cis-3.1-storage-secure-transfer-required-is-enabled" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/storage/azure-cis-3.1-storage-secure-transfer-required-is-enabled/azure-cis-3.1-storage-secure-transfer-required-is-enabled.sentinel"
  enforcement_level = "advisory"
}



policy "azure-cis-6.1-networking-deny-public-rdp-nsg-rules" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/networking/azure-cis-6.1-networking-deny-public-rdp-nsg-rules/azure-cis-6.1-networking-deny-public-rdp-nsg-rules.sentinel"
  enforcement_level = "advisory"
}

policy "azure-cis-6.2-networking-deny-public-ssh-nsg-rules" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/networking/azure-cis-6.2-networking-deny-public-ssh-nsg-rules/azure-cis-6.2-networking-deny-public-ssh-nsg-rules.sentinel"
  enforcement_level = "advisory"
}

policy "azure-cis-6.4-networking-enforce-network-watcher-flow-log-retention-period" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/networking/azure-cis-6.4-networking-enforce-network-watcher-flow-log-retention-period/azure-cis-6.4-networking-enforce-network-watcher-flow-log-retention-period.sentinel"
  enforcement_level = "advisory"
}



policy "azure-cis-3.8-storage-trusted-microsoft-services-is-enabled" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-foundational-policies-library/master/cis/azure/storage/azure-cis-3.8-storage-trusted-microsoft-services-is-enabled/azure-cis-3.8-storage-trusted-microsoft-services-is-enabled.sentinel"
  enforcement_level = "advisory"
}