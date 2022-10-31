# Lab 01. Terraform

Description:

- create VM in Yandex with Terraform
- install nginx on VM with Ansible

1. Prepare environment:
    ```bash
    cd lab01

    export YC_TOKEN="your yandex token"
    export YC_CLOUD_ID=$(yc config get cloud-id)
    export YC_FOLDER_ID=$(yc config get folder-id)
    ```
1. Run Terraform
    ```bash
    terraform init
    terraform apply
    ```
1. Run Ansible
    ```bash
    ansible-playbook -i ansible/inventory.yml ansible/playbook_nginx.yml
    ```