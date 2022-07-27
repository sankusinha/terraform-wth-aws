
# Output - For Loop with List


output "instance_publicip" {
  # value = aws_instance.myec2vm[*].public_ip
  value = [for instance in aws_instance.myec2vm : instance.public_ip]
}

output "instance_public_dns" {
  value = [for instance in aws_instance.myec2vm : instance.public_dns]
}

output "instance_publicdns2" {
  value = tomap({ for az, instance in aws_instance.myec2vm : az => instance.public_dns })
}