resource "aws_vpc" "newvpc" {
    cidr_block = "192.168.0.0/16"
    tags = {
        Name = "new_vpc"
    }
}