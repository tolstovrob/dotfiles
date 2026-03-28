dotfiles_dir := justfile_directory()

# Show help
default:
    @just --list

# Link dotfiles to .config directory
link:
    @echo "Linking dotfiles..."
    @ln -sfn {{dotfiles_dir}}/ghostty/ ~/.config/ghostty
    @ln -sfn {{dotfiles_dir}}/vim/ ~/.config/vim
    @ln -sfn {{dotfiles_dir}}/.zshrc ~/.zshrc
    @echo "Done!"

# Remove all symlinks from .config
unlink:
    @echo "Removing symlinks..."
    @rm -rf ~/.config/ghostty
    @rm -rf ~/.config/vim
    @rm -f ~/.zshrc
    @echo "Done!"

# Clean up and re-link all configurations
relink: unlink link
    @echo "Re-linked all dotfiles!"