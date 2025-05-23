data "cmccloudv2_flavor_k8s" "flavor_k8s" {
  name = "c6.large.2.k8s"
}
data "cmccloudv2_image" "window2022" {
    #image_id = "c9cd9428-84a1-4e77-946a-0f8c44a2eccc"
    #os = "windows"
    visibility = "public" // public, shared, private
    name = "Windows Server 2022"
}
data "cmccloudv2_image" "window2016" {
    #image_id = "c9cd9428-84a1-4e77-946a-0f8c44a2eccc"
    #os = "windows"
    visibility = "public" // public, shared, private
    name = "Windows Server 2016"
}
data "cmccloudv2_keypair" "keypair1" {
  name = "keypair-duytest-1"
  type = "ssh"
}
#data "cmccloudv2_subnet" "subnet1" {
#  subnet_id = "2fb45cb0-94b1-46f1-8d76-16645e61fde1"
   #vpc_id = "${data.cmccloudv2_vpc.vpc1.id}"
#   name = "subnet-01" 
#   cidr = "192.168.4.0/24"
   #gateway_ip = "192.168.4.1"
#}

data "cmccloudv2_volume_type" "SSD" {
  description = "High I/O (SSD)"
}

data "cmccloudv2_security_group" "sgdefault" {
  name = "default"
}
#data "cmccloudv2_security_group" "sg1" {
# name = "sg1"
#}
data "cmccloudv2_flavor_ec" "flavor_ec" {
  # flavor_id = ""
  name = "c6.large.2" # search image with name contains `22.04`
  # cpu = 2
  # ram = 4
}
data "cmccloudv2_flavor_ec" "flavor_ec_22" {
  # flavor_id = ""
  name = "c6.large.1" # search image with name contains `22.04`
  # cpu = 2
  # ram = 4
}
data "cmccloudv2_flavor_ec" "flavor_ec_11" {
  # flavor_id = ""
  name = "c6.small.1" # search image with name contains `22.04`
  # cpu = 2
  # ram = 4
} 
data "cmccloudv2_image" "ubuntu2204" {
  #image_id = "c9cd9428-84a1-4e77-946a-0f8c44a2eccc"
  os         = "ubuntu"
  visibility = "public" // public, shared, private
  name       = "22.04"  # search image with name contains `22.04`
}
data "cmccloudv2_image" "ubuntu2004" {
  #image_id = "c9cd9428-84a1-4e77-946a-0f8c44a2eccc"
  os         = "ubuntu"
  visibility = "public" // public, shared, private
  name       = "20.04"  # search image with name contains `22.04`
}
