#### Create Ocean ECS Cluster ####
module "ocean_ecs" {
    source = "spotinst/ecs-ocean/spotinst"

    cluster_name                    = "ECS-Workshop"
    region                          = "us-west-2"
    subnet_ids                      = ["subnet-123456789,subnet-123456789"]
    security_group_ids              = ["sg-123456789"]
    image_id                        = "ami-123456789"
    iam_instance_profile            = "arn:aws:iam::123456789:instance-profile/ecsInstanceRole"

    tags = {CreatedBy = "terraform"}
}

output "ocean_id" {
    value = module.ocean_ecs.ocean_id
}
