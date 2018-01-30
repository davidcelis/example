variable "ssh_key_fingerprint" {}

# Create a web server
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-17-10-x64"
  name   = "terraform-example"
  region = "sfo2"
  size   = "1gb"
  monitoring = true
  ssh_keys = ["${var.ssh_key_fingerprint}"]
}
