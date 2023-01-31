### Install Nix Package Manager

curl -L https://nixos.org/nix/install | sh

### Source Nix

. ~/.nix-profile/etc/profile.d/nix.sh

### Install Packages

nix-env -iA \
	nixpkgs.zsh \
	nixpkgs.antibody \
	nixpkgs.git \
	nixpkgs.alacritty \
	nixpkgs.neovim \
	nixpkgs.tmux \
	nixpkgs.stow \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	

### Add zsh to valid login shells

command -v zsh | sudo tee -a /etc/shells

### Use zsh as default shell

sudo chsh -s $(which zsh) $USER

### Bundle zsh plugins

antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh





