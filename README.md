# Nginx Manager

Nginx Manager is a bash script that allows you to manage your Nginx server.
Usage : `nginx_manager [enable|disable|nano|delete|ls|cat] <...files>`

To install the script, just run `install.sh`.
The script also enables auto-completion for bash.

## Commands

- `enable` : Create symlinks to the files in `/etc/nginx/sites-enabled` and reload Nginx
- `disable` : Remove the symlinks in `/etc/nginx/sites-enabled` and reload Nginx
- `nano` : Modify or create the files with nano and reload Nginx
- `delete` : Delete the files and symlinks and reload Nginx
- `ls` : List the files in `/etc/nginx/sites-available` and `/etc/nginx/sites-enabled`
- `cat` : Display the content of the files
