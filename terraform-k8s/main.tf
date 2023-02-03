module "vpc" {
    source                  =   "./modules/vpc"

    prefix                   =   var.prefix
    vpc_cidr                 =   var.vpc_cidr
    
    private_subnets          =   var.private_subnets
    
}

module  "auto_scaling_group" {
    source                   =   "./modules/auto_scaling_group"
    
    prefix                   =   var.prefix

    image_id                 =   var.image_id
    data_vol_snapshot_id     =   var.data_vol_snapshot_id
    data_volume_size         =   var.data_volume_size
    
    instance_type            =   var.instance_type
    keypair_name             =   var.keypair_name

    security_group_ids       =   [module.vpc.k8s_security_group_id]
    subnet_ids               =   module.vpc.private_subnet_ids

    max_size                 =   var.max_size
    min_size                 =   var.min_size
    desired_capacity         =   var.desired_capacity
    
    depends_on               =   [module.vpc]
}

/*module "webserver" {
    source                  =   "./modules/ec2"
    
    prefix                  =   var.prefix
    subnet_ids              =   module.vpc.public_subnet_ids
    ami_id                  =   var.ami_id
    data_vol_snapshot_id    =   var.data_vol_snapshot_id
    keypair_name            =   var.keypair_name
    instance_type           =   var.instance_type
    security_groups         =   [module.vpc.web_security_group_id]
    data_volume_size        =   var.data_volume_size
}*/