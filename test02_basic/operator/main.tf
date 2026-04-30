# test02_basic/operator/main.tf 

variable "env" {
    default = "dev"
}

locals {
    # dev환경이면  최소사양의 ec2, pord 환경이면 좋은사양의 ec2를 만들기 위한 로직
    instance_type = var.env == "dev" ? "t3.micro" : "t2.large"
}

output "debug" {
    value = "instance_type 은 ${local.instance_type}입니다"
}