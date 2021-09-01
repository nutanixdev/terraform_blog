resource "nutanix_image" "image" {
  name        = "Arch Linux"
  description = "Arch-Linux-x86_64-basic-20210401.18564"
  source_uri  = var.image_uri
}