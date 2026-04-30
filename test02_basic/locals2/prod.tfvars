# locals2/prod.tfvars

# 파일명이 terraform.tfvars가 아니기때문에 terraform을 실행할때 default로 읽어들이지않는다.

# prod는 production 의 의미 -> 실제 배포용

env          = "prod"
project_name = "cloud-v1"