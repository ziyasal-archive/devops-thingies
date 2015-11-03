resource "digitalocean_droplet" "www-2" {
    image = "ubuntu-14-04-x64"
    name = "www-2"
    region = "ams3"
    size = "512mb"
    private_networking = true
    ssh_keys = ["${digitalocean_ssh_key.default.id}"]

    connection {
     user = "root"
     type = "ssh"
     key_file = "${var.pvt_key}"
     timeout = "2m"
 }
 provisioner "remote-exec" {
   inline = [
     "export PATH=$PATH:/usr/bin",
     # install nginx
     "sudo apt-get update",
     "sudo apt-get -y install nginx"
   ]
 }
}
