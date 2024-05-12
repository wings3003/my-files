mariadb is drop in replacement for mysql in Arch

install mariadb through pacman
run a commend form arch wiki to create root user and change mysql sockets
run mariadb as root for first time
run secure mariadb command from arch wiki to initialize mariadb
create new user for mariadb (only use that user for all db applications, do not use root after that)
grant all permissions to new user (command is i arch wiki)
crate database
launch mariadb with new user 
	# mariadb -u user_name -p database name
initiation is done.

in VS code install two extensions **"SQLTools"** and **"SQLTools MySQL/MariaDB"** (driver)

connect to your server in vscode with created user, use "plaintext password" method
we are now connected to our database in vscode
