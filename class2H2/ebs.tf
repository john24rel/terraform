resource "aws_ebs_volume" "centos6" {
availability_zone = "us-east-1a"
size = 100
}

resource "aws_volume_attachment" "ebs_att" {
device_name = "/dev/sdi"
volume_id = "${aws_ebs_volume.centos6.id}"
instance_id = "${aws_instance.centos6.id}"
}