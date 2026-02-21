variable "username" {
  description = "The name of the user"
  type        = string
  default = "Rohit Arya"
}

output "hello-username" {
  value = "Hello ${var.username} your age is ${var.age}"
}