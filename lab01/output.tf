resource "local_file" "ansible_inventory" {
  content = templatefile("/ansible/inventory.tpl",
    {
      ip = yandex_compute_instance.default.network_interface.0.nat_ip_address
      user = var.user_name
    }
  )
  filename = "/ansible/inventory.yml"
}