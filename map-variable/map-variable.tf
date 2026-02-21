variable "user-age" {
  type = map(number)
  default = {
    "Rohit" = 25
    "Arya" = 30
    "Rahul" = 35
  }
}

variable "username" {
  type = string
  default = "Rohit"
}