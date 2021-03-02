# Configure the New Relic provider
provider "newrelic" {
  api_key       = var.nr_api_key
  account_id    = var.nr_account_id
  region        = var.nr_region
}





# SIMPLE PING
 resource "newrelic_synthetics_monitor" "ping" {
  name       = "ping - tf"
  type       = "SIMPLE"
  frequency  = 1
  status     = "ENABLED"
  locations  = ["AWS_US_EAST_1", "AWS_US_EAST_2"]
  uri        = "https://newrelic.com" # Required for type "SIMPLE" and "BROWSER"
  verify_ssl = false                  # Optional for type "SIMPLE" and "BROWSER"
} 

# SIMPLE BROWSER
 resource "newrelic_synthetics_monitor" "simple" {
  name       = "Simple Browser - tf"
  type       = "BROWSER"
  frequency  = 1
  status     = "ENABLED"
  locations  = ["AWS_US_EAST_1", "AWS_US_EAST_2"]
  uri        = "https://discuss.newrelic.com" # Required for type "SIMPLE" and "BROWSER"
  verify_ssl = false                  # Optional for type "SIMPLE" and "BROWSER"
} 

# -----------------------------------------------------------------------------------------------------------

# SCRIPTED BROWSER
resource "newrelic_synthetics_monitor" "scripted" {
  name      = "scripted browser - tf"
  type      = "SCRIPT_BROWSER"
  frequency = 5
  status    = "ENABLED"
  locations = ["AWS_US_EAST_1"]
}

# Pull in the script from script.tpl
data "template_file" "browserScript" {
  template = templatefile("./script.tpl",{statuscode= 200})
}
# Pass that script into the scripted browser monitor
resource "newrelic_synthetics_monitor_script" "browser_script" {
  monitor_id = newrelic_synthetics_monitor.scripted.id
  text       = data.template_file.browserScript.rendered
}

# SCRIPTED API
resource "newrelic_synthetics_monitor" "apiTest" {
  name      = "scripted API - tf"
  type      = "SCRIPT_API"
  frequency = 5
  status    = "ENABLED"
  locations = ["AWS_US_EAST_1"]
}

# Pull in the script from scriptapi.tpl
data "template_file" "apiScript" {
  template = templatefile("./scriptapi.tpl",{statuscode= 200})
}

# Pass that script into the scripted API monitor
resource "newrelic_synthetics_monitor_script" "api_script" {
  monitor_id = newrelic_synthetics_monitor.apiTest.id
  text       = data.template_file.apiScript.rendered
}


