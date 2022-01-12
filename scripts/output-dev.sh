#!/bin/sh
devip=$(cd terraform && terraform output -raw dev-ip)
echo "${devip} ansible_ssh_private_key_file=/home/jenkins/.ssh/id_rsa ansible_user=jenkins ansible_ssh_common_args='-o StrictHostKeyChecking=no'" > ansible/inventory
