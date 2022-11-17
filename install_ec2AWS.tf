## EC2 Instance LAMP
resource "aws_instance" "LAMP" {
    count                  = var.count_instance
    ami                    = var.aws_ami
    instance_type          = var.aws_instance_type
    security_groups        = ["sg_DefaultWebserver"]
    key_name               = "terraform"
    user_data              = "${file("installLAMP.sh")}"
    
    tags = {
        Name = "ec2-instance-terraform-lamp${count.index + 1}"
    }
}


## EC2 Instance JENKINS
resource "aws_instance" "JENKINS" {
    count                  = var.count_instance
    ami                    = var.aws_ami
    instance_type          = var.aws_instance_type
    security_groups        = ["sg_Jenkins"]
    key_name               = "terraform"
    user_data              = "${file("installJENKINS.sh")}"
    
    tags = {
        Name = "ec2-instance-terraform-jenkins${count.index + 1}"
    }
}