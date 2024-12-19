
terraform {
  backend "gcs" {
    bucket = "bucketterraformcoursetfstate"
    prefix = "terraform-course/nahum"
  }
}