variable "client_id" {
    default = "03bd5fd9-82c4-48c0-a202-f9c641b4089e"
}
variable "client_secret" {
    default = "36bbd376-d104-4ff2-b866-9aeefc425a3f"
}

variable "agent_count" {
    default = 2
}

variable "ssh_public_key" {
    default = "~/.ssh/id_rsa.pub"
}

variable "dns_prefix" {
    default = "k8ssredevops"
}

variable cluster_name {
    default = "k8ssredevops"
}

variable resource_group_name {
    default = "k8ssredevops"
}

variable location {
    default = "East US"
}

variable log_analytics_workspace_name {
    default = "testLogAnalyticsWorkspaceName"
}

# refer https://azure.microsoft.com/global-infrastructure/services/?products=monitor for log analytics available regions
variable log_analytics_workspace_location {
    default = "eastus"
}

# refer https://azure.microsoft.com/pricing/details/monitor/ for log analytics pricing 
variable log_analytics_workspace_sku {
    default = "PerGB2018"
}