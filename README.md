# My Dev Environment Config

**IMPORTANT :** This is my environment config, don't copy blindly and adjust to your liking.

<details><summary> MacOS & Linux </summary>

```
git clone https://github.com/julienbarthelemy/dot-files.git "${XDG_CONFIG_HOME:-$HOME/.config}"
```

</details>
<details><summary> Windows </summary>

```
git clone git clone https://github.com/julienbarthelemy/dot-files.git $env:USERPROFILE\.config"
```

</details>

### Setup Requires

- [Neovim](https://neovim.io/) - (Version 0.9 or Later)
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder
- [Oh-My-Posh](https://ohmyposh.dev/docs/) - Terminal UI improvements
- [Iosevka](https://github.com/be5invis/Iosevka) - I use Iosevka Custom as a font, you have to build yourself

# Terminal Setup

I use [Wezterm](https://wezfurlong.org/wezterm/index.html) as it is a crossplatform emulator, you can also use Ghostty which is popular.
I also use Oh-My-Posh for the UI, refer to the docs to install

For the [WeztermConfig](https://github.com/julienbarthelemy/dot-files/blob/main/wezterm/wezterm.lua), I use almost exactly Tmux remaps and a few settings for the size and the styling

<details><summary> Windows </summary>

This is to add in your Powershell *$PROFILE* on Windows to ensure redirection to the `.config` directory
It is not necessary on any Unix based OS

```
$env:TERM='xterm-256color'
$env:XDG_CONFIG_HOME = "$HOME/.config"
```

</details>

<details><summary> Faster cd </summary>

Quick tip, you can speed up your workflow with [fzf](https://github.com/junegunn/fzf) and [fd](https://github.com/sharkdp/fd?tab=readme-ov-file#installation) and these commands on your `$PROFILE`

```
function find_fast { (cd ~) -or (cd $(fd --type d --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf)) }
Set-Alias f find_fast
```

or with Bash *no need to install fd*

```
alias f='cd ~ && cd $(find ~/code --hidden --exclude .git --exclude node_module --exclude .cache --exclude .npm --exclude .mozilla --exclude .meteor --exclude .nv | fzf)'
```
</details>

# Neovim Setup

I use [Neovim](https://neovim.io/) instead of Vim as I find it easier to use LUA. You can achieve the same with VIM.
I use the default Node installation with nvm.
My colorscheme is [RosePrime](https://github.com/cdmill/neomodern.nvim) which I modified a bit, for both the terminal and Neovim

- [Node.js](https://nodejs.org/en/download/package-manager/current) - Node install guide

<details><summary> Ubuntu </summary>

Install and update all requirements.
```bash
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt upgrade
sudo apt install make gcc ripgrep unzip git neovim
```

</details>

<details><summary> MacOS </summary>

```bash MacOS
brew install neovim git ripgrep
```

</details>

## Plugins

I don't use that many plugins, most of them are quality of life.
The most important ones are : 

- LSP Setup *(Use LSP Zero for a quicker configuration)* 
- Telescope
- Treesitter
- Neogit
- Trouble

#### Plugin Manager

- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) - Amazing plugin manager

#### Dependency For Other Plugins

- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

#### Neovim Greeter

- [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim)

#### Status Line

- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

#### Fuzzy Finder

- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder

#### Autocompletion

- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion plugin
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - Completion source for text in current buffer
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) - Completion source for file system paths

#### Snippets

- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Useful snippets for different languages
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - Completion source for snippet autocomplete

#### Managing & Installing Language Servers

- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)

#### LSP Configuration

- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Bridges gap b/w mason & lspconfig
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Easy way to configure lsp servers
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Smart code autocompletion with lsp

#### Treesitter Syntax Highlighting, Autoclosing & Text Objects

- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Treesitter configuration
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autoclose brackets, parens, quotes, etc...
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Autoclose tags

#### Utils

- [folke/trouble.nvim](https://github.com/folke/trouble.nvim) - Solve the troubles
- [NeogitOrg](https://github.com/NeogitOrg/neogit) - Git integration *can also use Fugitive*
