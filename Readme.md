# NeoVim

In the following file i go over shortcuts i find helpful and the plugins i have installed.
`<leader>` represents ASCII character `<space>`

## Table of contents

1. [Navigation](https://github.com/coalbl4ck/nvim#navigation)
   1. [General](https://github.com/coalbl4ck/nvim#general)
   2. [Buffers](https://github.com/coalbl4ck/nvim#buffers)
   3. [Windows](https://github.com/coalbl4ck/nvim#windows)
   4. [Tabs](https://github.com/coalbl4ck/nvim#tabs)
2. [Editing](https://github.com/coalbl4ck/nvim#editing)
   1. [Commenting](https://github.com/coalbl4ck/nvim#commenting)
3. [Git Integration](https://github.com/coalbl4ck/nvim#git-integration)
   1. [vim-fugitive](https://github.com/coalbl4ck/nvim#vim-fugitive)
   2. [vim-gitgutter](https://github.com/coalbl4ck/nvim#vim-gitgutter)
4. [CoC](https://github.com/coalbl4ck/nvim#coc)
5. [Other helpful shortcuts](https://github.com/coalbl4ck/nvim#other_helpful_shortcuts)
6. [Features](https://github.com/coalbl4ck/nvim#features)
   1. [Plugins](https://github.com/coalbl4ck/nvim#plugins)

## Navigation

> Helpful Resources.[^1]

### General

Shortcut | Description
:----:        | :---
`<Leader>,>`  | unhighlight search
`<Leader>w>`  | :w
`<Leader>q>`  | :q
`<Insert>jj`  | Esc
`<Ctrl>+O`    | Jump forward to *older* location
`<Ctrl>+I`    | Jump forward to *newer* location
`/\c`         | Ignore case when searching (default)
`/\C`         | Case sensitive search

### Buffers

> A buffer is the in-memory text file.

Shortcut | Description
:----:        | :---
`gl` | List all buffers
`gb` | List all buffers and select buffer
`gp` | Move to *previous* buffer
`gn` | Move to *next* buffer
`gk`  | Kill *current* buffer

### Windows

> A window is a viewport on a buffer.
> You can have multiple windows opened aswell as multiple windows displaying !one buffer.
> :h split

Navigation:

Shortcut | Description
:----:        | :---
`<Ctrl-w>+v`  | Opens new *vertical* split
`<Ctrl-w>+s`  | Opens new *horizontal* split
`<Ctrl-w>+c`  | Closes window
`<Ctrl-w>+o`  | Closes other window
`<Ctrl-w>+r`  | Swap the two buffers
`<Ctrl-w>+H`  | Go from *Horizontal* to Vertical Layout
`<Ctrl-w>+J`  | Go from *Vertical* to Horizontal Layout
`<Ctrl>+h/j/k/l`  | Navigate windows
`<Ctrl>+s`    | Swap windows

Layout:

Shortcut | Description
:----:        | :---
`:vsp <file>` | New *vertical* split
`:sp <file>`  | New *horizontal* split

### Tabs

> A tab is a collection of windows simmillar to a workspace.
> Tabs can be used for different projects/ units that must be managed at the same time but have a small overlap.

Shortcut | Description
:----:           | :---
`:tabnem <file>` | Opens a file in a new tab
`:tabclose`      | Close current tab
`gt`             | Go to next tab
`gT`             | Go to previous tab
`:tabfind <>`    | Find tab by name

[^1]: [Using buffers, windows and tabs efficiently in Vim](https://dev.to/iggredible/using-buffers-windows-and-tabs-efficiently-in-vim-56jc)

## Editing

### Commenting

Shortcut | Description
:----:        | :---
`gcc` | Comment line
`gc`  | Comment visualized lines

## Git Integration

### vim-fugitive

shortcut | description
---|---
`:git blame` | git blame file

### vim-gitgutter

Shortcut | Description
---|---
`[c`/ `]c]`  | Jump between hunks
`<leader>hp` | Peview of hunk
`<leader>hs` | Stage hunk
`<leader>hu` | Undo hunk

## CoC

> Conquer of Completion
> :h coc-nvim

Global range:

shortcut | description
---|---
`gd` | Goto Definition
`gD` | Goto Declaration
`gY` | Goto Type-Definition
`gi` | Goto Implementation
`gr` | Goto References
`<leader>+<F3>` | Open coc-Menu

Code editing:

shortcut | description
---|---
`<Ctrl>+<space>` | Autocomplete/ Show error message
`<Ctrl>+e`       | Close autocomplete pum
`K`              | Show documentation
`<leader>+r`     | Rename

## fzf

> Fast fuzzfy finder to find your way around your project

[bat](https://github.com/sharkdp/bat) for syntax highlighted preview
[ripgrep](https://github.com/BurntSushi/ripgrep) a grep alternative
.. and some other features

Trigger:

shortcut | description
---|---
`<Ctrl>+g`        | RipGrep contents of files
`<Leader>+g`      | RipGrep contents of buffers
`<Ctrl>+p`        | RipGrep files
`<Leader>+p`      | RipGrep buffers
`<Ctrl>+c`        | RipGrep available commands

> Most commands support `CTRL-T` / `CTRL-X` / `CTRL-V` to open in *new tab* / *new split* / *new vertical split*

Navigation:

shortcut | description
---|---
`<Ctrl>+P/J` | Move cursor up or down
`<Ctrl>+c`   | Exit

Syntax:

| Token     | Match type                 | Description                          |
| --------- | -------------------------- | ------------------------------------ |
| `sbtrkt`  | fuzzy-match                | Items that match `sbtrkt`            |
| `'wild`   | exact-match (quoted)       | Items that include `wild`            |
| `^music`  | prefix-exact-match         | Items that start with `music`        |
| `.mp3$`   | suffix-exact-match         | Items that end with `.mp3`           |
| `!fire`   | inverse-exact-match        | Items that do not include `fire`     |
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
- [ ] Search via [fzf](https://github.com/coalbl4ck/nvim/blob/master/core/plugins.vim)
- [ ] Debugging via [vimspector](https://github.com/puremourning/vimspector)
- [ ]
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

For reference:

* [jdaho/nvim-config](https://github.com/jdhao/nvim-config)
