# miniVim

Hey! This is a Neovim config that's lean, minimal, and ready to be extended.

The objective for this config is to act as a rock-solid base for your own Vim config!

You'll be able to extend this config with no issues, and avoid typing out the boilerplate.


## Installation

* Neovim >= 0.8
* NPM

```
    if [ -d ~/.config/nvim ]; then mv ~/.config/nvim ~/.config/backup_nvim fi
    git clone https://github.com/bbambozzi/minivim ~/.config/nvim --depth 1 --branch main --single-branch
```

## Plugins and hotkeys

#### Works out of the box, no config needed!

- LSP pre-configured.

- Auto-formatting pre-configured.

- Autopairs pre-enabled.

- Relative line numbers pre-enabled.

- Unlimited undo history.

- Toggleable console with (Alt + 1).

- Minimal, lean, ready to be extended.

### Important hotkeys to know

| Action            | Hotkey        |
| ----------------- | ------------- |
| `Toggle Nvimtree` | (Space + e)   |
| `Quicksave`       | (Space + w)   |
| `Quick Exit`      | (Space + q)   |
| `Toggle Terminal` | (Alt + 1)     |
| `Format File`     | (Space + f)   |
| `New Tab`         | (Space + t)   |
| `Change Tab`      | (g + t)       |
| `Change to N tab` | (_N_ + g + t) |

#### Telescope: Finding make easy!

| Action                | Hotkey          |
| --------------------- | --------------- |
| `Search all files`    | (Space + f) |
| `Search files in Git` | (Space + g) |
| `Grep String `        | (Space + p + s) |

