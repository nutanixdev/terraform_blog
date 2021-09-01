resource "nutanix_virtual_machine" "prod" {
  name                 = "PROD - VM"
  cluster_uuid         = data.nutanix_cluster.cluster.id
  num_vcpus_per_socket = "2"
  num_sockets          = "1"
  memory_size_mib      = 1024
  
  categories {
    name   = "Environment"
    value  = "Production"
    }
  
  disk_list {
    data_source_reference = {
      kind = "image"
      uuid = nutanix_image.image.id
    }
  }

  disk_list {
    disk_size_bytes = 10 * 1024 * 1024 * 1024
    device_properties {
      device_type = "DISK"
      disk_address = {
        "adapter_type" = "SCSI"
        "device_index" = "1"
      }
    }
  }
  nic_list {
    subnet_uuid = data.nutanix_subnet.subnet.id
  }
}

resource "nutanix_virtual_machine" "dev" {
  name                 = "DEV - VM"
  cluster_uuid         = data.nutanix_cluster.cluster.id
  num_vcpus_per_socket = "2"
  num_sockets          = "1"
  memory_size_mib      = 1024
  
  categories {
    name   = "Environment"
    value  = "Dev"
    }

  disk_list {
    data_source_reference = {
      kind = "image"
      uuid = nutanix_image.image.id
    }
  }

  disk_list {
    disk_size_bytes = 10 * 1024 * 1024 * 1024
    device_properties {
      device_type = "DISK"
      disk_address = {
        "adapter_type" = "SCSI"
        "device_index" = "1"
      }
    }
  }
  nic_list {
    subnet_uuid = data.nutanix_subnet.subnet.id
  }
}
