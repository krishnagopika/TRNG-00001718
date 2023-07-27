variable "aws_region_name" {
   type = string
   nullable = false
  
}

variable "instance-type" {
   type = map
   default = {
      dev:"t2.micro"
      test: "t2.nano"

   }
}

