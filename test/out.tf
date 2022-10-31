data "yandex_compute_instance_group" "my_group" {
  instance_group_id = "cl1h6to0sjrdlhftutrs"
}

output "instance_external_ip" {
  value = "${data.yandex_compute_instance_group.my_group.instances.*.network_interface.0.nat_ip_address}"
}