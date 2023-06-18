# Makefile

config: execute
	./scripts/install.sh
	./scripts/config.sh

execute:
	chmod +x ./scripts/config.sh
	chmod +x ./scripts/install.sh
	chmod +x ./scripts/update.sh
