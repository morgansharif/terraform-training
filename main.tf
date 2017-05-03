#
# DO NOT DELETE THESE LINES!
#
# Your AMI ID is:
#
#     ami-2df66d3b
#
# Your subnet ID is:
#
#     subnet-75a08610
#
# Your security group ID is:
#
#     sg-4cc10432
#
# Your Identity is:
#
#     testing-wasp
#

provider "aws" {
  access_key = "AKIAJBNRJYM27WPSJ36A"
  secret_key = "HLn0Yw2Q011uDgGbUB0k/U01a1xkFyNI2vEyTaWo"
  region     = "us-east-1"
}

atlas {   name = "morgansharif/training" }

resource "aws_instance" "web" {
  ami                    = "ami-2df66d3b"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-75a08610"
  vpc_security_group_ids = ["sg-4cc10432"]

  tags = {
    "Name" = "foo"

    "Angry" = "Yes"
  }
}

# provider "aws" {  
#  access_key = "${var.aws_access_key}"
#  secret_key = "${var.aws_secret_key}"
#  region     = "${var.aws_region}"
# }

