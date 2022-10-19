output "external_ip_address_app" {
  value = yandex_compute_instance.app.0.network_interface.0.nat_ip_address
}
output "external_ip_address_app2" {
  value = yandex_compute_instance.app.1.network_interface.0.nat_ip_address
}
output "external_bl_ip_address_app" {
  value = [for lb in yandex_lb_network_load_balancer.lb.listener : [for bln in lb.external_address_spec : bln.address].0].0
}