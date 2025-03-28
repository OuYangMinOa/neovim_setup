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
# Install npm

#### Download node [link](https://nodejs.org/zh-tw/download) 

- linux

    ```
    curl -o- https://fnm.vercel.app/install | bash
    fnm install 22
    node -v 
    npm -v
    ```

- windows
    ```
    winget install Schniz.fnm
    ```
    Reopen the terminal
    ```
    fnm install 22
    ```
    Reopen the terminal again, check the installation
    ```
    node -v
    npm -v 
    ```

# Install gcc

- linux 

    ```
    sudo apt install gcc
    ```

- windows

    open powershell with administrative
    ```
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    ```
    reopen powershell with administrative and install the mingw
    ```
    choco install mingw
    ```

# Download my neovim config

- for linux

    ```bash
    cd ~/.config
    git clone https://github.com/OuYangMinOa/neovim_setup nvim
    ```

- for window

    ```bash
    cd ~/AppData/Local
    git clone https://github.com/OuYangMinOa/neovim_setup nvim
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

- file tree

    - Toggle file tree `CTRL + b`

    - file tree help `?`

    - expand all `CTRL + Alt + e`

- Toggle terminal `CTRL + \`

- Telescope `CTRL + p`

- Telescope undo tree `Alt + e`

- harpoon add file `Alt + a`

- harpoon show files `ALT + f`

- harpoon move `Alt + ]` or `Alt + [`
