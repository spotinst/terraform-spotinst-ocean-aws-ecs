#### Create Ocean ECS Cluster ####
terraform {
  required_providers {
    spotinst = {
      source  = "spotinst/spotinst"
      version = ">=1.151.1"
    }
  }
}
provider "spotinst" {
  # Configuration options
  token   = "your-token"
  account = "your-spot-account"
}
module "ocean_ecs" {
  source = "spotinst/ocean-aws-ecs/spotinst"

  cluster_name         = "ECS-Workshop"
  region               = "us-west-2"
  subnet_ids           = ["subnet-12345"]
  security_group_ids   = ["sg-12345"]
  image_id             = "ami-1234567890"
  iam_instance_profile = "arn:aws:iam::1234567890:instance-profile/myECSRole"
  availability_vs_cost = "costOriented"
  fallback_to_ondemand = true
  use_as_template_only = true

  tags = { CreatedBy = "terraform" }
}
output "ocean_id" {
  value = module.ocean_ecs.ocean_id
}
