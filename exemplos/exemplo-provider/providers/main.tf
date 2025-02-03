provider "aws" {
    region = "us-east-1"
    version = "5.84.0"
}

provider "azurerm" {
    version = "4.16.0"
    features {}
}