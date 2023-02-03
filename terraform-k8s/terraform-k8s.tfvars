prefix              =       "user23"
region              =       "ap-northeast-2"
vpc_cidr            =       "10.23.0.0/16"

private_subnets = [
    {cidr = "10.23.2.0/24", availability_zone = "ap-northeast-2b"},
    {cidr = "10.23.3.0/24", availability_zone = "ap-northeast-2c"},
]

image_id                 =   "ami-01e8dbde0a2178fa9"
data_vol_snapshot_id     =   "snap-06b3bf8100047baf0"
data_volume_size         =   "10"

instance_type            =   "t3.medium"
keypair_name             =   "user23-key"

min_size                 =       1
max_size                 =       3
desired_capacity         =       2