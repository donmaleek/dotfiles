#!/bin/bash

echo "🚀 Installing essential tools..."
sudo apt update && sudo apt install -y zsh git curl fzf exa bat

echo "📦 Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "🔌 Installing Zsh plugins..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

echo "✨ Installing Starship..."
curl -sS https://starship.rs/install.sh | sh

echo "⚙️  Linking dotfiles..."
ln -sf ~/.dotfiles/.zshrc ~/.zshrc
mkdir -p ~/.config && ln -sf ~/.dotfiles/.config/starship.toml ~/.config/starship.toml

echo "🔄 Reloading Zsh..."
exec zsh

