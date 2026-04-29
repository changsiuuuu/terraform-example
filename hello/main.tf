# terraform_example/hello/main.tf
# tf 파일은 HCL 형식의 파일입니다.

# 테라폼과 aws 버전에 관련된 정보를 명시해 놓는것이 좋다.
terraform {
  required_version = "~> 1.14.0" # ~> 1.14.0 이거는 1.14. 까지는 고정하겠다.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# aws provider 설정
provider "aws" {
    region = "ap-northeast-2"
}

# 간단하게 vpc 를 하나 생성해보기
resource "aws_vpc" "test_vpc" {
    cidr_block = "10.0.1.0/24"
    enable_dns_hostnames = true # 인스턴스에 dns 이름을 부여하기 위해 활성화
    enable_dns_support = true
    tags = {
        Name = "terraform_test_vpc"
    }  
}
# 인터넷 게이트웨이
resource "aws_internet_gateway" "igw" {
    # 어떤 vpc에 붙여야하지 선택에대한 문제가 발생함..
    vpc_id = aws_vpc.test_vpc.id  # 위에서 test_vpc가 만들어진다면 그 id를 여기에 사용
    tags = {
        Name = "test_vpc_igw" # tags 이름은 마음대로 지을 수 있다.. aws console 에 로그인하면보임
    }  
}

