all:
  hosts:
  children:
    ubuntu:

ubuntu:
  hosts:
    ${ip}
  vars:
    ansible_user: ${user}
