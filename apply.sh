#!/bin/bash

set -e  # Dừng script ngay khi có lỗi xảy ra

#echo "Initializing Terraform..."
#terraform init

echo "Planning Terraform changes..."
terraform plan -out=tfplan
if [ $? -ne 0 ]; then
  echo "❌ Terraform plan failed! Stopping deployment."
  exit 1
fi

echo "Applying Terraform configuration..."
terraform apply -auto-approve tfplan

echo "✅ Ngon luôn bạn ơi :v !!!!"
