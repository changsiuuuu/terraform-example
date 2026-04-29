# terraform_example/test02_basic/file/main.tf

# 모든 *.tf 파일에서 사용할 수 있는 지역 변수 만들기
locals {
  project_name = "test"
  user_name    = "kim"
  # 여러줄의 문자열을 미리 만들어둘수도있다.
  setup_content = <<-EOF
        #!/bin/bash
        echo "welcome to ${local.project_name}"
        echo "created by ${local.user_name}"
    EOF
  # 파일 경로를 미리 준비해서 변수화 해두면 관리가 편하다...
  file_path = "${path.module}/generated_file"
}

# 파일을 생성할때는 "local_file"이라는 resource를 사용해야 한다.
resource "local_file" "welcome_msg" {
  filename = "${local.file_path}/welcome.txt"
  content  = "안녕하세요... ${local.user_name}님... by terraform"
}

resource "local_file" "setup_script" {
    filename = "${local.file_path}/setup.sh"
    content = local.setup_content
    file_permission = "0755"
}