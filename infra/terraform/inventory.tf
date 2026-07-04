resource "local_file" "ansible_inventory" {

  filename = "../ansible/inventory/hosts.ini"

  content = templatefile(
    "${path.module}/templates/inventory.tpl",

    {
      worker_ips = module.ec2.worker_nodes_ips
    }

  )

}