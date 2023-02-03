resource "aws_autoscaling_group" "k8s-worker" {
    name                         =    "${var.prefix}-K8S Worker"
    vpc_zone_identifier          =    var.subnet_ids
    min_size                     =    var.min_size
    max_size                     =    var.max_size
    desired_capacity             =    var.desired_capacity

    launch_template {
        id         =     aws_launch_template.k8s-worker.id
        version    =     "$Default"
    }
}

resource "aws_autoscaling_policy" "k8s-policy" {
  autoscaling_group_name = aws_autoscaling_group.k8s-worker.name
  name                   = "${var.prefix}-k8s-policy"
  policy_type            = "TargetTrackingScaling"
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }

    target_value = 20.0
  }
}