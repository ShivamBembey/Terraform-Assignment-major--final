module "ec2_module" {

  source            = "../parent_module/EC2"
  ami_id_EC2        = ["ami-0bde1eb2c18cb2abe", "ami-0bde1eb2c18cb2abe"]
  instance_type_EC2 = ["t2.micro", "t2.micro"]
  subnet_id_EC2     = [module.networking_module.public_subnet_id, module.networking_module.private_subnet_id]
  tags_for_EC2      = var.tags_groupA_child_module
  public_ip_address = [true, false]

}


module "networking_module" {
  source                    = "../parent_module/networking"
  tags_groupA               = var.tags_groupA_child_module
  cidr_block_vpc            = "10.0.0.0/16"
  cidr_block_private_subnet = "10.0.1.0/24"
  cidr_block_public_subnet  = "10.0.2.0/24"
}

module "S3_module" {
  source            = "../parent_module/s3"
  bucket_name       = ["Group-A-bucket-01", "Group-A-bucket-02"]
  tags_groupA       = var.tags_groupA_child_module
  acl_value         = "private"
  obj_ownership     = "BucketOwnerPreferred"
  versioning_config = "Enabled"
}


module "iam_users" {
  source      = "../parent_module/IAM_users_groups"
  user_names  = ["user1", "user2", "user3", "user4", "user5"]
  group_names = ["Employees", "Trainees"]


}



# module "policy_attachments" {
#   source = "../parent_module/Policies_attachment"

#   s3_full_access_policy_arn_variable      = module.policy_attachments.s3_full_access_policy_output
#   s3_deny_full_access_policy_arn_variable = module.policy_attachments.s3_deny_full_access_policy_output

#   ec2_full_access_policy_arn_variable      = module.policy_attachments.ec2_full_access_policy_output
#   ec2_deny_full_access_policy_arn_variable = module.policy_attachments.ec2_deny_full_access_policy_output


#   s3_full_access_policy_group_variable      = module.iam_users.group_trainees_name
#   s3_deny_full_access_policy_group_variable = module.iam_users.group_employees_name

#   ec2_full_access_policy_group_variable      = module.iam_users.group_employees_name
#   ec2_deny_full_access_policy_group_variable = module.iam_users.group_trainees_name


# }
