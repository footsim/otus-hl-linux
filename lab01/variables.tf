variable "vm_name" {
  type        = string
  default     = "ubuntu"
}

variable "vm_zone" {
  type        = string
  default     = "ru-central1-a"
}

variable "vm_platform" {
  type        = string
  default     = "standard-v1"
}

variable "vm_family" {
  type        = string
  default     = "ubuntu-2004-lts"
}

variable "cpu" {
  type        = number
  default     = 2
}

variable "memory" {
  type        = number
  default     = 4
}

variable "disk_size" {
  type        = number
  default     = 20
}

variable "nat" {
  type        = bool
  default     = true
}

variable "user_name" {
  type        = string
  default     = "ubuntu"
}

variable "key_path" {
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "net_name" {
  type        = string
  default     = "lab01-net"
}

variable "subnet_name" {
  type        = string
  default     = "lab01-subnet-a"
}