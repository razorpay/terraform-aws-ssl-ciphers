module "ELBSample-OpenSSLDefaultCipherPolicy" {
  count            = "${var.policy == "ELBSample-OpenSSLDefaultCipherPolicy" ? 1 : 0}"
  source           = "ELBSample-OpenSSLDefaultCipherPolicy"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "mozilla-modern" {
  count            = "${var.policy == "mozilla-modern" ? 1 : 0}"
  source           = "mozilla-modern"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "ELBSecurityPolicy-TLS-1-1-2017-01" {
  count            = "${var.policy == "ELBSecurityPolicy-TLS-1-1-2017-01" ? 1 : 0}"
  source           = "ELBSecurityPolicy-TLS-1-1-2017-01"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "ELBSecurityPolicy-TLS-1-2-2017-01" {
  count            = "${var.policy == "ELBSecurityPolicy-TLS-1-2-2017-01" ? 1 : 0}"
  source           = "ELBSecurityPolicy-TLS-1-2-2017-01"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "ELBSample-ELBDefaultCipherPolicy" {
  count            = "${var.policy == "ELBSample-ELBDefaultCipherPolicy" ? 1 : 0}"
  source           = "ELBSample-ELBDefaultCipherPolicy"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "mozilla-old" {
  count            = "${var.policy == "mozilla-old" ? 1 : 0}"
  source           = "mozilla-old"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "mozilla-intermediate" {
  count            = "${var.policy == "mozilla-intermediate" ? 1 : 0}"
  source           = "mozilla-intermediate"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "ELBSecurityPolicy-2016-08" {
  count            = "${var.policy == "ELBSecurityPolicy-2016-08" ? 1 : 0}"
  source           = "ELBSecurityPolicy-2016-08"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}
