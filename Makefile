config: execute
	# echo "\n\nDOTFILES=${DOTFILES}" >> bashrc
	echo "\n\nDOTFILES=${DOTFILES}" >> config.sh
	# echo "\n\nDOTFILES=${DOTFILES}" >> zshrc
	./config.sh

execute:
	chmod +x config.sh
	chmod +x install.sh
	chmod +x scripts/gitsync.sh
	chmod +x zsh_prompt.sh
	chmod +x shell_alias.sh
	chmod +x shell_functions.sh