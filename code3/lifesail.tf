
resource "aws_lightsail_instance" "custom" {
  name              = "week_5"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>You Made It Kevin Your Now A DevOps Engineer Making $165k. Thank You Jesus.</h1>' | sudo tee /var/www/html/index.html"
}

