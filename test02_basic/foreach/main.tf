# test02_basic/foreach/main.tf

# 1. 데이터 정의 (학생 명단)
locals {
  students = ["kim", "lee", "park"]
}
# set 또는 map에들어있는 정보를 이용해서 반복문을 돌면서 여러 자원을 만들어야할때가 있음

# 2. for_each를 사용하여 파일 생성 local_file.student_notes는 map type이다.
resource "local_file" "student_notes" {
  # list 를 set으로 변환하여 for_each 에 넣어주기
  # for_each에 대입할 수 있는것은 set type 혹은 map type만 가능 (list 는 불가)
  for_each = toset(local.students)
  # set를 넣어줘서 ${each.key}와 ${each.value}가 동일하고
  # map을 넣으면 ${each.key}와 ${each.value}가 다르다.
  filename = "${path.module}/student_${each.key}.txt"
  content  = "안녕하세요... ${each.value}의 실습 노트입니다..."
}

output "debug" {
    description = "생성된 파일들의 전체 경로 목록"
    # 아이템은 local_file.student_notes map에 저장된 아이템 
    value = [for item in local_file.student_notes : item.filename]
}