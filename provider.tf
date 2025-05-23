#terraform {
 # required_providers {
 #   cmccloudv2 = {
 #     source = "cmc-cloud/cmccloudv2"

#    }
#  }
#}
#provider "cmccloudv2" {
#  api_endpoint = "https://apiv2.cloud.cmctelecom.vn"
#  api_key      = "egp5e55r9t6ujt5d12061t1xn0raopnozvq5t4y8" #Get API key from cmccloud portal 
#  project_id   = "90fa57e96942453d85dc907688ee82cf"         #Get project_id from IAM on portal 
#  region_id    = "hn-1"
#}

terraform {
  required_providers {
    cmccloudv2 = {
      source               = "cmc-cloud/cmccloudv2"
    }
  }
}
provider "cmccloudv2" {
  api_endpoint = "https://apiv2.cloud.cmctelecom.vn"
  api_key      = "egp5e55r9t6ujt5d12061t1xn0raopnozvq5t4y8" #Get API key from cmccloud portal 
  project_id   = "90fa57e96942453d85dc907688ee82cf"         #Get project_id from IAM on portal 
  region_id    = "hn-1"
}
 
terraform {
  backend "s3" {
    key                    = "terraform.tfstate"
    bucket                 = "terraform-state"
    endpoint               = "https://s3.hn-1.cloud.cmctelecom.vn"
    region                 = "us-east-1"
    skip_region_validation = "true"
    skip_credentials_validation = "true"
    skip_requesting_account_id  = "true"
    use_path_style         = "true"
    skip_s3_checksum       = "true"
    access_key             = "3GEZ5XVSU112FU7KRXTD"
    secret_key             = "BnhxxOyZteUT8Dlr6MUS8zcCbUPp5UyGGfQaVHeO"
  }
}
