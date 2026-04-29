# test02_basic/foreach2/main.tf

# 1. 데이터 정의 (학생 명단)
locals {
  # map 을 이용해보면  
  students = {
    lee  = "이정호"
    kim  = "김정호"
    park = "박정호"
  }
}

# 2. for_each를 사용하여 파일 생성 local_file.student_notes는 map type이다.
resource "local_file" "student_notes" {
  # map 대입하기
  for_each = local.students
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