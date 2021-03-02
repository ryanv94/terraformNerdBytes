variable "nr_api_key" {
# Personal API Key starting with NRAK-xxxxx, find or create yours here: https://one.newrelic.com/launcher/api-keys-ui.launcher
  default = "NRAK-A8XA..."
}

variable "nr_account_id" {
  # https://docs.newrelic.com/docs/accounts/accounts-billing/account-setup/account-id
  default = "1234567"
}

variable "nr_region" {
  # Either EU or US, if your New Relic account URLs are one.eu.newrelic.com, you should use EU here. If not, use US.
  default = "US"
}
