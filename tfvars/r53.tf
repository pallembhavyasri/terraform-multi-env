#variables accessing in terraform(${}) Eg: "hello ${var.variable_name}" ---This is interpolation(text+variable)


resource "aws_route53_record" "expense" {
  for_each = aws_instance.expense
  zone_id = var.zone_id
  #if the it is PROD FE then we are giving just the domain name 
  name    = each.key == "frontend-prod" ? var.domain_name : "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 300
  records = startswith(each.key,"frontend") ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true #if record already exists. 
}