resource "aws_lb_ssl_negotiation_policy" "policy" {
  name          = "${var.name}"
  load_balancer = "${var.load-balancer-id}"
  lb_port       = "${var.lb-port}"

  attribute {
    name  = "Protocol-TLSv1.2"
    value = true
  }

  attribute {
    name  = "Server-Defined-Cipher-Order"
    value = true
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-GCM-SHA256"
    value = true
  }

  attribute {
    name  = "ECDHE-RSA-AES128-GCM-SHA256"
    value = true
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-SHA256"
    value = true
  }

  attribute {
    name  = "ECDHE-RSA-AES128-SHA256"
    value = true
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-GCM-SHA384"
    value = true
  }

  attribute {
    name  = "ECDHE-RSA-AES256-GCM-SHA384"
    value = true
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-SHA384"
    value = true
  }
}
