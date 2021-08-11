terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.AWS_REGION

  #---------------------------------------------#
  # Required for Deloitte OneCloud Environments #
  ignore_tags {
    keys = [
      "LastScanned",
      "BILLINGCODE",
      "BILLINGCONTACT",
      "COUNTRY",
      "CSCLASS",
      "CSQUAL",
      "CSTYPE",
      "ENVIRONMENT",
      "FUNCTION",
      "MEMBERFIRM",
      "PRIMARYCONTACT",
      "SECONDARYCONTACT"
    ]
  }
  #---------------------------------------------#
}