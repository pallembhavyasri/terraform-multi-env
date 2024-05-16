variable "instance_names"{
    type = map 

    #we commented here to give the variables as per the environment which is the best practice 
    # default = {
    #     db = "t3.micro"
    #     backend = "t3.small"
    #     frontend = "t3.small"
    # }
}

variable "enviroment"{
    #default = "dev"
}

variable "common_tags"{
    default = {
        createdby = "Bhavya"
        project = "Expense"
        terraform = "true"
    }
}


#r53 variables

variable "zone_id"{
    default = "Z0594556UZMHX8MM4MSM"
}

variable "domain_name"{
    default = "bhavya.store"
}