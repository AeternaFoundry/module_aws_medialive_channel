output "medialive_channels_id" {
  description = "Map of id values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "medialive_channels_arn" {
  description = "Map of arn values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "medialive_channels_cdi_input_specification" {
  description = "Map of cdi_input_specification values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => one(v.cdi_input_specification) if v.cdi_input_specification != null && length(v.cdi_input_specification) > 0 }
}
output "medialive_channels_channel_class" {
  description = "Map of channel_class values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.channel_class if v.channel_class != null && length(v.channel_class) > 0 }
}
output "medialive_channels_channel_id" {
  description = "Map of channel_id values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.channel_id if v.channel_id != null && length(v.channel_id) > 0 }
}
output "medialive_channels_destinations" {
  description = "Map of destinations values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.destinations if v.destinations != null && length(v.destinations) > 0 }
}
output "medialive_channels_encoder_settings" {
  description = "Map of encoder_settings values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => one(v.encoder_settings) if v.encoder_settings != null && length(v.encoder_settings) > 0 }
}
output "medialive_channels_input_attachments" {
  description = "Map of input_attachments values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.input_attachments if v.input_attachments != null && length(v.input_attachments) > 0 }
}
output "medialive_channels_input_specification" {
  description = "Map of input_specification values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => one(v.input_specification) if v.input_specification != null && length(v.input_specification) > 0 }
}
output "medialive_channels_log_level" {
  description = "Map of log_level values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.log_level if v.log_level != null && length(v.log_level) > 0 }
}
output "medialive_channels_maintenance" {
  description = "Map of maintenance values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => one(v.maintenance) if v.maintenance != null && length(v.maintenance) > 0 }
}
output "medialive_channels_name" {
  description = "Map of name values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.name if v.name != null && length(v.name) > 0 }
}
output "medialive_channels_region" {
  description = "Map of region values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.region if v.region != null && length(v.region) > 0 }
}
output "medialive_channels_role_arn" {
  description = "Map of role_arn values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "medialive_channels_start_channel" {
  description = "Map of start_channel values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.start_channel if v.start_channel != null }
}
output "medialive_channels_tags" {
  description = "Map of tags values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "medialive_channels_tags_all" {
  description = "Map of tags_all values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "medialive_channels_vpc" {
  description = "Map of vpc values across all medialive_channels, keyed the same as var.medialive_channels"
  value       = { for k, v in aws_medialive_channel.medialive_channels : k => one(v.vpc) if v.vpc != null && length(v.vpc) > 0 }
}

