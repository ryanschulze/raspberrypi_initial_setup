# Raspberry Pi initial setup
Ansible playbook for basic raspberrypi headless setup

Usage
-
Edit the `inventory` file and fill in the IP address of the raspberry pi you want to setup.

Edit a few vars `system_initial_setup.yml` to meet your needs:

| option | value | description |
|---|---|---|
| `raspberry_local_autologin` | true/false | set tty1 to automatically login as root |
| `raspberry_replace_sshd` | true/false | replace openssh with dropbear |
| `raspberry_headless` | true/false | turn off the video output |
| `raspberry_hostname` | string | device hostname |
| `raspberry_root_password` | string | root password |
| `raspberry_user_password` | string | pi user password |
| `raspberry_ssh_keys` | list of keys | ssh keys to add to root and pi user |
| `raspberry_packages_install` | list of packages | additional packages to be installed |
| `raspberry_packages_deinstall` | list of packages | packages to be deinstalled |
| `raspberry_services_deactivate` | list of services | services to be deactivated |

Finally just run `ansible-playbook system_initial_setup.yml`

Tasks
-
What does the playbook do?
  - set hostname
  - expand root filesystem
  - deploy bash prompt
  - deploy .bashrc file
  - add wheel group
  - add SSH key
  - set up pi user
  - set up root user
  - passwordless su for pi user
  - disable serial console
  - local autologin on tty1 (optional)
  - install any updates (safe-upgrade)
  - remove packages
  - install packages
  - package cleanup
  - stop services
  - deactivate services
  - turn off video output (optional)
  - deploy zram init file
  - activate zram
  - change tmp directories to tmpfs
  - install dropbear (optional)
  - activate dropbear (optional)
  - stop openssh (optional)
  - start dropbear (optional)
  - remove openssh (optional)
  - reboot device

