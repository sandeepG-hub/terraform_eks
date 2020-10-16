module "test_cluster" {
source      = "../modules/cluster"
cluster     ="cluster"
subnet_ids  = ["subnet-0043fb7c5bddc8705","subnet-06e0e661239ffd6fb"]
profile     = "default"
region      = "us-east-2"
}
module "master" {
source          = "../modules/master"
clustername     = "cluster"
region          = "us-east-2"
node_group_name = "master"
instance_type   = ["t3.medium"]
desired_size    = 1
max_size        = 1
min_size        = 1
profile         = "default"
cluster_id      = module.test_cluster.cluster_id
}
