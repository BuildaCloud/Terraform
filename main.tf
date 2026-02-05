resource "local_file" "file_one" {
  filename = "file1.txt"
  content  = "This is file number ONE 🥇"
}

resource "local_file" "file_two" {
  filename = "file2.txt"
  content  = "This is file number TWO 🥈"
}

resource "local_file" "file_three" {
  filename = "file3.txt"
  content  = "This is file number THREE"
}

resource "local_file" "file_four" {
  filename = var.file_name
  
  content  = "This is file number FOUR"
}

resource "local_file" "keep_folder" {
  filename = "myfolder/.keep"
  content  = ""
}

resource "local_file" "folders" {
  for_each = toset([
    "app/.keep",
    "db/.keep",
    "web/https/.keep",
    "web/http/.keep"
  ])
  filename = each.value
  content  = ""
}