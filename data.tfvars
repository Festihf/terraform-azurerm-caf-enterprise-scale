# Define the root parent ID (Tenant ID typically)
root_parent_id = "cd368b54-6ffe-4d7d-bea9-014e728c6679"

# Define the custom root management group ID
root_id = "festi-caf"  # Default is "es", customize if needed

# Define the root management group display name
root_name = "festi-caf"  # Default is "Enterprise-Scale", customize if needed

# Define which landing zones to deploy (true/false)
deploy_core_landing_zones = true
deploy_corp_landing_zones = true
deploy_online_landing_zones = true
deploy_sap_landing_zones = false
deploy_demo_landing_zones = false

# Management resources settings
deploy_management_resources = false
deploy_diagnostics_for_mg = false

# Management resources configuration (adjust as needed)
configure_management_resources = {
  settings = {
    ama = {
      enable_uami = true
    }
    log_analytics = {
      enabled = true
      config = {
        retention_in_days = 30
      }
    }
    security_center = {
      enabled = true
      config = {
        email_security_contact = "otti@festi.is" 
      }
    }
  }
}

# Identity resources
deploy_identity_resources = false 

# Identity resources configuration
configure_identity_resources = {
  settings = {
    identity = {
      enabled = true
      config = {
        enable_deny_public_ip = true
      }
    }
  }
}

# Connectivity resources
deploy_connectivity_resources = false

# Connectivity resources configuration
configure_connectivity_resources = {
  settings = {
    hub_networks = []
  }
}

# Subscription ID overrides (use your own values)
subscription_id_overrides = {}

# Default subscription IDs (use your own values)
subscription_id_connectivity = "b6800247-500d-4ec8-a1e2-bf1072655cea"
subscription_id_identity = "b7d78234-672c-484a-bcfd-51ddb90725d8"
subscription_id_management = "e482f469-34dd-4703-a06b-52f11f5193e9"

# Define custom landing zones (optional)
custom_landing_zones = {}

# Default location for resources
default_location = "northeurope"

# Default tags for resources
default_tags = {

}

# Option to disable default tags
disable_base_module_tags = false

# Timing delays (optional, can adjust as needed)
create_duration_delay = {
  azurerm_management_group = "30s"
}
destroy_duration_delay = {
  azurerm_management_group = "0s"
}

# Custom policies and telemetry options
custom_policy_roles = {}
disable_telemetry = false 
strict_subscription_association = false

# Policy non-compliance message settings
policy_non_compliance_message_enabled = true
policy_non_compliance_message_default_enabled = true
policy_non_compliance_message_default = "This resource must be compliant with the assigned policy."

# Resource custom timeouts (optional)
resource_custom_timeouts = {}