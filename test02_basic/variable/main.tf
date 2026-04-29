# terraform_example/test02_basic/variable/main.tf
# variable 사용해보기

# project_name이라는 변수를 만들어서 기본값 "lecture" 를 대입
variable "project_name" {
  default = "lecture"
}

# env라는 변수를 만들어서 기본값 "dev" 를 대입
variable "env" {
  default = "dev"
}

# 1. String (문자열 type)
# 가장 기본이 되는 문자열 type 입니다. 이름이나 리전 등을 지정할때 사용합니다.

variable "vpc_name" {
  type        = string            # option (type을 명시적으로 지정)
  description = "vpc의 이름을 지정합니다." # option (설명)
  default     = "lecture-vpc"     # 기본값
}

# 2. Number (숫자 type)
variable "instance_count" {
  # 숫자 type 은 number 입니다.
  type        = number
  description = "생성할 인스턴스의 갯수"
  default     = 3 # 숫자 type 3을 기본값으로 지정
}

# 3. List (배열 type)
variable "avail_zones" {
  # list는 배열이고 list(string) 은 문자열이 들어있는 배열을 의미한다.
  type        = list(string)
  description = "사용할 가용 영역 리스트입니다. "
  # 배열의 0번방, 1번방, 2번방에 문자열 넣어두기
  # 외부에서 참조할땐 var.avail_zones[숫자] 같은 형식으로 참조할 수 있다..
  default = ["ap-northeast-2a", "ap-northeast-2c", "ap-northeast-2d"]
}

# 4. Map (dict 형태)
variable "common_tags" {
  type        = map(string)
  description = "모든 리소스에 공통으로 붙일 태그 입니다."
  default = {
    env     = "dev"
    project = "terraform-study"
    owner   = "kimleepark"
  }
}

# 5. bool (논리 type)
variable "is_production" {
  type        = bool
  description = "운영환경이면 true, 개발환경이면 false를 넣으세요"
  default     = false
}

# 변수에 저장된 내용 출력하기
output "debug01_project_name" {
  # 변수 참조 하는 방법 -> var.변수명
  value = var.project_name
}

output "debug02_env" {
  value = var.env
}

output "debug03_info" {
  # 문자열 보간법을 이용해서 원하는 문자열 형식을 만들어 출력할수있다.
  value = "프로젝트명 : ${var.project_name}, 환경 : ${var.env}"
}

output "debug04_vpc_name" {
  value = "vpc 이름 : ${var.vpc_name}"
}

output "debug05_count" {
  value = "인스턴스 count : ${var.instance_count}"
}

output "debug06_list_all" {
  value = join(",", var.avail_zones)
}

output "debug07_map_value" {
  # map에 저장된 데이터 참조법은 .key 
  value = "이 프로젝트의 환경은 ${var.common_tags.env} 입니다."
}

output "debug08_map_value2" {
  # ["key"] 로도 참조할 수 있다. 
  value = "이 프로젝트의 주인은 ${var.common_tags["owner"]} 입니다."
}

output "debug09_is_production" {
  value = "이 프로젝트의 환경은 운영환경이 ${var.is_production} 입니다."
}