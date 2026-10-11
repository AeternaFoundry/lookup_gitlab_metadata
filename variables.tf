variable "metadata_lookup" {
  description = <<EOT
Map of metadata_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

