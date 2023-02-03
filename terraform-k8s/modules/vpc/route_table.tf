# Route table (Private)
resource "aws_route_table" "private" {
    vpc_id              =   "vpc-0b3168f71e0d09bea"

    tags = {
        Name            =   "${var.prefix}-Private"
        Managed_by      =   "terraform"
    }
}

resource "aws_route_table_association" "private" {
    count               =   length(var.private_subnets)
    
    subnet_id           =   "${aws_subnet.private[count.index].id}"
    route_table_id      =   aws_route_table.private.id
    
    depends_on          =   [aws_subnet.private]
}