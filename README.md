# terraformNerdBytes

If you are reading this, you have watched the Nerd Bytes episode on creating entities via Terraform, so you have already seen this project and how to run it. 

First you'll need the Terraform CLI installed [(see these docs)](https://learn.hashicorp.com/tutorials/terraform/install-cli)

Then download the [tf-synth](/tf-synth) folder here, and enter your own API Keys / Account IDs to the [variables.tf](tf-synth/variables.tf) file. 

In your terminal application (or within a VS Code terminal as in the Nerd Bytes video), navigate to your downloaded folder directory and run the commands, in sequence: 

* `terraform init`
* `terraform plan`
* `terraform apply`
  * you'll need to validate this by typing in `yes`

And that's it, you should now have some new Synthetics monitors in your account. Feel free to use this as a base level starting point for you to take to your organisation and build out with your own dashboards, alert setups, etc...
