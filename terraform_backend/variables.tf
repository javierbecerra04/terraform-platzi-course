variable "bucket_name" {
    default = "javier-backend-bucket"
}
variable "acl" {
    default = "private"
}
variable "tags" {
    default = {
        Environment = "Dev",
        CreatedBy = "javier_becerra_dev"
    }  
}