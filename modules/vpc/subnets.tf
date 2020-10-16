resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
}
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr
  availability_zone       = element(split(",", var.azs), count.index)
  count                   = length(var.public_subnets)
  map_public_ip_on_launch = true
}