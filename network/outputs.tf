output lab-private-subnet-1 {
  value       = aws_subnet.lab-private-subnet.id
}

output lab-public-subnet-1 {
  value       = aws_subnet.lab-public-subnet.id
}

output sec-private-subnet-2 {
  value       = aws_subnet.sec-private-subnet.id
}

output vpc_id {
  value       = aws_vpc.development-vpc.id
                
}

output vpc_cidr {
  value       = aws_vpc.development-vpc.cidr_block
}

