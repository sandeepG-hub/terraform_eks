output "vpc_id" {
  value = aws_vpc.vpc.id
}
output "cidr_block" {
  value = aws_vpc.vpc.cidr_block
}
output "public_subnets" {
  value = aws_subnet.public.*.id
}
