resource "aws_lb_ssl_negotiation_policy" "policy" {
  name          = "policy-${var.name}"
  load_balancer = "${var.load-balancer-id}"
  lb_port       = "${var.lb-port}"
  attribute {
    name  = "Protocol-TLSv1"
    value = "${lookup(local.policies[var.name],"Protocol-TLSv1")}"
  }

  attribute {
    name  = "Protocol-TLSv1.1"
    value = "${lookup(local.policies[var.name],"Protocol-TLSv1.1")}"
  }

  attribute {
    name  = "Protocol-TLSv1.2"
    value = "${lookup(local.policies[var.name],"Protocol-TLSv1.2")}"
  }

  attribute {
    name  = "Server-Defined-Cipher-Order"
    value = "${lookup(local.policies[var.name],"Server-Defined-Cipher-Order")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-GCM-SHA256"
    value = "${lookup(local.policies[var.name],"ECDHE-ECDSA-AES128-GCM-SHA256")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES128-GCM-SHA256"
    value = "${lookup(local.policies[var.name],"ECDHE-RSA-AES128-GCM-SHA256")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-GCM-SHA384"
    value = "${lookup(local.policies[var.name],"ECDHE-ECDSA-AES256-GCM-SHA384")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES256-GCM-SHA384"
    value = "${lookup(local.policies[var.name],"ECDHE-RSA-AES256-GCM-SHA384")}"
  }

  attribute {
    name  = "DHE-RSA-AES128-GCM-SHA256"
    value = "${lookup(local.policies[var.name],"DHE-RSA-AES128-GCM-SHA256")}"
  }

  attribute {
    name  = "DHE-RSA-AES256-GCM-SHA384"
    value = "${lookup(local.policies[var.name],"DHE-RSA-AES256-GCM-SHA384")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-SHA256"
    value = "${lookup(local.policies[var.name],"ECDHE-ECDSA-AES128-SHA256")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES128-SHA256"
    value = "${lookup(local.policies[var.name],"ECDHE-RSA-AES128-SHA256")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-SHA"
    value = "${lookup(local.policies[var.name],"ECDHE-ECDSA-AES128-SHA")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES256-SHA384"
    value = "${lookup(local.policies[var.name],"ECDHE-RSA-AES256-SHA384")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES128-SHA"
    value = "${lookup(local.policies[var.name],"ECDHE-RSA-AES128-SHA")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-SHA384"
    value = "${lookup(local.policies[var.name],"ECDHE-ECDSA-AES256-SHA384")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-SHA"
    value = "${lookup(local.policies[var.name],"ECDHE-ECDSA-AES256-SHA")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES256-SHA"
    value = "${lookup(local.policies[var.name],"ECDHE-RSA-AES256-SHA")}"
  }

  attribute {
    name  = "DHE-RSA-AES128-SHA256"
    value = "${lookup(local.policies[var.name],"DHE-RSA-AES128-SHA256")}"
  }

  attribute {
    name  = "DHE-RSA-AES128-SHA"
    value = "${lookup(local.policies[var.name],"DHE-RSA-AES128-SHA")}"
  }

  attribute {
    name  = "DHE-RSA-AES256-SHA256"
    value = "${lookup(local.policies[var.name],"DHE-RSA-AES256-SHA256")}"
  }

  attribute {
    name  = "DHE-RSA-AES256-SHA"
    value = "${lookup(local.policies[var.name],"DHE-RSA-AES256-SHA")}"
  }

  attribute {
    name  = "EDH-RSA-DES-CBC3-SHA"
    value = "${lookup(local.policies[var.name],"EDH-RSA-DES-CBC3-SHA")}"
  }

  attribute {
    name  = "AES128-GCM-SHA256"
    value = "${lookup(local.policies[var.name],"AES128-GCM-SHA256")}"
  }

  attribute {
    name  = "AES256-GCM-SHA384"
    value = "${lookup(local.policies[var.name],"AES256-GCM-SHA384")}"
  }

  attribute {
    name  = "AES128-SHA256"
    value = "${lookup(local.policies[var.name],"AES128-SHA256")}"
  }

  attribute {
    name  = "AES256-SHA256"
    value = "${lookup(local.policies[var.name],"AES256-SHA256")}"
  }

  attribute {
    name  = "AES128-SHA"
    value = "${lookup(local.policies[var.name],"AES128-SHA")}"
  }

  attribute {
    name  = "AES256-SHA"
    value = "${lookup(local.policies[var.name],"AES256-SHA")}"
  }

  attribute {
    name  = "DES-CBC3-SHA"
    value = "${lookup(local.policies[var.name],"DES-CBC3-SHA")}"
  }
}
