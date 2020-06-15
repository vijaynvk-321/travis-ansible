variable "API_KEY" {}

provider "ibm" {
  ibmcloud_api_key = var.API_KEY
}

