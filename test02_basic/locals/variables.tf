# test02_basic/locals/variables.tf

# 변수라기보다는 값이 한번 정해지면 상수처럼 정해진값 그대로 main.tf 등에서 사용한다..

variable "env" {
  type        = string
  description = "현재 환경 (dev | prod)"
}

variable "project_name" {
  type        = string
  description = "프로젝트 이름"
}
