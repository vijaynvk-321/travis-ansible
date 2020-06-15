resource "ibm_container_cluster" "cluster" {
  name            = "mycluster-terraform-poc"
  datacenter      = "hou02"
  machine_type    = "free"
  hardware        = "shared"
  provisioner "local-exec" {
    command = "ansible-playbook ../playbooks/new-cluster.yml -i ../playbooks/inventory.ini"
  }
}

