variable "count_instance" {
    description = "Quantidade de instancias"
    type        = number
    default     = 1
}

variable "aws_ami" {
    description = "aws ami default"
    type        = string
    default     = "ami-08c40ec9ead489470"
}

variable "aws_instance_type" {
    description = "aws instance default"
    type        = string
    default     = "t2.small"
}
