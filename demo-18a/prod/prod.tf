module "main-vpc" {
  source = "../modules/vpc"
  ENV = "${var.ENV"
  AWS_REGION = "${var.AWS_REGION}"
}

module "instances" {
  source = "../modules/instances"
  ENV = "prod"
  VPC_ID = "${module.main-vpc.vpc_id}"
  PUBLIC_SUBNETS = ["${module.main-vpc.public_subnets}"]
}
