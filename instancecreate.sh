#!/bin/bash

ami_id=ami-0055977a6e828a4f4
instance_type=t3.micro"
domain_name="ram0202.store"
hosted_zone_id="Z07986632RTOI84DPGWLC"

for instance in $@
do
  echo "creating instance : $instance"
done