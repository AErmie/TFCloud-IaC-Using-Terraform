variable "Environment" {
  type        = string
  description = "Environment tag."
}
variable "CostCenter" {
  type        = string
  description = "CostCenter tag."
}

variable "ComputeRGName" {
  type        = string
  description = "The name of the Resource Group for the Compute resource(s)."
}
variable "ComputeRGLocation" {
  type        = string
  description = "The location where the Resource Group will be deployed (will also affect the VMs that are deployed)."
}

variable "NumberOfVMs" {
  type        = number
  description = "Number of VMs to create."
}
// variable "NumberOfNICs" {
//     type = number
//     description = "Number of NICs to create."
// }

variable "VMName" {
  type        = string
  description = "Name of the VM."
}


# Data Disks
// variable "NumberOfDataDisks" {
//   type = number 
//   description = "Number of Data Disks to create."
// }
variable "DataDisk-StorageAccountType" {
  type        = string
  description = "Storage Account type (ie. 'Standard_LRS')."
}
variable "DataDisk-CreateOption" {
  type        = string
  description = ""
}
variable "DataDisk-DiskSizeGB" {
  type        = number
  description = "The size for the Data Disk."
}


// variable "NIC-ID" {
//     type = string
//     description = "The ID of the NIC object to associate with the VM."
// }

variable "VMSize" {
  type        = string
  description = "The VM Size to deploye (ie. Standard_DS1_v2)."
}

# Delete disk automatically when deleting the VM
variable "DeleteOSDiskOnTermination" {
  type        = bool
  description = "Delete the OS disk automatically when deleting the VM."
}
variable "DeleteDataDiskOnTermination" {
  type        = bool
  description = "Delete the Data disk automatically when deleting the VM."
}

# storage_image_reference
variable "ImagePublisher" {
  type        = string
  description = ""
}
variable "ImageOffer" {
  type        = string
  description = ""
}
variable "ImageSKU" {
  type        = string
  description = ""
}
variable "ImageVersion" {
  type        = string
  description = ""
}

# storage_os_disk
variable "OSDiskCaching" {
  type        = string
  description = ""
}
variable "OSDiskCreateOption" {
  type        = string
  description = ""
}
variable "ManagedDiskType" {
  type        = string
  description = ""
}

# os_profile
variable "AdminUsername" {
  type        = string
  description = ""
}
variable "AdminPassword" {
  type        = string
  description = ""
}