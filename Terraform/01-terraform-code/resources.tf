




resource "aws_instance" "sample-instance" {

    instance_type = "t2.micro"
    ami = data.aws_ami.instance_ami.id
}




