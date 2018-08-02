resource "aws_lb_ssl_negotiation_policy" "policy" {
  name          = "${length(var.name) > 0 ? var.name : "policy-${var.load-balancer-id}"}"
  load_balancer = "${var.load-balancer-id}"
  lb_port       = "${var.lb-port}"
  
  attribute {
    name  = "Protocol-TLSv1"
    value = "${lookup(local.policies[var.policy],"Protocol-TLSv1", "false")}"
  }

  attribute {
    name  = "Protocol-TLSv1.1"
    value = "${lookup(local.policies[var.policy],"Protocol-TLSv1.1", "false")}"
  }

  attribute {
    name  = "Protocol-TLSv1.2"
    value = "${lookup(local.policies[var.policy],"Protocol-TLSv1.2", "false")}"
  }

  attribute {
    name  = "Server-Defined-Cipher-Order"
    value = "${lookup(local.policies[var.policy],"Server-Defined-Cipher-Order", "false")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-GCM-SHA256"
    value = "${lookup(local.policies[var.policy],"ECDHE-ECDSA-AES128-GCM-SHA256", "false")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES128-GCM-SHA256"
    value = "${lookup(local.policies[var.policy],"ECDHE-RSA-AES128-GCM-SHA256", "false")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-GCM-SHA384"
    value = "${lookup(local.policies[var.policy],"ECDHE-ECDSA-AES256-GCM-SHA384", "false")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES256-GCM-SHA384"
    value = "${lookup(local.policies[var.policy],"ECDHE-RSA-AES256-GCM-SHA384", "false")}"
  }

  attribute {
    name  = "DHE-RSA-AES128-GCM-SHA256"
    value = "${lookup(local.policies[var.policy],"DHE-RSA-AES128-GCM-SHA256", "false")}"
  }

  attribute {
    name  = "DHE-RSA-AES256-GCM-SHA384"
    value = "${lookup(local.policies[var.policy],"DHE-RSA-AES256-GCM-SHA384", "false")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-SHA256"
    value = "${lookup(local.policies[var.policy],"ECDHE-ECDSA-AES128-SHA256", "false")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES128-SHA256"
    value = "${lookup(local.policies[var.policy],"ECDHE-RSA-AES128-SHA256", "false")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES128-SHA"
    value = "${lookup(local.policies[var.policy],"ECDHE-ECDSA-AES128-SHA", "false")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES256-SHA384"
    value = "${lookup(local.policies[var.policy],"ECDHE-RSA-AES256-SHA384", "false")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES128-SHA"
    value = "${lookup(local.policies[var.policy],"ECDHE-RSA-AES128-SHA", "false")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-SHA384"
    value = "${lookup(local.policies[var.policy],"ECDHE-ECDSA-AES256-SHA384", "false")}"
  }

  attribute {
    name  = "ECDHE-ECDSA-AES256-SHA"
    value = "${lookup(local.policies[var.policy],"ECDHE-ECDSA-AES256-SHA", "false")}"
  }

  attribute {
    name  = "ECDHE-RSA-AES256-SHA"
    value = "${lookup(local.policies[var.policy],"ECDHE-RSA-AES256-SHA", "false")}"
  }

  attribute {
    name  = "DHE-RSA-AES128-SHA256"
    value = "${lookup(local.policies[var.policy],"DHE-RSA-AES128-SHA256", "false")}"
  }

  attribute {
    name  = "DHE-RSA-AES128-SHA"
    value = "${lookup(local.policies[var.policy],"DHE-RSA-AES128-SHA", "false")}"
  }

  attribute {
    name  = "DHE-RSA-AES256-SHA256"
    value = "${lookup(local.policies[var.policy],"DHE-RSA-AES256-SHA256", "false")}"
  }

  attribute {
    name  = "DHE-RSA-AES256-SHA"
    value = "${lookup(local.policies[var.policy],"DHE-RSA-AES256-SHA", "false")}"
  }

  attribute {
    name  = "EDH-RSA-DES-CBC3-SHA"
    value = "${lookup(local.policies[var.policy],"EDH-RSA-DES-CBC3-SHA", "false")}"
  }

  attribute {
    name  = "AES128-GCM-SHA256"
    value = "${lookup(local.policies[var.policy],"AES128-GCM-SHA256", "false")}"
  }

  attribute {
    name  = "AES256-GCM-SHA384"
    value = "${lookup(local.policies[var.policy],"AES256-GCM-SHA384", "false")}"
  }

  attribute {
    name  = "AES128-SHA256"
    value = "${lookup(local.policies[var.policy],"AES128-SHA256", "false")}"
  }

  attribute {
    name  = "AES256-SHA256"
    value = "${lookup(local.policies[var.policy],"AES256-SHA256", "false")}"
  }

  attribute {
    name  = "AES128-SHA"
    value = "${lookup(local.policies[var.policy],"AES128-SHA", "false")}"
  }

  attribute {
    name  = "AES256-SHA"
    value = "${lookup(local.policies[var.policy],"AES256-SHA", "false")}"
  }

  attribute {
    name  = "DES-CBC3-SHA"
    value = "${lookup(local.policies[var.policy],"DES-CBC3-SHA", "false")}"
  }
}
