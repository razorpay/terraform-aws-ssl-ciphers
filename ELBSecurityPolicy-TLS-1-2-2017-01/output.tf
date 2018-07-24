output "id" {
  value = "${aws_lb_ssl_negotiation_policy.policy.id}"
}

output "name" {
  value = "${aws_lb_ssl_negotiation_policy.policy.name}"
}

output "load-balancer" {
  value       = "${aws_lb_ssl_negotiation_policy.policy.load_balancer}"
  description = "The load balancer to which the policy is attached."
}

output "lb-port" {
  value       = "${aws_lb_ssl_negotiation_policy.policy.lb_port}"
  description = "The load balancer port to which the policy is applied. "
}

output "attribute" {
  value       = "${aws_lb_ssl_negotiation_policy.policy.attribute}"
  description = "The SSL Negotiation policy attributes. "
}
