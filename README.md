# terraform-ssl-ciphers

SSL Ciphers to be used on AWS ELBs for Terraform.

Usage:

```hcl
resource "aws_elb" "lb" {
  name               = "test-lb"
  availability_zones = ["us-east-1a"]

  listener {
    instance_port      = 8000
    instance_protocol  = "https"
    lb_port            = 443
    lb_protocol        = "https"
    ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
  }
}

module "ssl-policy" {
    source = "github.com/razorpay/terraform-ssl-ciphers//mozilla-old"
    name   = "${aws_elb.lb.name}-ssl-policy"
    load-balancer-id = "${aws_elb.lb.id}"
    lb-port = "443"
}
```

Or if you want to dynamically decide the policy:

```hcl
module "ssl-policy" {
    source = "github.com/razorpay/terraform-ssl-ciphers"
    name = "${aws_elb.lb.name}-ssl-policy"
    load-balancer-id = "${aws_elb.lb.id}"
    policy = "mozilla-modern"
    lb-port = "443
}
```

Note that since this uses nested modules, the state diagram is not identical if you use the dynamic
or static import method.

The following SSL Ciphers are available:

- `mozilla-old`
- `mozilla-intermediate`
- `mozilla-modern`
- `ELBSample-ELBDefaultCipherPolicy`
- `ELBSample-OpenSSLDefaultCipherPolicy`
- `ELBSecurityPolicy-2016-08`
- `ELBSecurityPolicy-TLS-1-1-2017-01`
- `ELBSecurityPolicy-TLS-1-2-2017-01`

# License

Licensed under MIT License. See LICENSE file for details
