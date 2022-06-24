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
mkdir -p ~/.config/brewfile/
cat <<EOF > ~/.config/brewfile/Brewfile
#HomeBrew Taps
tap homebrew/core
tap homebrew/bundle
tap homebrew/cask-fonts
tap homebrew/services
tap homebrew/cask
tap cloudflare/cloudflare
tap microsoft/git
tap minio/stable
tap rcmdnk/file
brew ca-certificates
brew cfssl
brew curl
brew gettext
brew helm
brew htop
brew ipmitool
brew jq
brew kubectx
brew kubernetes-cli
brew mas
brew mkcert
brew mtr
brew python@3.8
brew telnet
brew tig
brew tmux
brew telnet
brew tree
brew velero
brew wget
brew yq
#Casks
cask dbeaver-community
cask iterm2
cask firefox
cask google-chrome
#cask git-credential-manager-core # not working on M1
cask spotify
cask rectangle
cask visual-studio-code
cask zoom
#Mac App Store
appstore 937984704   Amphetamine
appstore 1295203466  Microsoft Remote Desktop
appstore 425424353   The Unarchiver
EOF

brew file install
```

Add vscode-extensions
```bash
cat <<EOF > ~/.vscode-extensions
42Crunch.vscode-openapi
Arjun.swagger-viewer
arturbelico.code-sum-up
caarlos0.language-prometheus
denco.confluence-markup
felipe.nasc-touchbar
ivory-lab.jenkinsfile-support
janjoerke.jenkins-pipeline-linter-connector
marp-team.marp-vscode
MellowMarshmallow.groovy
ms-azuretools.vscode-docker
ms-kubernetes-tools.vscode-kubernetes-tools
ms-python.python
ms-toolsai.jupyter
ms-toolsai.jupyter-keymap
ms-toolsai.jupyter-renderers
ms-vscode-remote.remote-containers
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-ssh-edit
ms-vscode-remote.remote-wsl
ms-vscode-remote.vscode-remote-extensionpack
NicolasVuillamy.vscode-groovy-lint
PascalReitermann93.vscode-yaml-sort
PKief.material-icon-theme
redhat.ansible
redhat.vscode-commons
redhat.vscode-yaml
tht13.html-preview-vscode
wholroyd.jinja
EOF
for extension in $(cat ~/.vscode-extensions); do code --install-extension $extension; done
```

Install oh-my-zsh:
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

```

Install iTerm2 integration

```bash
curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
```

Make it default shell: https://stackoverflow.com/a/61265115


