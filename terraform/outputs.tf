output "external_ip_address_app" {
  value = yandex_compute_instance.app.0.network_interface.0.nat_ip_address
}
output "external_ip_address_app2" {
  value = yandex_compute_instance.app.1.network_interface.0.nat_ip_address
}
output "external_bl_ip_address_app" {
  value = [for s in yandex_lb_network_load_balancer.lb.listener : [for w in s.external_address_spec : w.address].0].0
}