output "vpc_id" {
    description     =   "The ID of VPC"
    value           =   module.vpc.this_vpc_id
}

output "vpc_cidr_block" {
    description     =   "The CIDR IP Range Block of VPC"
    value           =   module.vpc.this_vpc_cidr_block
}

output "public_subnet_ids" {
    description     =   "The List of Public Subnet ID of VPC"
    value           =   module.vpc.public_subnet_id
}

output "private_subnet_ids" {
    description     =   "The List of Private Subnet ID of VPC"
    value           =   module.vpc.private_subnet_ids
}

output "k8s_security_group_id" {
    description     =   "The ID of Security Group for Admin access"
    value           =   module.vpc.k8s_security_group_id
}

output "k8s-worker_auto_scaling_group_id" {
    description     =   "The ID of Auto Scaling Group"
    value           =   module.auto_scaling_group.k8s-worker_auto_scaling_group_id
}

output "k8s-worker_launch_template_id" {
    description     =   "The ID of Launch Template"
    value           =   module.auto_scaling_group.k8s-worker_launch_template_id
}
