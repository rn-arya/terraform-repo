output "print-list" {
  value = var.name-list
}

output "print-index" {
  value = var.name-list[var.index]
}

output "print-all"{
  value ="${join(",", var.name-list)}"
}

output "print-upper" {
  value = "${upper(var.name-list[var.index])}"
}