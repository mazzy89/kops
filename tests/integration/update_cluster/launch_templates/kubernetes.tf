locals = {
  cluster_name                 = "launchtemplates.example.com"
  master_autoscaling_group_ids = ["${aws_autoscaling_group.master-us-test-1a-masters-launchtemplates-example-com.id}", "${aws_autoscaling_group.master-us-test-1b-masters-launchtemplates-example-com.id}", "${aws_autoscaling_group.master-us-test-1c-masters-launchtemplates-example-com.id}"]
  master_security_group_ids    = ["${aws_security_group.masters-launchtemplates-example-com.id}"]
  masters_role_arn             = "${aws_iam_role.masters-launchtemplates-example-com.arn}"
  masters_role_name            = "${aws_iam_role.masters-launchtemplates-example-com.name}"
  node_autoscaling_group_ids   = ["${aws_autoscaling_group.nodes-launchtemplates-example-com.id}"]
  node_security_group_ids      = ["${aws_security_group.nodes-launchtemplates-example-com.id}"]
  node_subnet_ids              = ["${aws_subnet.us-test-1b-launchtemplates-example-com.id}"]
  nodes_role_arn               = "${aws_iam_role.nodes-launchtemplates-example-com.arn}"
  nodes_role_name              = "${aws_iam_role.nodes-launchtemplates-example-com.name}"
  region                       = "us-test-1"
  route_table_public_id        = "${aws_route_table.launchtemplates-example-com.id}"
  subnet_us-test-1a_id         = "${aws_subnet.us-test-1a-launchtemplates-example-com.id}"
  subnet_us-test-1b_id         = "${aws_subnet.us-test-1b-launchtemplates-example-com.id}"
  subnet_us-test-1c_id         = "${aws_subnet.us-test-1c-launchtemplates-example-com.id}"
  vpc_cidr_block               = "${aws_vpc.launchtemplates-example-com.cidr_block}"
  vpc_id                       = "${aws_vpc.launchtemplates-example-com.id}"
}

output "cluster_name" {
  value = "launchtemplates.example.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-test-1a-masters-launchtemplates-example-com.id}", "${aws_autoscaling_group.master-us-test-1b-masters-launchtemplates-example-com.id}", "${aws_autoscaling_group.master-us-test-1c-masters-launchtemplates-example-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-launchtemplates-example-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-launchtemplates-example-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-launchtemplates-example-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-launchtemplates-example-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-launchtemplates-example-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-test-1b-launchtemplates-example-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-launchtemplates-example-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-launchtemplates-example-com.name}"
}

output "region" {
  value = "us-test-1"
}

output "route_table_public_id" {
  value = "${aws_route_table.launchtemplates-example-com.id}"
}

output "subnet_us-test-1a_id" {
  value = "${aws_subnet.us-test-1a-launchtemplates-example-com.id}"
}

output "subnet_us-test-1b_id" {
  value = "${aws_subnet.us-test-1b-launchtemplates-example-com.id}"
}

output "subnet_us-test-1c_id" {
  value = "${aws_subnet.us-test-1c-launchtemplates-example-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.launchtemplates-example-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.launchtemplates-example-com.id}"
}

provider "aws" {
  region = "us-test-1"
}

resource "aws_autoscaling_group" "master-us-test-1a-masters-launchtemplates-example-com" {
  name = "master-us-test-1a.masters.launchtemplates.example.com"

  launch_template = {
    id      = "${aws_launch_template.master-us-test-1a-masters-launchtemplates-example-com.id}"
    version = "${aws_launch_template.master-us-test-1a-masters-launchtemplates-example-com.latest_version}"
  }

  max_size            = 1
  min_size            = 1
  vpc_zone_identifier = ["${aws_subnet.us-test-1a-launchtemplates-example-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "launchtemplates.example.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-test-1a.masters.launchtemplates.example.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-us-test-1a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kubernetes.io/cluster/launchtemplates.example.com"
    value               = "owned"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-test-1b-masters-launchtemplates-example-com" {
  name = "master-us-test-1b.masters.launchtemplates.example.com"

  launch_template = {
    id      = "${aws_launch_template.master-us-test-1b-masters-launchtemplates-example-com.id}"
    version = "${aws_launch_template.master-us-test-1b-masters-launchtemplates-example-com.latest_version}"
  }

  max_size            = 1
  min_size            = 1
  vpc_zone_identifier = ["${aws_subnet.us-test-1b-launchtemplates-example-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "launchtemplates.example.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-test-1b.masters.launchtemplates.example.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-us-test-1b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kubernetes.io/cluster/launchtemplates.example.com"
    value               = "owned"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-test-1c-masters-launchtemplates-example-com" {
  name = "master-us-test-1c.masters.launchtemplates.example.com"

  launch_template = {
    id      = "${aws_launch_template.master-us-test-1c-masters-launchtemplates-example-com.id}"
    version = "${aws_launch_template.master-us-test-1c-masters-launchtemplates-example-com.latest_version}"
  }

  max_size            = 1
  min_size            = 1
  vpc_zone_identifier = ["${aws_subnet.us-test-1c-launchtemplates-example-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "launchtemplates.example.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-test-1c.masters.launchtemplates.example.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-us-test-1c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kubernetes.io/cluster/launchtemplates.example.com"
    value               = "owned"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-launchtemplates-example-com" {
  name = "nodes.launchtemplates.example.com"

  launch_template = {
    id      = "${aws_launch_template.nodes-launchtemplates-example-com.id}"
    version = "${aws_launch_template.nodes-launchtemplates-example-com.latest_version}"
  }

  max_size            = 2
  min_size            = 2
  vpc_zone_identifier = ["${aws_subnet.us-test-1b-launchtemplates-example-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "launchtemplates.example.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.launchtemplates.example.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kubernetes.io/cluster/launchtemplates.example.com"
    value               = "owned"
    propagate_at_launch = true
  }

  metrics_granularity   = "1Minute"
  enabled_metrics       = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  protect_from_scale_in = true
}

resource "aws_ebs_volume" "us-test-1a-etcd-events-launchtemplates-example-com" {
  availability_zone = "us-test-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "us-test-1a.etcd-events.launchtemplates.example.com"
    "k8s.io/etcd/events"                                = "us-test-1a/us-test-1a,us-test-1b,us-test-1c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_ebs_volume" "us-test-1a-etcd-main-launchtemplates-example-com" {
  availability_zone = "us-test-1a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "us-test-1a.etcd-main.launchtemplates.example.com"
    "k8s.io/etcd/main"                                  = "us-test-1a/us-test-1a,us-test-1b,us-test-1c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_ebs_volume" "us-test-1b-etcd-events-launchtemplates-example-com" {
  availability_zone = "us-test-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "us-test-1b.etcd-events.launchtemplates.example.com"
    "k8s.io/etcd/events"                                = "us-test-1b/us-test-1a,us-test-1b,us-test-1c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_ebs_volume" "us-test-1b-etcd-main-launchtemplates-example-com" {
  availability_zone = "us-test-1b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "us-test-1b.etcd-main.launchtemplates.example.com"
    "k8s.io/etcd/main"                                  = "us-test-1b/us-test-1a,us-test-1b,us-test-1c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_ebs_volume" "us-test-1c-etcd-events-launchtemplates-example-com" {
  availability_zone = "us-test-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "us-test-1c.etcd-events.launchtemplates.example.com"
    "k8s.io/etcd/events"                                = "us-test-1c/us-test-1a,us-test-1b,us-test-1c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_ebs_volume" "us-test-1c-etcd-main-launchtemplates-example-com" {
  availability_zone = "us-test-1c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "us-test-1c.etcd-main.launchtemplates.example.com"
    "k8s.io/etcd/main"                                  = "us-test-1c/us-test-1a,us-test-1b,us-test-1c"
    "k8s.io/role/master"                                = "1"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-launchtemplates-example-com" {
  name = "masters.launchtemplates.example.com"
  role = "${aws_iam_role.masters-launchtemplates-example-com.name}"
}

resource "aws_iam_instance_profile" "nodes-launchtemplates-example-com" {
  name = "nodes.launchtemplates.example.com"
  role = "${aws_iam_role.nodes-launchtemplates-example-com.name}"
}

resource "aws_iam_role" "masters-launchtemplates-example-com" {
  name               = "masters.launchtemplates.example.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.launchtemplates.example.com_policy")}"
}

resource "aws_iam_role" "nodes-launchtemplates-example-com" {
  name               = "nodes.launchtemplates.example.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.launchtemplates.example.com_policy")}"
}

resource "aws_iam_role_policy" "masters-launchtemplates-example-com" {
  name   = "masters.launchtemplates.example.com"
  role   = "${aws_iam_role.masters-launchtemplates-example-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.launchtemplates.example.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-launchtemplates-example-com" {
  name   = "nodes.launchtemplates.example.com"
  role   = "${aws_iam_role.nodes-launchtemplates-example-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.launchtemplates.example.com_policy")}"
}

resource "aws_internet_gateway" "launchtemplates-example-com" {
  vpc_id = "${aws_vpc.launchtemplates-example-com.id}"

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "launchtemplates.example.com"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-launchtemplates-example-com-c4a6ed9aa889b9e2c39cd663eb9c7157" {
  key_name   = "kubernetes.launchtemplates.example.com-c4:a6:ed:9a:a8:89:b9:e2:c3:9c:d6:63:eb:9c:71:57"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.launchtemplates.example.com-c4a6ed9aa889b9e2c39cd663eb9c7157_public_key")}"
}

resource "aws_launch_template" "master-us-test-1a-masters-launchtemplates-example-com" {
  name_prefix = "master-us-test-1a.masters.launchtemplates.example.com-"

  lifecycle = {
    create_before_destroy = true
  }

  block_device_mappings = {
    device_name = "/dev/xvda"

    ebs = {
      volume_type           = "gp2"
      volume_size           = 64
      delete_on_termination = true
    }
  }

  iam_instance_profile = {
    name = "${aws_iam_instance_profile.masters-launchtemplates-example-com.id}"
  }

  image_id      = "ami-12345678"
  instance_type = "t3.medium"
  key_name      = "${aws_key_pair.kubernetes-launchtemplates-example-com-c4a6ed9aa889b9e2c39cd663eb9c7157.id}"

  network_interfaces = {
    associate_public_ip_address = true
    delete_on_termination       = true
    security_groups             = ["${aws_security_group.masters-launchtemplates-example-com.id}"]
  }

  tag_specifications = {
    resource_type = "instance"

    tags = {
      KubernetesCluster                                   = "launchtemplates.example.com"
      Name                                                = "master-us-test-1a.masters.launchtemplates.example.com"
      "k8s.io/role/master"                                = "1"
      "kops.k8s.io/instancegroup"                         = "master-us-test-1a"
      "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    }
  }

  tag_specifications = {
    resource_type = "volume"

    tags = {
      KubernetesCluster                                   = "launchtemplates.example.com"
      Name                                                = "master-us-test-1a.masters.launchtemplates.example.com"
      "k8s.io/role/master"                                = "1"
      "kops.k8s.io/instancegroup"                         = "master-us-test-1a"
      "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    }
  }

  user_data = "${file("${path.module}/data/aws_launch_template_master-us-test-1a.masters.launchtemplates.example.com_user_data")}"
}

resource "aws_launch_template" "master-us-test-1b-masters-launchtemplates-example-com" {
  name_prefix = "master-us-test-1b.masters.launchtemplates.example.com-"

  lifecycle = {
    create_before_destroy = true
  }

  block_device_mappings = {
    device_name = "/dev/xvda"

    ebs = {
      volume_type           = "gp2"
      volume_size           = 64
      delete_on_termination = true
    }
  }

  iam_instance_profile = {
    name = "${aws_iam_instance_profile.masters-launchtemplates-example-com.id}"
  }

  image_id      = "ami-12345678"
  instance_type = "t3.medium"
  key_name      = "${aws_key_pair.kubernetes-launchtemplates-example-com-c4a6ed9aa889b9e2c39cd663eb9c7157.id}"

  network_interfaces = {
    associate_public_ip_address = true
    delete_on_termination       = true
    security_groups             = ["${aws_security_group.masters-launchtemplates-example-com.id}"]
  }

  tag_specifications = {
    resource_type = "instance"

    tags = {
      KubernetesCluster                                   = "launchtemplates.example.com"
      Name                                                = "master-us-test-1b.masters.launchtemplates.example.com"
      "k8s.io/role/master"                                = "1"
      "kops.k8s.io/instancegroup"                         = "master-us-test-1b"
      "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    }
  }

  tag_specifications = {
    resource_type = "volume"

    tags = {
      KubernetesCluster                                   = "launchtemplates.example.com"
      Name                                                = "master-us-test-1b.masters.launchtemplates.example.com"
      "k8s.io/role/master"                                = "1"
      "kops.k8s.io/instancegroup"                         = "master-us-test-1b"
      "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    }
  }

  user_data = "${file("${path.module}/data/aws_launch_template_master-us-test-1b.masters.launchtemplates.example.com_user_data")}"
}

resource "aws_launch_template" "master-us-test-1c-masters-launchtemplates-example-com" {
  name_prefix = "master-us-test-1c.masters.launchtemplates.example.com-"

  lifecycle = {
    create_before_destroy = true
  }

  block_device_mappings = {
    device_name = "/dev/xvda"

    ebs = {
      volume_type           = "gp2"
      volume_size           = 64
      delete_on_termination = true
    }
  }

  iam_instance_profile = {
    name = "${aws_iam_instance_profile.masters-launchtemplates-example-com.id}"
  }

  image_id      = "ami-12345678"
  instance_type = "t3.medium"
  key_name      = "${aws_key_pair.kubernetes-launchtemplates-example-com-c4a6ed9aa889b9e2c39cd663eb9c7157.id}"

  network_interfaces = {
    associate_public_ip_address = true
    delete_on_termination       = true
    security_groups             = ["${aws_security_group.masters-launchtemplates-example-com.id}"]
  }

  tag_specifications = {
    resource_type = "instance"

    tags = {
      KubernetesCluster                                   = "launchtemplates.example.com"
      Name                                                = "master-us-test-1c.masters.launchtemplates.example.com"
      "k8s.io/role/master"                                = "1"
      "kops.k8s.io/instancegroup"                         = "master-us-test-1c"
      "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    }
  }

  tag_specifications = {
    resource_type = "volume"

    tags = {
      KubernetesCluster                                   = "launchtemplates.example.com"
      Name                                                = "master-us-test-1c.masters.launchtemplates.example.com"
      "k8s.io/role/master"                                = "1"
      "kops.k8s.io/instancegroup"                         = "master-us-test-1c"
      "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    }
  }

  user_data = "${file("${path.module}/data/aws_launch_template_master-us-test-1c.masters.launchtemplates.example.com_user_data")}"
}

resource "aws_launch_template" "nodes-launchtemplates-example-com" {
  name_prefix = "nodes.launchtemplates.example.com-"

  lifecycle = {
    create_before_destroy = true
  }

  block_device_mappings = {
    device_name = "/dev/xvda"

    ebs = {
      volume_type           = "gp2"
      volume_size           = 128
      delete_on_termination = true
    }
  }

  iam_instance_profile = {
    name = "${aws_iam_instance_profile.nodes-launchtemplates-example-com.id}"
  }

  image_id      = "ami-12345678"
  instance_type = "t3.medium"
  key_name      = "${aws_key_pair.kubernetes-launchtemplates-example-com-c4a6ed9aa889b9e2c39cd663eb9c7157.id}"

  network_interfaces = {
    associate_public_ip_address = true
    delete_on_termination       = true
    security_groups             = ["${aws_security_group.nodes-launchtemplates-example-com.id}"]
  }

  tag_specifications = {
    resource_type = "instance"

    tags = {
      KubernetesCluster                                   = "launchtemplates.example.com"
      Name                                                = "nodes.launchtemplates.example.com"
      "k8s.io/role/node"                                  = "1"
      "kops.k8s.io/instancegroup"                         = "nodes"
      "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    }
  }

  tag_specifications = {
    resource_type = "volume"

    tags = {
      KubernetesCluster                                   = "launchtemplates.example.com"
      Name                                                = "nodes.launchtemplates.example.com"
      "k8s.io/role/node"                                  = "1"
      "kops.k8s.io/instancegroup"                         = "nodes"
      "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    }
  }

  user_data = "${file("${path.module}/data/aws_launch_template_nodes.launchtemplates.example.com_user_data")}"
}

resource "aws_route" "route-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.launchtemplates-example-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.launchtemplates-example-com.id}"
}

resource "aws_route_table" "launchtemplates-example-com" {
  vpc_id = "${aws_vpc.launchtemplates-example-com.id}"

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "launchtemplates.example.com"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    "kubernetes.io/kops/role"                           = "public"
  }
}

resource "aws_route_table_association" "us-test-1a-launchtemplates-example-com" {
  subnet_id      = "${aws_subnet.us-test-1a-launchtemplates-example-com.id}"
  route_table_id = "${aws_route_table.launchtemplates-example-com.id}"
}

resource "aws_route_table_association" "us-test-1b-launchtemplates-example-com" {
  subnet_id      = "${aws_subnet.us-test-1b-launchtemplates-example-com.id}"
  route_table_id = "${aws_route_table.launchtemplates-example-com.id}"
}

resource "aws_route_table_association" "us-test-1c-launchtemplates-example-com" {
  subnet_id      = "${aws_subnet.us-test-1c-launchtemplates-example-com.id}"
  route_table_id = "${aws_route_table.launchtemplates-example-com.id}"
}

resource "aws_security_group" "masters-launchtemplates-example-com" {
  name        = "masters.launchtemplates.example.com"
  vpc_id      = "${aws_vpc.launchtemplates-example-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "masters.launchtemplates.example.com"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_security_group" "nodes-launchtemplates-example-com" {
  name        = "nodes.launchtemplates.example.com"
  vpc_id      = "${aws_vpc.launchtemplates-example-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "nodes.launchtemplates.example.com"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-launchtemplates-example-com.id}"
  source_security_group_id = "${aws_security_group.masters-launchtemplates-example-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-launchtemplates-example-com.id}"
  source_security_group_id = "${aws_security_group.masters-launchtemplates-example-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-launchtemplates-example-com.id}"
  source_security_group_id = "${aws_security_group.nodes-launchtemplates-example-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "https-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-launchtemplates-example-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-launchtemplates-example-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-launchtemplates-example-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-launchtemplates-example-com.id}"
  source_security_group_id = "${aws_security_group.nodes-launchtemplates-example-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-launchtemplates-example-com.id}"
  source_security_group_id = "${aws_security_group.nodes-launchtemplates-example-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-launchtemplates-example-com.id}"
  source_security_group_id = "${aws_security_group.nodes-launchtemplates-example-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-launchtemplates-example-com.id}"
  source_security_group_id = "${aws_security_group.nodes-launchtemplates-example-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-launchtemplates-example-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ssh-external-to-node-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.nodes-launchtemplates-example-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "us-test-1a-launchtemplates-example-com" {
  vpc_id            = "${aws_vpc.launchtemplates-example-com.id}"
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-test-1a"

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "us-test-1a.launchtemplates.example.com"
    SubnetType                                          = "Public"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    "kubernetes.io/role/elb"                            = "1"
  }
}

resource "aws_subnet" "us-test-1b-launchtemplates-example-com" {
  vpc_id            = "${aws_vpc.launchtemplates-example-com.id}"
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-test-1b"

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "us-test-1b.launchtemplates.example.com"
    SubnetType                                          = "Public"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    "kubernetes.io/role/elb"                            = "1"
  }
}

resource "aws_subnet" "us-test-1c-launchtemplates-example-com" {
  vpc_id            = "${aws_vpc.launchtemplates-example-com.id}"
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-test-1c"

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "us-test-1c.launchtemplates.example.com"
    SubnetType                                          = "Public"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
    "kubernetes.io/role/elb"                            = "1"
  }
}

resource "aws_vpc" "launchtemplates-example-com" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "launchtemplates.example.com"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "launchtemplates-example-com" {
  domain_name         = "us-test-1.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                                   = "launchtemplates.example.com"
    Name                                                = "launchtemplates.example.com"
    "kubernetes.io/cluster/launchtemplates.example.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "launchtemplates-example-com" {
  vpc_id          = "${aws_vpc.launchtemplates-example-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.launchtemplates-example-com.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
