terraform {
  backend "s3" {
    bucket         = "flux-self-hosting-terraform-state-twg253"
    key            = "flux-bootstrap/terraform.tfstate"
    region         = "eu-west-1"
    use_lockfile   = true
  }
}
