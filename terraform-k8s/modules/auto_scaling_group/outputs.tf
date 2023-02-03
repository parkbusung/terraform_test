output "k8s-worker_auto_scaling_group_id" {
    description     =   "The ID of Auto Scaling Group"
    value           =   aws_autoscaling_group.k8s-worker.id
}

output "k8s-worker_launch_template_id" {
    description     =   "The ID of Launch Template"
    value           =   aws_launch_template.k8s-worker.id
}
