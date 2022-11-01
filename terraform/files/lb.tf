resource "yandex_lb_network_load_balancer" "lb" {
  name = "lb-app"

  listener {
    name        = "listener-web-servers"
    port        = 80
    target_port = 9292
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_lb_target_group.web-servers.id

    healthcheck {
      name = "http"
      http_options {
        port = 9292
        path = "/"
      }
    }
  }
}

resource "yandex_lb_target_group" "web-servers" {
  name = "web-servers-target-group"

  target {
    subnet_id = var.subnet_id
    address   = yandex_compute_instance.app.0.network_interface.0.ip_address
  }
#  target {
#    subnet_id = var.subnet_id
#    address   = yandex_compute_instance.app.0.network_interface.0.ip_address
#  }

}
