variable "instance_type" {
  description = "Type of instance to use"
  type        = string
  default     = "t3.micro"
}

variable "server_port" {
  description = "Port on which the web server will listen"
  type        = number
  default     = 8080
}

variable "number_examples" {
  description = "Number of web server instances to create"
  type        = number
  default     = 42
}

variable "list_example" {
  description = "An example list variable"
  type        = list
  default     = ["a", "b", "c"]
}

variable "list_numeric_example" {
  description = "An example list variable with numbers"
  type        = list(number)
  default     = [1, 2, 3]
}

variable "map_example" {
  description = "An example map variable"
  type        = map(string)
  default     = {
    key1 = "value1"
    key2 = "value2"
    key3 = "value3"
    }
}

variable "object_example" {
  description = "An example object variable"
  type = object({
    name = string
    age  = number
    tags = list(string)
    enabled = bool
    })

  default = {
    name = "value1"
    age  = 42
    tags = ["a", "b", "c"]
    enabled = true
    }
}


variable "security_group_name" {
  description = "Name of the security group"
    type        = string
  default     = "terraform-example-instance"
}
