# raspberrypi initial setup
Ansible playbook for basic raspberrypi headless setup

Usage
-
Edit the `inventory` file with the IP address of your raspberry pi.

Edit vars `system_initial_setup.yml` to meet your needs:
|option | description |
|---|---|
| raspberry_local_autologin | set tty1 to automatically login as root |
| raspberry_replace_sshd | replace openssh with dropbear |
| raspberry_headless | turn off the video output |
| raspberry_hostname | device hostname |
| raspberry_root_password | root password |
| raspberry_user_password | pi user password |
| raspberry_ssh_keys | ssh keys to add to root and pi user |
| raspberry_packages_install | additional packages to be installed |
| raspberry_packages_deinstall | packages to be deinstalled |
| raspberry_services_deactivate| services to be deactivated |


Finally just run `ansible-playbook system_initial_setup.yml`

