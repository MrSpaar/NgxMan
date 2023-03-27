# Nginx Manager

Nginx Manager is a bash script that allows you to manage your Nginx server.<br>
Usage : `nginx_manager [enable|disable|nano|delete|ls|cat] <...files>`

To install the script, just run `install.sh`.<br>
The script also enables auto-completion for bash.

## Commands

- `enable` : Create symlinks in `/etc/nginx/sites-enabled` and reload Nginx
- `disable` : Remove symlinks in `/etc/nginx/sites-enabled` and reload Nginx
- `nano` : Modify or create configurations with nano and reload Nginx
- `delete` : Delete configurations and symlinks and reload Nginx
- `ls` : List configurations in `/etc/nginx/sites-available` and `/etc/nginx/sites-enabled`
- `cat` : Display the content of a configuration file
