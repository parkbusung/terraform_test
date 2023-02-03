# Subnet (Private)
resource "aws_subnet" "private" {
    count               =   length(var.private_subnets)
    
    vpc_id              =   "vpc-0b3168f71e0d09bea"
    cidr_block          =   "${lookup(var.private_subnets[count.index], "cidr")}"
    availability_zone   =   "${lookup(var.private_subnets[count.index], "availability_zone")}"
    
    tags = {
        Name        =   "${var.prefix}-Private Subnet ${count.index}"
        Managed_by  =   "terraform"
    }
}