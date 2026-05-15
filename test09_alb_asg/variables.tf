# test09_alb_asg/variables.tf

# 변수 정의 
variable "region" { default = "ap-northeast-2" }
variable "instance_type" { default = "t3.micro" }

# autoscaling 그룹 에서 원하는 ec2의 개수
variable "desired_capacity" { default = 2 }
variable "min_size" { default = 1 } # 최소
variable "max_size" { default = 5 } # 최대

# 가용영역 
variable "avail_zone_1" { default = "ap-northeast-2a" }
variable "avail_zone_2" { default = "ap-northeast-2c" }

# ec2 의 개수
variable "ec2_count" { default = 3 }
