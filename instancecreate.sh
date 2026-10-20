#!/bin/bash

ami_id=ami-0055977a6e828a4f4
instance_type="t3.micro"
domain_name="ram0202.store"
hosted_zone_id="Z07986632RTOI84DPGWLC"

for instance in $@
do
   instance_id=$(aws ec2 run-instances \
    --image-id $ami_id \
    --instance-type $instance_type \
    --security-groups "roboshop-common" "roboshop-$instance" \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=my-roboshop-$instance}]" \
    --query 'Instances[0].InstanceId' \
    --output text)

    echo "$instance ID : $instance_id
done