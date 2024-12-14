# Download neovim

- for linux

    ```bash
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim
    ```

- for window

    [link to download](https://github.com/neovim/neovim/blob/master/INSTALL.md)

# Install ripgrep

- for linux

    ```bash
    sudo apt-get install ripgrep
    ```

- for window

    ```bash
    winget install BurntSushi.ripgrep.MSVC
    ```

# Usage

- for linux

    ```bash
    git clone https://github.com/OuYangMinOa/neovim_setup ~/.config/nvim
    ```

- for window

    ```bash
    git clone https://github.com/OuYangMinOa/neovim_setup ~/AppData/Local/nvim
    ```

# Short key

- Swap lines `Alt + up` `Alt+down`

- Comment line `CTRL + /`

- Search words in a file `CTRL + f`

- Search word in a project `CTRL + H`, *required a ripgrep*

- Save `CTRL + s`

- Add `output=` in code ->  `Alt + o`

- Move up down `CTRL + up/downright/left/h/l` (`CTRL + j/k` have another binding)

- Back to last cursor position `Alt + right/left`

- Go to definition `f12`

- Rename variables `f2`

- Fold with level `CTRL + k + 0~4` will fold indent with 0~4 level

- Unfold all `CTRL + k + CTRL + j `

- Fold/unfold this line `zc zr`x

- Toggle file tree `CTRL + b`

- Toggle terminal `CTRL + \`

- Telescope `CTRL + p`

- Telescope undo tree `Alt + e`

- harpoon add file `Alt + a`

- harpoon show files `ALT + f`

- harpoon move `Alt + ]` or `Alt + [`