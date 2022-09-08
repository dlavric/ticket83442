terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.2"
    }
  }
}

provider "random" {
  # Configuration options
}

resource "random_password" "server_password" {
  length           = 16
  special          = true
  min_special      = 11
  override_special = "!@#$%&*-_+?"

}
