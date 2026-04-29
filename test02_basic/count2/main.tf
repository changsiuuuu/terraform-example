# terraform_example/test02_basic/count2/main.tf

# 지역 변수(상수) 만들기
locals {
    students_list = ["kim", "lee", "park"]
}

resource "local_file" "student_notes" {
    # list 의 요소 개수만큼 만들기
    count = length(local.students_list)
    # count.index를 활용해서 배열의 특정 item 참조해서 활용하는
    filename = "${path.module}/student_${local.students_list[count.index]}.txt"
    content = "안녕하세요. ${local.students_list[count.index]}의 실습 노트입니다."
}

output "debug" {
    value = local_file.student_notes[*].filename
}