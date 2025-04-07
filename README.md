Repo to keep track of new macbook setup including fish shell and spaceship, as well as other useful tools

# install Homebrew
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

# install ghostty
`brew install ghostty`

# Install preferred font (e.g. JetBrains Mono) brew search nerd for other options
`brew install font-jetbrains-mono-nerd-font`

# Install key tools
`brew install starship fish eza bat trash nvim btop fisher fzf`

# Set up fish config
```
mkdir ~/.config
mkdir ~/.config/fish
cp config.fish ~/.config/fish/config.fish
cp starship.toml ~/.config/starship.toml
```

# Run fish
`fish`

```
fish_add_path "/opt/homebrew/bin/"
fisher install jethrokuan/z
fisher install patrickf1/fzf.fish
fisher install zzhaolei/transient.fish

fish_update_completions
```

# Set fish as default shell once you are happy with the config
```
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```
