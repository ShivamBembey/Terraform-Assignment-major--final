output "ec2_output_block" {

    value = [for y in aws_instance.groupA_EC2 : y.id ]
  
}