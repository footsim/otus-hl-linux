data "yandex_compute_image" "vm_image" {
  family = var.vm_family
} 

resource "yandex_compute_instance" "default" {
  name        = var.vm_name
  platform_id = var.vm_platform
  zone        = var.vm_zone

  resources {
    cores  = var.cpu
    memory = var.memory
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.vm_image.id
      size = var.disk_size
    }
  }

  network_interface {
    subnet_id = "${yandex_vpc_subnet.subnet.id}"
    nat = var.nat
  }

  metadata = {
    ssh-keys = "var.user_name:${file(var.key_path)}"
  }
}

resource "yandex_vpc_network" "net" {
    name = var.net_name
}

resource "yandex_vpc_subnet" "subnet" {
    name = var.subnet_name
    zone           = var.vm_zone
    v4_cidr_blocks = ["10.60.1.0/24"]
    network_id = "${yandex_vpc_network.net.id}"
}