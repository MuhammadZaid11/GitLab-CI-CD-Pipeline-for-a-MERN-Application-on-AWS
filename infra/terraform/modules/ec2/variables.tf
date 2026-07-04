variable "ami" {
    description = "The AMI to use for the instance"
    type        = string
  
}
variable "instance_type" {
    description = "The type of instance to use"
    type        = string
}
variable "name" {
    description = "The name tag for the instance"
    type        = string
}
variable "instance_count" {
    description = "Total number of instances to create (1 control + N workers)"
    type        = number
    default     = 5
}