Install xcode cli utils:

```bash
sudo /usr/bin/xcode-select --install
```

Install brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```bash
brew tap tap rcmdnk/file
brew install rcmdnk/file/brew-file
```

Add default apps

```bash
brew file set_repo -r git@github.com:marthydavid/dotfiles.git
brew file pull
brew file install
```

Add vscode-extensions
```bash
for extension in $(cat ~/.config/brew/file/.vscode-extensions); do code --install-extension $extension; done
```

Install oh-my-zsh:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

```

Install iTerm2 integration

```bash
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
```

Make it default shell: https://stackoverflow.com/a/61265115


