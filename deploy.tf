variable "project" {}

provider "openstack" {
  user_name   = "${var.user_name}"
  tenant_name = "${var.project}"
  password    = "${var.password}"
  auth_url    = "${var.auth_url}"
}

resource "openstack_compute_instance_v2" "testvm" {
  name            = "${var.VM_NAME}"
  image_id        = "${var.image_id}"
  availability_zone = "${var.region}"
  flavor_id       = "${var.flavor_id}"
  key_pair        = "${var.key_pair}"
  security_groups = [ "${var.security_groups}" ]
  block_device {
    uuid                  = "${var.image_id}"
    source_type           = "image"
    destination_type      = "volume"
    volume_size           = "${var.volume_size}"
    boot_index            = 0
    delete_on_termination = true
  }
  network {
    name = "${var.network}"
  }
}
output "address" {
  value = "${openstack_compute_instance_v2.testvm.access_ip_v4}"
}
