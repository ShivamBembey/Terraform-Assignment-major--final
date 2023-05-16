resource "aws_instance" "groupA_EC2" {

  count = length(var.ami_id_EC2)

  ami           =    var.ami_id_EC2[count.index]    

  instance_type = var.instance_type_EC2[count.index]

  subnet_id     =  var.subnet_id_EC2[count.index]            
   
  associate_public_ip_address = var.public_ip_address[count.index]

  

  tags = var.tags_for_EC2

  volume_tags = var.tags_for_EC2
}