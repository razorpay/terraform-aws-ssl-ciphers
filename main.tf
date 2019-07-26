module "ELBSample-OpenSSLDefaultCipherPolicy" {
  create           = "${var.policy == "ELBSample-OpenSSLDefaultCipherPolicy" ? "true" : "false"}"
  source           = "ELBSample-OpenSSLDefaultCipherPolicy"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "mozilla-modern" {
  create           = "${var.policy == "mozilla-modern" ? "true" : "false"}"
  source           = "mozilla-modern"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "ELBSecurityPolicy-TLS-1-1-2017-01" {
  create           = "${var.policy == "ELBSecurityPolicy-TLS-1-1-2017-01" ? "true" : "false"}"
  source           = "ELBSecurityPolicy-TLS-1-1-2017-01"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "ELBSecurityPolicy-TLS-1-2-2017-01" {
  create           = "${var.policy == "ELBSecurityPolicy-TLS-1-2-2017-01" ? "true" : "false"}"
  source           = "ELBSecurityPolicy-TLS-1-2-2017-01"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "ELBSample-ELBDefaultCipherPolicy" {
  create           = "${var.policy == "ELBSample-ELBDefaultCipherPolicy" ? "true" : "false"}"
  source           = "ELBSample-ELBDefaultCipherPolicy"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "mozilla-old" {
  create           = "${var.policy == "mozilla-old" ? "true" : "false"}"
  source           = "mozilla-old"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "mozilla-intermediate" {
  create           = "${var.policy == "mozilla-intermediate" ? "true" : "false"}"
  source           = "mozilla-intermediate"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "ELBSecurityPolicy-2016-08" {
  create           = "${var.policy == "ELBSecurityPolicy-2016-08" ? "true" : "false"}"
  source           = "ELBSecurityPolicy-2016-08"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "ELBSecurityPolicy-TLS-1-2-Ext-2018-06" {
  create           = "${var.policy == "ELBSecurityPolicy-TLS-1-2-Ext-2018-06" ? "true" : "false"}"
  source           = "ELBSecurityPolicy-TLS-1-2-Ext-2018-06"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}

module "tls-1-1-no-rsa" {
  create           = "${var.policy == "tls-1-1-no-rsa" ? "true" : "false"}"
  source           = "tls-1-1-no-rsa"
  lb-port          = "${var.lb-port}"
  name             = "${var.name}-ssl-policy"
  load-balancer-id = "${var.load-balancer-id}"
}
