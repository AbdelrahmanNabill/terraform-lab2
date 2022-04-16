resource "aws_elasticache_subnet_group" "redisgroup" {
  name       = "redis-subnets"
  subnet_ids = [module.network.lab-private-subnet-1,module.network.sec-private-subnet-2]
  tags = {
    Name = "myredis_subnet_group"
  }
}


resource "aws_elasticache_cluster" "redis" {
  cluster_id           = "iti-cluster"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = "3.2.10"
  port                 = 6379
  security_group_ids = [aws_security_group.redis-sg.id]
  availability_zone = var.avail_zone[0]
  subnet_group_name = aws_elasticache_subnet_group.redisgroup.id
}

