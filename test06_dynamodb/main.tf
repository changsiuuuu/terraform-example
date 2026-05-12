# dynamodb/main.tf

terraform {
  required_version = ">= 1.14.0" # 깃헙액션에서 에러나지 않게 일부 수정
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

resource "aws_dynamodb_table" "members" {
    name = "members"  # 테이블명 마음대로 지을 수 있다
    billing_mode = "PAY_PER_REQUEST" # 비용 지불 방식 (요청 개수당 과금)
    # partition key
    hash_key = "num" # 카테고리명 마음대로 (RDBMS의 PK와 유사)

    # sort key 정렬을 위함 attribute도 추가해야함
    # range_key ="정렬의 기준이 되는 칼럼"

    
    # 속성을 이용해서 
    attribute {
        name = "num" # 카테고리
        type = "N" # 데이터 type S는 문자열임. N은 숫자
    }
    tags = {
        Name = "members Table"
    }
}