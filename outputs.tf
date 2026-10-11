output "metadata_lookup_id" {
  description = "Map of id values across all metadata_lookup, keyed the same as var.metadata_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_metadata.metadata_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "metadata_lookup_enterprise" {
  description = "Map of enterprise values across all metadata_lookup, keyed the same as var.metadata_lookup except keys with no enterprise are omitted"
  value       = { for k, v in data.gitlab_metadata.metadata_lookup : k => v.enterprise if v.enterprise != null }
}
output "metadata_lookup_kas" {
  description = "Map of kas values across all metadata_lookup, keyed the same as var.metadata_lookup except keys with no kas are omitted"
  value       = { for k, v in data.gitlab_metadata.metadata_lookup : k => v.kas if v.kas != null && length(v.kas) > 0 }
}
output "metadata_lookup_revision" {
  description = "Map of revision values across all metadata_lookup, keyed the same as var.metadata_lookup except keys with no revision are omitted"
  value       = { for k, v in data.gitlab_metadata.metadata_lookup : k => v.revision if v.revision != null && length(v.revision) > 0 }
}
output "metadata_lookup_version" {
  description = "Map of version values across all metadata_lookup, keyed the same as var.metadata_lookup except keys with no version are omitted"
  value       = { for k, v in data.gitlab_metadata.metadata_lookup : k => v.version if v.version != null && length(v.version) > 0 }
}

