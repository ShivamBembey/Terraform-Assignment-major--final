# S3 output
output "S3_output_child_module" {
  value = module.S3_module.buckets_id
}




#Networking Output
output "vpc_id_child_module"{
    value = module.networking_module.vpc_id
}

output "public_subnet_id_child_module" {
    value = module.networking_module.public_subnet_id
}

output "private_subnet_id_child_module" {
    value = module.networking_module.private_subnet_id
}

output "gateway_id_child_module" {
    value = module.networking_module.gateway_id
}


#EC2 output
output "ec2_output_block_child_module" {
  value = module.ec2_module.ec2_output_block
}


#IAM users and Groups
output "group_employees_id_child_module" {
  value = module.iam_users.group_employees_id
}

output "group_trainees_id_child_module" {
  value = module.iam_users.group_trainees_id
}

# output "all_users_id_child_module" {
#   value = module.iam_users.all_user_ids
# }