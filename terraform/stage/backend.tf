terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "otus-tf-states"
    region                      = "ru-central1"
    key                         = "stage/terraform.tfstate"
    access_key                  = "YCAJEh1yTpDNxQacGf-UtMUZg"
    secret_key                  = "YCO1vI--9_o706oanMBDB1EZ22LmFuVqBey1JiJ_"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
