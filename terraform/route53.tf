# # Route 53 DNS Record for Kubernetes Cluster
# resource "aws_route53_record" "k8s_record" {
#   zone_id = aws_route53_zone.k8s_zone.zone_id
#   name    = "k8s.cluster.mupando.com"
#   type    = "A"

#   alias {
#     name                   = aws_lb.k8_alb.dns_name
#     zone_id                = aws_lb.k8_alb.zone_id
#     evaluate_target_health = true
#   }
# }

# # Route 53 DNS Zone for Kubernetes Cluster
# resource "aws_route53_zone" "k8s_zone" {
#   name = "mupando.com"
# }



