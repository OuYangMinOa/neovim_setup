# Example

#### Here is my neovim setup, you can follow the instructions to achieve a similar look.

![alt text](images/image.png)

![
    oh-my-posh /w py env
](images/image-5.png)

![alt text](images/image-1.png)

![alt text](images/image-2.png)

![alt text](images/image-3.png)

![alt text](images/image-4.png)

# Download [neovim](https://neovim.io/)

- for linux

    ```bash
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim
    ```

- for window

    [link to download](https://github.com/neovim/neovim/blob/master/INSTALL.md)

# Install [ripgrep](https://github.com/BurntSushi/ripgrep)

- for linux

    ```bash
    sudo apt-get install ripgrep
    ```

- for window

    ```bash
    winget install BurntSushi.ripgrep.MSVC
    ```
# Install [npm](https://www.npmjs.com/)

#### Download [Node.js](https://nodejs.org/zh-tw/download) 

- linux

    ```bash
    curl -o- https://fnm.vercel.app/install | bash
    /root/.local/share/fnm/fnm install 22
    node -v 
    npm -v
    ```

- windows
    ```bash
    winget install Schniz.fnm
    ```
    Reopen the terminal
    ```bash
    fnm install 22
    ```
    Reopen the terminal again, check the installation
    ```bash
    node -v
    npm -v 
    ```
# Install [NerdFont](https://www.nerdfonts.com/font-downloads) for your terminal

- windows terminal
    
    Download and unzip the font ( or download [Cascadia Code NF](https://github.com/microsoft/cascadia-code/releases) here).
    
    1. unzip and right click the font.
    2. Select "Show more options".
    3. Select "Install for all users".
    4. Change the font of your terminal.

- linux
    Choose your own nerd font
    ```bash
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/officialrajdeepsingh/nerd-fonts-installer/main/install.sh)"
    ```


# Install [gcc](https://gcc.gnu.org/) and uzip

- linux 

    ```bash
    sudo apt install -y gcc unzip
    ```

- windows

    open powershell with administrative to install [chocolately](https://chocolatey.org/)
    ```bash
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    ```
    reopen powershell with administrative and install the [mingw](https://www.mingw-w64.org/)
    ```bash
    choco install mingw
    ```

# Download my neovim config

- for linux

    ```bash
    mkdir ~/.config
    cd ~/.config
    git clone https://github.com/OuYangMinOa/neovim_setup ~/.config/nvim
    ```

- for window

    ```bash
    mkdir ~/.config
    cd ~/AppData/Local
    git clone https://github.com/OuYangMinOa/neovim_setup nvim
    ```

# Open nvim

```bash
nvim .
```

# Install useful toos

* ### [FZF](https://github.com/junegunn/fzf)

    - [windows](https://sathyasays.com/2023/04/11/powershell-fzf-psfzf/)

        ```bash
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install
        ```

        Paste the below command to `~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`
        ```
        Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'
        ```
        
    - linux 
        ```bash
        git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
        ~/.fzf/install --key-bindings --completion --update-rc
        ```

- ### [Oh my posh](https://ohmyposh.dev/)

    I'm using my own scehame that modify from `armo`, you can choose your favorite in [here](https://ohmyposh.dev/docs/themes).


    - windows
        ```bash
        winget install JanDeDobbeleer.OhMyPosh -s winget
        oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\amro.omp.json" | Invoke-Expression
        ```

        Paste the below command to `~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`
        ```bash
        oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\amro.omp.json" | Invoke-Expression
        ```

        If you are using my `armo`
        ```bash
        oh-my-posh init pwsh --config "~/AppData/Local/nvim/myarmo.json" | Invoke-Expression
        ```

    - linux 
        ```bash
        curl -s https://ohmyposh.dev/install.sh | bash -s
        ```

        Run following command to add command `~/.bashrc`
        ```bash
        echo 'export PATH=$PATH:~/.local/bin' >> ~/.bashrc
        echo 'eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/amro.omp.json)"' >> ~/.bashrc
        ```

        And run
        ```bash
        source ~/.bashrc
        ```

- ### [zellij](https://zellij.dev/documentation/installation)

    - Install [rust](https://www.rust-lang.org/)
    
        ```bash
        curl https://sh.rustup.rs -sSf | bash -s -- -y
        echo 'source $HOME/.cargo/env' >> $HOME/.bashrc
        /root/.cargo/bin/cargo install --locked zellij
        ```

- ### [zoxide](https://github.com/ajeetdsouza/zoxide)

    - linux

        ```
        sudo apt install -y zoxide
        echo 'eval "$(zoxide init bash)"' >> ~/.bashrc
        ```


- ### My git config

    Paste the following content to ~/.gitconfig
    ```toml
    [alias]
        poh  = push origin HEAD
        sta  = remote -v show origin
        co   = checkout
        ci   = commit
        st   = status
        br   = branch
        c    = commit -m "update"
        ca   = "!f() { git add . && git commit -m \"update\"; }; f"
        cn   = commit --no-verify -m "update"
        cm   = commit -m
        cam  = "!f() { git add . && git commit -m \"$1\"; }; f"
        cnm  = commit --no-verify -m
        cna  = commit --no-verify -am "update" 
        cnam = commit --no-verify -am
    [color]  
        diff = auto  
        status = auto  
        branch = auto 
    [branch]  
        autosetuprebase = always

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

- Show error message `Alt-k`

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
