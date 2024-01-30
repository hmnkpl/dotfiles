## dotfiles

install homebrew.

### chezmoi

```sh
brew install chezmoi
chezmoi init git@github.com:hmnkpl/dotfiles.git

chezmoi apply
```

## operation

### mise
```sh
mise use java
mise use go
mise use node
```

### git
```sh
touch ~/.gitconfig.local
```

```toml
[user]
	name = <myname>
	email = <myemail>
```

### homebrew

```sh
# output current file
brew bundle dump --global --force
```
