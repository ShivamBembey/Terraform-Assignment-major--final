# output "all_user_ids" {
#   value = [for user in aws_iam_user.iam_users : user.id]
# }

output "group_employees_id" {
  value = aws_iam_group.iam_groups["Employees"].id
}

output "group_trainees_id" {
  value = aws_iam_group.iam_groups["Trainees"].id
}


output "group_employees_name" {
  value = aws_iam_group.iam_groups["Employees"].name
}

output "group_trainees_name" {
  value = aws_iam_group.iam_groups["Trainees"].name
}
