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
provider "newrelic" {
  account_id = "2198319"
  api_key    = "NRAK-QPENLTIS45FRIQK98YTIKRD3T4N" # Use your full key here
  region     = "EU"               # Try adding this line
}
