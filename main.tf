data "gitlab_metadata" "metadata_lookup" {
  for_each = var.metadata_lookup

}

