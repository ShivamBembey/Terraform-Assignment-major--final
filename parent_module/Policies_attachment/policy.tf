# data "aws_iam_policy_document" "s3_full_access_policy_document" {
#   statement {
#     effect    = "Allow"
#     actions   = ["s3:*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_policy" "s3_full_access_policy" {
#   name   = "s3-full-access-policy"
#   policy = data.aws_iam_policy_document.s3_full_access_policy_document.json
# }

# resource "aws_iam_group_policy_attachment" "s3_full_access_pocily_attachment" {
#   group      = var.s3_full_access_policy_group_variable
#   policy_arn = var.s3_full_access_policy_arn_variable
# }

# # -----------------------------------------------------------------------------------

# data "aws_iam_policy_document" "s3_deny_full_access_policy_document" {
#   statement {
#     effect    = "Deny"
#     actions   = ["s3:*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_policy" "s3_deny_full_access_policy" {
#   name   = "s3-deny-full-access-policy"
#   policy = data.aws_iam_policy_document.s3_deny_full_access_policy_document.json
# }


# resource "aws_iam_group_policy_attachment" "s3_deny_full_access_policy_attachment" {
#   group      = var.s3_deny_full_access_policy_group_variable
#   policy_arn = var.s3_deny_full_access_policy_arn_variable
# }


# # -----------------------------------------------------------------------------------------

# data "aws_iam_policy_document" "ec2_full_access_policy_document" {
#   statement {
#     effect    = "Allow"
#     actions   = ["ec2:*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_policy" "ec2_full_access_policy" {
#   name   = "ec2-full-access-policy"
#   policy = data.aws_iam_policy_document.ec2_full_access_policy_document.json
# }

# resource "aws_iam_group_policy_attachment" "ec2_full_access_policy_attachment" {
#   group      = var.ec2_full_access_policy_group_variable
#   policy_arn = var.ec2_full_access_policy_arn_variable
# }



# # --------------------------------------------------------------------------------------------

# data "aws_iam_policy_document" "ec2_deny_full_access_policy_document" {
#   statement {
#     effect    = "Deny"
#     actions   = ["ec2:*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_policy" "ec2_deny_full_access_policy" {
#   name   = "ec2-deny-full-access-policy"
#   policy = data.aws_iam_policy_document.ec2_deny_full_access_policy_document.json
# }



# resource "aws_iam_group_policy_attachment" "ec2_deny_full_access_policy_attachment" {
#   group      = var.ec2_deny_full_access_policy_group_variable
#   policy_arn = var.ec2_deny_full_access_policy_arn_variable
# }































# data "aws_iam_policy_document" "s3_full_access_policy_document" {
#   statement {
#     effect    = "Allow"
#     actions   = ["s3:*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_policy" "s3_full_access_policy" {
#   name   = "s3-full-access-policy"
#   policy = data.aws_iam_policy_document.s3_full_access_policy_document.json
# }

# resource "aws_iam_group_policy_attachment" "s3_full_access_pocily_attachment" {
#   group      = aws_iam_group.iam_groups["Trainees"].name
#   policy_arn = aws_iam_policy.s3_full_access_policy.arn
# }

# # -----------------------------------------------------------------------------------

# data "aws_iam_policy_document" "s3_deny_full_access_policy_document" {
#   statement {
#     effect    = "Deny"
#     actions   = ["s3:*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_policy" "s3_deny_full_access_policy" {
#   name   = "s3-deny-full-access-policy"
#   policy = data.aws_iam_policy_document.s3_deny_full_access_policy_document.json
# }


# resource "aws_iam_group_policy_attachment" "s3_deny_full_access_policy_attachment" {
#   group      = aws_iam_group.iam_groups["Employees"].name
#   policy_arn = aws_iam_policy.s3_deny_full_access_policy.arn
# }


# # -----------------------------------------------------------------------------------------

# data "aws_iam_policy_document" "ec2_full_access_policy_document" {
#   statement {
#     effect    = "Allow"
#     actions   = ["ec2:*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_policy" "ec2_full_access_policy" {
#   name   = "ec2-full-access-policy"
#   policy = data.aws_iam_policy_document.ec2_full_access_policy_document.json
# }

# resource "aws_iam_group_policy_attachment" "ec2_full_access_policy_attachment" {
#   group      = aws_iam_group.iam_groups["Employees"].name
#   policy_arn = aws_iam_policy.ec2_full_access_policy.arn
# }



# # --------------------------------------------------------------------------------------------

# data "aws_iam_policy_document" "ec2_deny_full_access_policy_document" {
#   statement {
#     effect    = "Deny"
#     actions   = ["ec2:*"]
#     resources = ["*"]
#   }
# }

# resource "aws_iam_policy" "ec2_deny_full_access_policy" {
#   name   = "ec2-deny-full-access-policy"
#   policy = data.aws_iam_policy_document.ec2_deny_full_access_policy_document.json
# }



# resource "aws_iam_group_policy_attachment" "ec2_deny_full_access_policy_attachment" {
#   group      = aws_iam_group.iam_groups["Trainees"].name
#   policy_arn = aws_iam_policy.ec2_deny_full_access_policy.arn
# }























