resource "aws_key_pair" "capstone_key" {
  key_name   = "capstone-key"
  public_key = file("C:\\Users\\ANURAG J NAIK\\.ssh\\capstone-key.pub")
}