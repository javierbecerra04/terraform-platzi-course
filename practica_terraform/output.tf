output "instance_ip" {
    value = aws_instance.javier-instance.*.public_ip
}