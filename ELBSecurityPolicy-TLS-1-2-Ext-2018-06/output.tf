output "id" {
  value = "${element(concat(aws_lb_ssl_negotiation_policy.policy.*.id, list("")),0)}"
}

output "name" {
  value = "${element(concat(aws_lb_ssl_negotiation_policy.policy.*.name, list("")),0)}"
}

output "load-balancer" {
  value       = "${element(concat(aws_lb_ssl_negotiation_policy.policy.*.load_balancer, list("")),0)}"
  description = "The load balancer to which the policy is attached."
}

output "lb-port" {
  value       = "${element(concat(aws_lb_ssl_negotiation_policy.policy.*.lb_port, list("")),0)}"
  description = "The load balancer port to which the policy is applied. "
}

output "attribute" {
  value       = "${aws_lb_ssl_negotiation_policy.policy.*.attribute}"
  description = "The SSL Negotiation policy attributes. "
}
