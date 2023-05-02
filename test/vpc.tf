 resource "aws_vpc" "vpc-t_vpc" {               
   cidr_block = var.vpc-t_vpc_cidr
 }

 resource "aws_subnet" "public_subnet" {
   vpc_id =  aws_vpc.vpc-t_vpc.id
   cidr_block = var.public_subnet
   map_public_ip_on_launch = true
 }

 resource "aws_internet_gateway" "Igw" {    
    vpc_id =  aws_vpc.vpc-t_vpc.id
 }

 resource "aws_route_table" "PublicRT" {
    vpc_id =  aws_vpc.vpc-t_vpc.id
    route {
    cidr_block = "0.0.0.0/0"  
    gateway_id = aws_internet_gateway.Igw.id
    }
 }

 resource "aws_route_table_association" "PublicRTassociation" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.PublicRT.id
 }


