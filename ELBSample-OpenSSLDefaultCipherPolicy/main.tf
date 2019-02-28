resource "aws_lb_ssl_negotiation_policy" "policy" {
  count         = "${var.create ? 1  : 0}"
  name          = "${var.name}"
  load_balancer = "${var.load-balancer-id}"
  lb_port       = "${var.lb-port}"

  attribute {
    name  = "Protocol-TLSv1"
    value = "true"
  }

  attribute {
    name  = "Protocol-SSLv3"
    value = "true"
  }

  attribute {
    name  = "Protocol-TLSv1.1"
    value = "false"
  }

  attribute {
    name  = "Protocol-TLSv1.2"
    value = "false"
  }

  attribute {
    name  = "Server-Defined-Cipher-Order"
    value = "false"
  }

  attribute {
    name  = "AES128-SHA"
    value = "true"
  }

  attribute {
    name  = "AES256-SHA"
    value = "true"
  }

  attribute {
    name  = "DES-CBC3-SHA"
    value = "true"
  }

  attribute {
    name  = "RC4-SHA"
    value = "true"
  }

  attribute {
    name  = "RC4-MD5"
    value = "true"
  }
}
