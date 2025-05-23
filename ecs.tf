resource "cmccloudv2_server" "vm_01" {
  name         = "vm01"    # đặt tên cho VM
  billing_mode = "hourly" # lựa chọn billing mode, monthly hoặc hourly
  zone         = "AZ3"     # lựa chọn AZ khởi tạo , AZ1, AZ2 hoặc AZ3
  flavor_id    = data.cmccloudv2_flavor_ec.flavor_ec_11.id
  source_id    = data.cmccloudv2_image.ubuntu2204.id
  source_type  = "image"
  volume_size  = 20       # lựa chọn dung lượng volume cho root disk
  volume_type  = "highio" # lựa chọn loại lưu trữ , highio hoặc commonio
  #source_volume_type = "${data.cmccloudv2_volume_type.SSD.id}"  
  subnet_id = "81aec4f2-9fff-4917-9c78-9b0d00bfbdfb" # lựa chọn subnet triển khai
  //ip_address = "" #lựa chọn Ip private , nếu không có VM sẽ được tự động assign IP
  security_group_names = ["default"] # Vm được gắn với SG default
#  ecs_group_id = "78b7c5f2-b99a-4c5b-9a79-555f36384c28"
  # key_name = "" #chọn keypair để đăng nhập nếu có 
  # user_data = ""
  password = "Duynum1Xb@.123@#" # lựa chọn password, tối thiểu 8 ký tự , có chữ hoa và ký>
  vm_state = "active"
    tags{
                key = "project"
                value = "prod"
        }
        tags{
                key = "type"
                value = "ec2"
        }
}
