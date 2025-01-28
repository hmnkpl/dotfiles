## dotfiles

install homebrew.

### github

```sh
ssh-keygen -t rsa
pbcopy < ~/.ssh/id_rsa.pub
```

### chezmoi

```sh
/opt/homebrew/bin/brew install chezmoi
/opt/homebrew/bin/chezmoi init git@github.com:hmnkpl/dotfiles.git

/opt/homebrew/bin/chezmoi apply
```

## operation

### git
```sh
touch ~/.gitconfig.local
```

```toml
[user]
	name = <my-name>
	email = <my-email>
```

### homebrew

```sh
# output current file
brew bundle dump --global --force

# install based on .Brewfile
brew bundle --global
```

### やること

- spotlightをオフにする
- デフォルトブラウザを変える
- Warp
  - Show / Hide WindowのHotkeyを設定する
  - ※ 同じHotkeyでRaycastにも設定する
  - Transparency を70%にする
- logicool optionsをインストール
- キーボードのショートカットでctrlとcmdを入れ替える
