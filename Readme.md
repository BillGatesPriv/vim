# NeoVim

In the following file i go over shortcuts i find helpful and the plugins i have installed.
`<leader>` represents ASCII character `<space>`

## Table of contents

1. [Navigation](https://github.com/coalbl4ck/nvim#navigation)
   1. [Search](https://github.com/coalbl4ck/nvim#search)
   2. [Movement](https://github.com/coalbl4ck/nvim#movement)
   3. [Files & Buffers](https://github.com/coalbl4ck/nvim#windows)
   4. [Windows](https://github.com/coalbl4ck/nvim#tabs)
   5. [Tabs](https://github.com/coalbl4ck/nvim#tabs)
2. [Editing](https://github.com/coalbl4ck/nvim#editing)
   1. [Code Completion](https://github.com/coalbl4ck/nvim#commenting)
   2. [Git Integration](https://github.com/coalbl4ck/nvim#commenting)
   3. [Other](https://github.com/coalbl4ck/nvim#commenting)
3. [FZF](https://github.com/coalbl4ck/nvim#git-integration)
   1. [Syntax](https://github.com/coalbl4ck/nvim#vim-fugitive)
4. [Other helpful shortcuts](https://github.com/coalbl4ck/nvim#other_helpful_shortcuts)
5. [Features](https://github.com/coalbl4ck/nvim#features)
   1. [Plugins](https://github.com/coalbl4ck/nvim#plugins)

## Navigation

Tools used:
  * [RipGrep](https://github.com/BurntSushi/ripgrep)
  * [FZF](https://github.com/junegunn/fzf.vim)
  * [CoC](https://github.com/neoclide/coc.nvim)


### *Search:*

|    Shortcut     | Description                 |
|:---------------:|-----------------------------|
|  `<Leader>,>`   | Unhightlight search         |
|      `/\c`      | Ignore case while searching |
|      `/\C`      | Case sensitive search       |
| `:RooterToggle` | Toggle vim-rooter           |

### *Movement:*

|    Shortcut     | Description                 |
|:---------------:|-----------------------------|
|   `<Ctrl>+O`    | Jump to _previous_ location |
|   `<Ctrl>+I`    | Jump to _newer_ location    |
|      `gd`       | GoTo Definition             |
|      `gD`       | GoTo Declaration            |
|      `gY`       | GoTo Type-Definition        |
|      `gi`       | GoTo Implementation         |
|      `gr`       | GoTo References             |
| `<leader>+<F3>` | Open CoC-Menu               |

### *Files & Buffers:*

> A buffer is a in-memory text file

|   Shortcut   | Description                              |
|:------------:|------------------------------------------|
|  `<Ctrl>+g`  | RipGrep contents of files under vim_root |
| `<Leader>+g` | RipGrep contents of open buffers         |
|  `<Ctrl>+p`  | RipGrep files under vim_root             |
| `<Leader>+p` | RipGrep open buffers                     |
|              |                                          |

### *Windows:*

> A window is a viewport on a buffer.
> You can have multiple windows opened aswell as multiple windows displaying !one buffer.
> :h split

|     Shortcut     | Description                             |
|:----------------:|-----------------------------------------|
|   `<Ctrl-w>+v`   | Opens new *vertical* split              |
|   `<Ctrl-w>+s`   | Opens new *horizontal* split            |
|   `<Ctrl-w>+c`   | Closes window                           |
|   `<Ctrl-w>+o`   | Closes other window                     |
|   `<Ctrl-w>+r`   | Swap the two buffers                    |
|   `<Ctrl-w>+H`   | Go from *Horizontal* to Vertical Layout |
|   `<Ctrl-w>+J`   | Go from *Vertical* to Horizontal Layout |
| `<Ctrl>+h/j/k/l` | Navigate windows                        |
|    `<Ctrl>+s`    | Swap windows                            |
|   `<C-S-Left>`   | Decrease size of vertical split         |
|  `<C-S-Right>`   | Increase size of vertical split         |
|   `<C-S-Down>`   | Decrease size of vertical split         |
|    `<C-S-Up>`    | Increase size of vertical split         |

### *Tabs:*

> A tab is a collection of windows simmillar to a workspace.
> Tabs can be used for different projects/ units that must be managed at the same time but have a small overlap.

|     Shortcut     | Description               |
|:----------------:|---------------------------|
| `:tabnem <file>` | Opens a file in a new tab |
|   `:tabclose`    | Close current tab         |
|       `gt`       | Go to next tab            |
|       `gT`       | Go to previous tab        |
|  `:tabfind <>`   | Find tab by name          |

## Editing

Tools used:

* [CoC](https://github.com/neoclide/coc.nvim)
* [GitGutter](https://github.com/airblade/vim-gitgutter)
* [Fugitive](https://github.com/tpope/vim-fugitive)

### *Code Completion:*

|     shortcut     | description                       |
|:----------------:|-----------------------------------|
| `<Ctrl>+<space>` | Autocomplete/ Show error message  |
|   `<leader>+r`   | Rename                            |
|    `<Ctrl>+e`    | Close autocomplete pum            |
|       `K`        | Show documentation                |

### *Git integration:*

|   shortcut   | description                    |
|:------------:|--------------------------------|
| `:git blame` | Git blame                      |
| `[c` / `]c`  | Jump between uncommitted hunks |
| `<leader>hp` | Preview hunk                   |
| `<leader>hu` | Undo hunk                      |
| `<leader>hs` | Stage hunk                     |


### *Other:*

|   shortcut    | description |
|:-------------:|-------------|
| `<visual>+ ~` | Invert size |
|     `za`      | Toggle fold |

## fzf

> Fast fuzzfy finder to find your way around your project

Tools used:

* [RipGrep](https://github.com/BurntSushi/ripgrep)

Most commands support
* `CTRL-T` to open in _*new tab*_
* `CTRL-X` to open in _*new split*_
* `CTRL-V` to open in _*new vertical split*_

|   Shortcut   | Description            |
|:------------:|------------------------|
| `<Ctrl>+P/J` | Move cursor up or down |
|  `<Ctrl>+c`  | Exit                   |

### *Syntax:*

| Shortcut  | Match type                 | Description                          |
|:---------:|----------------------------|--------------------------------------|
| `sbtrkt`  | fuzzy-match                | Items that match `sbtrkt`            |
|  `'wild`  | exact-match (quoted)       | Items that include `wild`            |
| `^music`  | prefix-exact-match         | Items that start with `music`        |
|  `.mp3$`  | suffix-exact-match         | Items that end with `.mp3`           |
|  `!fire`  | inverse-exact-match        | Items that do not include `fire`     |
| `!^music` | inverse-prefix-exact-match | Items that do not start with `music` |
| `!.mp3$`  | inverse-suffix-exact-match | Items that do not end with `.mp3`    |

## Rooter

shortcut | description
---|---
`:RooterToggle` | Toggle vim-rooter

## Other helpful shortcuts

shortcut | description
---|---
`~+h/j/k/l` | Invert size

## Features (Planned or Implemented)

- [x] [Conquer of Completion](https://github.com/neoclide/coc.nvim)
  - Auto-Complete
  - Linting and Diagnostics
  - Matching pair managment
  - Workspace rooting
- [x] Syntax highlighting via
  - [gruvbox](https://github.com/gruvbox-community/gruvbox) for jsx, tex, typescript, cpp
  - [vim-polygot](https://github.com/sheerun/vim-polygot)
  - [typescript](https://github.com/leafgarland/typescript-vim)
  - [c++](https://github.com/bfrg/vim-cpp-modern)
- [x] Vim Look & Feel
  - Statusline via [lightline](https://github.com/itchyny/lightline.vim)
  - Bufferline functionality for lightline via [lightline-bufferline](https://github.com/mengelbrecht/lightline-bufferline). Set to display open buffers.
- [x] Smooth scrolling via [vim-smoothie](https://github.com/psliwka/vim-smoothie)
- [x] Git integration via
  - [vim-fugitive](https://github.com/tpope/vim-fugitive) to replace git with vim
  - [vim-gitgutter](https://github.com/airblade/vim-gitgutter) for combinig the coding-git workflow
- [x] Simple commenting via [vim-commentary](https://github.com/tpope/vim-commentary)
- [x] Automatic tab adjustment via [vim-sleuth](https://github.com/tpope/vim-sleuth)
- [x] Search via [fzf](https://github.com/coalbl4ck/nvim/blob/master/core/plugins.vim)
  - Search in open buffers/ files under project root
  - Search open buffers/ files under project root
- [x] Vim sugar for the UNIX shell commands with [Vim-Eunuch](https://github.com/tpope/vim-eunuch)
- [ ] Debugging via [vimspector](https://github.com/puremourning/vimspector)
- [ ] Fast buffer jump via [vim-sneak](https://github.com/justinmk/vim-sneak).
- [ ] LaTeX editing via [vimtex](https://github.com/lervag/vimtex)[^1].
- [ ] Ultra fast snippet insertion via [Ultisnips](https://github.com/SirVer/ultisnips).
- [ ] Tags navigation via [vista](https://github.com/liuchengxu/vista.vim).
- [ ] Fuzzy searching in current project quickly via [LeaderF](https://github.com/Yggdroot/LeaderF)
- [ ] Asynchronous code execution via [asynrun.vim](https://github.com/skywind3000/asyncrun.vim)

### Plugins

* [gruvbox-community/gruvbox](https://github.com/gruvbox-community/gruvbox)
* [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot)
* [leafgarland/typescript-vim](https://github.com/leafgarland/typescript-vim)
* [bfrg/vim-cpp-modern](https://github.com/bfrg/vim-cpp-modern)
* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim)
* [mengelbrecht/lightline-bufferline](https://github.com/mengelbrecht/lightline-bufferline)
* [psliwka/vim-smoothie](https://github.com/psliwka/vim-smoothie)
* [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim)
* [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
* [tpope/vim-sleuth](https://github.com/tpope/vim-sleuth)
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
* [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [puremourning/vimspector](https://github.com/puremourning/vimspector)
* [airblade/vim-rooter](https://github.com/airblade/vim-rooter)
* [junegunn/fzf](https://github.com/junegunn/fzf)
* [junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)
* [vim-eunuch](https://github.com/tpope/vim-eunuch)

For reference:

* [jdaho/nvim-config](https://github.com/jdhao/nvim-config)
