variable "prefix" {}

variable "image_id" {}

variable "data_vol_snapshot_id" {}

variable "data_volume_size" {}

variable "instance_type" {}

variable "keypair_name" {}

variable "min_size" {
    type    =   number
}

variable "max_size" {
    type    =   number
}

variable "desired_capacity" {
    type    =   number
}

variable "security_group_ids" {
    type    =   list(string)
}

variable "subnet_ids" {
    type    =   list(string)
}