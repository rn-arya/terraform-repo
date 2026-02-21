output "print-map" {
  value = var.user-age
}

output "print-age-dict" {
  value = "Hi ${var.username} your age is ${var.user-age[var.username]}"
}

output "print-age-lookup" {
  value = "Hi ${var.username} your age is ${lookup(var.user-age, var.username)}"
}