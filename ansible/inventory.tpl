all:
  hosts:
  children:
    ubuntu:

ubuntu:
  hosts:
    %{ for ip in ubuntu ~}
    ${ip}
    %{ endfor ~}
  vars:
    ansible_user: ${user}
