# Spot Ocean ECS Terraform Module

## Prerequisites
* Have an ECS cluster
* Spot Account and API Token defined in the Spotinst Terraform Provider

## Usage
```hcl
module "ocean_ecs" {
  source = "spotinst/ocean-aws-ecs/spotinst"

  cluster_name                    = "ECS-Workshop"
  region                          = "us-west-2"
  subnet_ids                      = ["subnet-123456789,subnet-123456789"]
  security_group_ids              = ["sg-123456789"]
  image_id                        = "ami-123456789"
  iam_instance_profile            = "arn:aws:iam::123456789:instance-profile/ecsInstanceRole"
  availability_vs_cost            = "costOriented"

  tags = {CreatedBy = "terraform"}
}
```

## Providers

| Name | Version   |
|------|-----------|
| spotinst | >= 1.78.0 |

## Modules
* `ecs-ocean` - Creates Ocean Cluster
* `ecs-ocean-launchspec` - (Optional) Add custom virtual node groups [Doc](https://registry.terraform.io/modules/spotinst/ocean-aws-ecs-vng/spotinst/latest)

## Inputs

| Name                                                                     | Description                                                                                                                                                                                                                                                                                                                                              | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | Default | Required |
|--------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Add a name for the Ocean cluster.                                                                                                                                                                                                                                                                                          | `string`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | `null` |   yes    |
| <a name="input_availability_vs_cost"></a> [availability\_vs\_cost](#input\_availability\_vs\_cost)                                                     | (Optional, Default: balanced) You can control the approach that Ocean takes while launching nodes by configuring this value. Possible values: costOriented,balanced,cheapest.                                                                                                                                                                                                                          | `string`  | `balanced` |    no    |

## Documentation

If you're new to [Spot](https://spot.io/) and want to get started, please checkout our [Getting Started](https://docs.spot.io/connect-your-cloud-provider/) guide, available on the [Spot Documentation](https://docs.spot.io/) website.

## Getting Help

We use GitHub issues for tracking bugs and feature requests. Please use these community resources for getting help:

- Ask a question on [Stack Overflow](https://stackoverflow.com/) and tag it with [terraform-spotinst](https://stackoverflow.com/questions/tagged/terraform-spotinst/).
- Join our [Spot](https://spot.io/) community on [Slack](http://slack.spot.io/).
- Open an issue.

## Community

- [Slack](http://slack.spot.io/)
- [Twitter](https://twitter.com/spot_hq/)

## Contributing

Please see the [contribution guidelines](CONTRIBUTING.md).

## License

Code is licensed under the [Apache License 2.0](LICENSE).