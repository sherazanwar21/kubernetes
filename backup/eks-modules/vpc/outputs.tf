output "vpc_id" {
    value = aws_vpc.tfvpc.id 
}

output "tfsub1" {
    value = aws_subnet.tfsub1.id
}

output "tfsub2" {
    value = aws_subnet.tfsub2.id
}