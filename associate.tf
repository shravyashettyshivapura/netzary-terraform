resource "aws_iam_instance_profile_association" "instance1" {
  instance_id      = aws_instance.existing_instance_1.id
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
}

resource "aws_iam_instance_profile_association" "instance2" {
  instance_id      = aws_instance.existing_instance_2.id
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
}
