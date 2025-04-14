#!/bin/bash

echo "Step 1: Destroying listeners..."
terraform destroy -target=aws_lb_listener.web_listener -auto-approve

echo "Step 2: Destroying target groups..."
terraform destroy -target=aws_lb_target_group.academia_tg -auto-approve

echo "Step 3: Destroying the rest..."
terraform destroy -auto-approve