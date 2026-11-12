# Creates one small Ubuntu EC2 virtual machine.
resource "aws_instance" "vm" {
  # Find this in EC2 > AMI Catalog. AMI IDs are specific to each region.
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.vm.id]
  count                  = var.instance_count
  # Gives the VM a readable name in the AWS Console.
  tags = {
    Name = var.tag_name
  }
}
