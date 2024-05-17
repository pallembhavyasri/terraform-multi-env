
#creating ec2 instance
resource "aws_instance" "workspace" {

    ami = "ami-090252cbe067a9e58"
    vpc_security_group_ids = ["sg-014f3947b6035bd6d"]
    instance_type = lookup(var.instance_type, terraform.workspace)
    #lookup is the fun to get the particular key from a map. #terraform.workspace will point to the present located workspace 
}