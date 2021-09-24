variable "amis" {
    type = map

    default = {
        sa-east-1 = "ami-05aa753c043f1dcd3"
        us-east-1 = "ami-09e67e426f25ce0d7"
    }  
}

variable "cdirs_acesso_remoto" {
    type = list
    default = ["189.111.58.148/32"]  
}

variable "key_name" {
    default = "terraform-aws" 
}