terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
    }
    # We are hiding Grafana for now because Terraform Cloud can't see your private network
    # grafana = {
    #   source  = "grafana/grafana"
    # }
  }
}

provider "newrelic" {
  account_id = "2198319"
  region     = "US" 
}

resource "newrelic_alert_policy" "tf_policy" {
  name = "My First Terraform Policy"
}

# COMMENT OUT THE REMAINING GRAFANA LINES BY ADDING # AT THE START
# resource "grafana_folder" "tf_folder" {
#   title = "Managed by Terraform"
# }
