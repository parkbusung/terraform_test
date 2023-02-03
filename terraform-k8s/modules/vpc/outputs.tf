output "this_vpc_id" {
    description     =   "The ID of VPC"
    value           =   "vpc-0b3168f71e0d09bea"
}

output "this_vpc_cidr_block" {
    description     =   "The CIDR IP Range Block of VPC"
    value           =   "10.23.0.0/16"
}

output "public_subnet_id" {
    description     =   "The ID of Public Subnet of VPC"
    value           =   "subnet-0dad410b714580327"
}

output "private_subnet_ids" {
    description     =   "The List of Private Subnet ID of VPC"
    value           =   aws_subnet.private.*.id
}

output "this_internet_gateway_id" {
    description     =   "The ID of Internet Gateway of VPC"
    value           =   "igw-086b5a330574277b1"
}

output "public_route_table_id" {
    description     =   "The ID of Route Table for Public Subnet"
    value           =   "rtb-031807b613da11bcd"
}

output "private_route_table_id" {
    description     =   "The ID of Route Table for Private Subnet"
    value           =   aws_route_table.private.id
}

output "this_nat_gateway_id" {
    description     =   "The ID of NAT Gateway of VPC"
    value           =   aws_nat_gateway.this.id
}

output "k8s_security_group_id" {
    description     =   "The ID of Security Group for k8s-worker"
    value           =   aws_security_group.k8s-worker.id
}