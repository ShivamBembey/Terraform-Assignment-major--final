
# Create IAM users
resource "aws_iam_user" "iam_users" {
  for_each = toset(var.user_names)
  name  = each.key
}



# Create IAM groups
resource "aws_iam_group" "iam_groups" {
  for_each = toset(var.group_names)
  name  = each.key
}


# Add IAM users to groups
resource "aws_iam_group_membership" "group_membership" {
  name  = "group-membership"
  users = [for user in aws_iam_user.iam_users : user.name]

  for_each = {
    for user in aws_iam_user.iam_users : user.name => user.name
  }

  group = tonumber(substr(each.key, 4, 1)) < 3 ? aws_iam_group.iam_groups["Employees"].name : aws_iam_group.iam_groups["Trainees"].name
}



