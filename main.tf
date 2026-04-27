# 1. Define the Providers
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
    grafana = {
      source  = "grafana/grafana"
    }
  }
}

# 2. Create a New Relic Alert Policy
resource "newrelic_alert_policy" "tf_policy" {
  name = "My First Vin Terraform Policy"
}

# 3. Create a Grafana Folder
resource "grafana_folder" "tf_folder" {
  title = "Managed by Terraform from vin"
}
