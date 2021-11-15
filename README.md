# dotfiles

## Requirements

* [Kitty](https://sw.kovidgoyal.net/kitty/index.html) terminal
  * Install Ubuntu: `sudo apt install kitty kitty-terminfo`
  * [Configuring](https://sw.kovidgoyal.net/kitty/conf.html)
* [Fira Code](https://github.com/tonsky/FiraCode) font
  * Install Ubuntu: `sudo apt install fonts-firacode`
* [tmux](https://github.com/tmux/tmux)

## Command Reference

### Ubuntu

* Switch desktop workspaces: <kbd>Ctrl + Alt</kbd> <kbd>Up/Down</kbd>
* Move focused window to different workspace: <kbd>Ctrl + Alt + Shift</kbd> <kbd>Up/Down</kbd>

### Kitty

See [Kitty overview](https://sw.kovidgoyal.net/kitty/overview/).

* New tab: <kbd>Ctrl + Shift + t</kbd>
* Change tab: <kbd>Ctrl + Shift</kbd> <kbd>Left/Right</kbd>
* Close tab: <kbd>Ctrl + Shift + q</kbd>

### Tmux

See [tmux cheatsheet](https://tmuxcheatsheet.com/).

* New session: `tmux new -s <name>`
* Attach session: `tmux attach -t <name>`
* Detach session: <kbd>Ctrl + b</kbd> <kbd>d</kbd>
* Create window: <kbd>Ctrl + b</kbd> <kbd>c</kbd>
* Rename current window: <kbd>Ctrl + b</kbd> <kbd>,</kbd>
* Select window number: <kbd>Ctrl + b</kbd> <kbd>0...9</kbd>
* Split pane horizontally: <kbd>Ctrl + b</kbd> <kbd>%</kbd>
* Split pane vertically: <kbd>Ctrl + b</kbd> <kbd>"</kbd>
* Switch pane: <kbd>Ctrl + b</kbd> <kbd>Up/Down/Left/Right</kbd>
* Resize pane: <kbd>Ctrl + b</kbd> <kbd>Ctrl + Up/Down/Left/Right</kbd>
* Close pane: <kbd>Ctrl + b</kbd> <kbd>x</kbd>
* Copy mode: <kbd>Ctrl + b</kbd> <kbd>[</kbd>

### Vim
* Start: `vim`
* Open buffer: `:e path/to/file`
* List buffers: `:ls`
* Display buffer: `:b[buffer number]`
* Close buffer: `:bd`
* Write: `:w`
* Quit: `:q`
* Write and quit: `:wq`
* Jump to end of file: `:$`

### Git
* Search code: `git grep [-NUM] <pattern> [path/to/search]`
    * `-NUM` specify number of context lines to show before and after match.
    * `gg <pattern> [path/to/search] [NUM]` alias for `git grep [-NUM] <pattern> [path/to/search]`
        * Default `n=5`, `path/to/search=.`
        * `gg <pattern> "" 7`: use default path but modify context number

### Hoogle
* Generate stackage database: `hoogle generate`
* Generate local database:
```bash
cabal haddock <project> --haddock-hoogle
hoogle generate --local=.
```
* Search: `hoogle <pattern>`
    * `hs pattern` alias: `hoogle <pattern> | less -Sc`
