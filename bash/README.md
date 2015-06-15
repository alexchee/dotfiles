# bash
Stuff for bash.

## Install
Copy these to your home (`~`) directory.

## Install for me
Just for me, unless you're crazy enough to use my configs without reading them first.

Initial setup:
```
curl https://raw.githubusercontent.com/alexchee/dotfiles/master/bash/.bash_profile > ~/.bash_profile
```

Add Personal aliases and ENVs:
```
cat personal_bash_profile >> ~/.bash_profile
```

.rbenv setup
```
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
```
