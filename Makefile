# Makefile

config: execute
	./install.sh
	./config.sh

execute:
	chmod +x config.sh
	chmod +x install.sh
	chmod +x update.sh
