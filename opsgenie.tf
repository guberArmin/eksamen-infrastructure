# Configure the Opsgenie Provider
provider "opsgenie" {
  api_key = var.opsgenie_key
  api_url = "api.eu.opsgenie.com"
  #default is api.opsgenie.com
}

#https://registry.terraform.io/providers/opsgenie/opsgenie/latest/docs/resources/user
#Lets make some users
resource "opsgenie_user" "first_test_user" {
  username = "first_test_user@gmail.com"
  full_name = "First Test User"
  role = "User"
}

resource "opsgenie_user" "second_test_user" {
  username = "second_test_user@gmail.com"
  full_name = "Second Test User"
  role = "User"
}