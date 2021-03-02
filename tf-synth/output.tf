output "synthetics_ping_id" {

  # newrelic_application Terraform reference 
  # Link : https://www.terraform.io/docs/providers/newrelic/d/application.html
  value = newrelic_synthetics_monitor.ping.id
}

output "synthetics_script_id" {

  # newrelic_application Terraform reference 
  # Link : https://www.terraform.io/docs/providers/newrelic/d/application.html
  value = newrelic_synthetics_monitor.scripted.id
}

output "synthetics_api_id" {

  # newrelic_application Terraform reference 
  # Link : https://www.terraform.io/docs/providers/newrelic/d/application.html
  value = newrelic_synthetics_monitor.apiTest.id
}

output "synthetics_simple_id" {

  # newrelic_application Terraform reference 
  # Link : https://www.terraform.io/docs/providers/newrelic/d/application.html
  value = newrelic_synthetics_monitor.simple.id
}