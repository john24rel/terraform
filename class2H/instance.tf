resource "aws_instance" "ubuntu" {
	ami = "ami-0739f8cdb239fe9ae"
	instance_type = "t2.micro"
    associate_public_ip_address = "true"
    key_name = "${aws_key_pair.ubuntu.key_name}"
    user_data = "${file("userdata.sh")}"
    availability_zone = "us-east-1e"
    vpc_security_group_ids = ["${aws_security_group.ubuntu.name}"]
    tags = {
        Name = "Ubuntu"
        Enviroment = "Dev"
    }
}    