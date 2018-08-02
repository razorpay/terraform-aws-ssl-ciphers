variable "name" {
  description = "Name of the SSL negotiation policy"
}

variable "load-balancer-id" {
  description = "The load balancer to which the policy should be attached."
}

variable "lb-port" {
  description = "The load balancer port to which the policy should be applied. This must be an active listener on the load balancer."
  default     = "443"
}

variable "create" {
  description = "Whether or not to create the policy"
  default     = "true"
}
