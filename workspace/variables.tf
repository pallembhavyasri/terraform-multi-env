variable "instance_type" {
    type = map 
    default = {
        dev-env = "t3.micro"
        prod-env = "t3.small"   # key should be the workspace name 
    }
}