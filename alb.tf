resource "aws_alb" "app_alb" {
  name               = "app-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_sg.id]
  subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]

  enable_deletion_protection = false
  enable_cross_zone_load_balancing = true
  idle_timeout                = 60

  tags = {
    Name = "app-alb"
  }
}
