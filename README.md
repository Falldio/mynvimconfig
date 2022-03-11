# <center>My NeoVim</center>
> Yet another [`NeoVim`](https://github.com/neovim/neovim) configuration~

> Basic Vim guidance should be found [here](http://www.oualline.com/vim-cook.html)!
```
__   __    _       _  __     _
\ \ / /__ | | ___ | |/ /___ | | ___   _ _ __ __ _
 \ V / _ \| |/ _ \| ' // _ \| |/ / | | | '__/ _` |
  | | (_) | | (_) | . \ (_) |   <| |_| | | | (_| |
  |_|\___/|_|\___/|_|\_\___/|_|\_\\__,_|_|  \__,_|

```
[TOC]

# Key bindings
> This chapter gives a summary of custom key bindings, click [here](./init.vim) for more detailed information.
## Cursor Control (Normal & Visual)
|               Key               | Control                                        |
|:-------------------------------:|------------------------------------------------|
|   <kbd>h</kbd> / <kbd>H</kbd>   | left                                           |
|   <kbd>l</kbd> / <kbd>L</kbd>   | right                                          |
|   <kbd>j</kbd> / <kbd>J</kbd>   | down                                           |
|   <kbd>k</kbd> / <kbd>K</kbd>   | up                                             |
|   <kbd>w</kbd> / <kbd>W</kbd>   | move cursor to the next (10) word              |
|   <kbd>b</kbd> / <kbd>B</kbd>   | move cursor to the front (10) word             |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>  | move cursor to the first charactor of the line |
| <kbd>Ctrl</kbd> + <kbd>l</kbd>  | move cursor to the last charactor of the line  |
|   <kbd>g</kbd> + <kbd>g</kbd>   | top of the file                                |
|          <kbd>G</kbd>           | bottom of the file                             |
| <kbd>Ctrl</kbd> + <kbd>o</kbd>  | move cursor backward, kind of like undo        |
| <kbd>Ctrl</kbd> + <kbd>i</kbd>  | move cursor foreward, kind of like redo        |
| <kbd>Space</kbd> + <kbd>s</kbd> | quick select text objects                      |

## General Commands
|                       Key                        | Control                                                          |
|:------------------------------------------------:|------------------------------------------------------------------|
|                   <kbd>o</kbd>                   | add a new line below the current line and switch to Insert mode  |
|                   <kbd>O</kbd>                   | add a new line above the current line and switch to Insert mode  |
|                   <kbd>A</kbd>                   | append the current line                                          |
|                   <kbd>I</kbd>                   | insert at the start of the current line                          |
|                   <kbd>Q</kbd>                   | quit NeoVim                                                      |
|                   <kbd>S</kbd>                   | save file                                                        |
|                   <kbd>R</kbd>                   | reload `init.vim`                                                |
|                   <kbd>T</kbd>                   | open `tagbar` to view code structure                             |
|     <kbd>:</kbd> + <kbd>e</kbd> + `filepath`     | open file                                                        |
|           <kbd>g</kbd> + <kbd>f</kbd>            | open file at the path where cursor is pointing at                |
|           <kbd>z</kbd> + <kbd>z</kbd>            | set the current line to the center of the screen                 |
| <kbd>:</kbd> + <kbd>%</kbd> + <kbd>Tohtml</kbd>  | export current file as a html file (so you can save it PDF, etc) |
| <kbd>m</kbd> + <kbd>p/<kbd>                      | markown preview                                                  |
| <kbd>F1</kbd>                                    | toggle undotree                                                  |

## Code Reformat
|                      Key                       | Control                       |
|:----------------------------------------------:|-------------------------------|
| <kbd>Space</kbd> + <kbd>s</kbd> + <kbd>c</kbd> | toggle spell check            |
|          <kbd>z</kbd> + <kbd>=</kbd>           | open spell correct suggestion |
|         <kbd>Ctrl</kbd> + <kbd>x</kbd>         | open complete suggestion      |
|      <kbd>:</kbd> + <kbd>Tabularize</kbd>      | align text                    |

## File Open Shortcuts
|                              Key                              | Control                                              |
|:-------------------------------------------------------------:|------------------------------------------------------|
| <kbd>Space</kbd> + <kbd>z</kbd> + <kbd>r</kbd> + <kbd>c</kbd> | open `init.vim` in NeoVim                            |
|        <kbd>Space</kbd> + <kbd>r</kbd> + <kbd>c</kbd>         | open `init.vim` in NeoVim                            |
|                <kbd>Space</kbd> + <kbd>f</kbd>                | open `Fuzzy File Finder` to open a file in a new tab |
|                  <kbd>t</kbd> + <kbd>t</kbd>                  | open `NerdTree` to open a file in a new tab          |

## Screen Split & Tabs & Buffers
|                                 Key                                  | Control                                         |
|:--------------------------------------------------------------------:|-------------------------------------------------|
|            <kbd>Space</kbd> + <kbd>s</kbd> + <kbd>l</kbd>            | vertical screen split and focus on the right    |
|            <kbd>Space</kbd> + <kbd>s</kbd> + <kbd>h</kbd>            | vertical screen split and focus on the left     |
|            <kbd>Space</kbd> + <kbd>s</kbd> + <kbd>j</kbd>            | horizontal screen split and focus on the bottom |
|            <kbd>Space</kbd> + <kbd>s</kbd> + <kbd>k</kbd>            | horizontal screen split and focus on the top    |
|                   <kbd>Space</kbd> + Direction Key                   | switch window                                   |
| <kbd>Up</kbd> / <kbd>Down</kbd> / <kbd>Left</kbd> / <kbd>Right</kbd> | adjust window size                              |
|                     <kbd>t</kbd> + <kbd>u</kbd>                      | open a new tab                                  |
|                     <kbd>t</kbd> + <kbd>h</kbd>                      | go one tab left                                 |
|                     <kbd>t</kbd> + <kbd>l</kbd>                      | go one tab right                                |
|                     <kbd>b</kbd> + <kbd>h</kbd>                      | go one buffer left                              |
|                     <kbd>b</kbd> + <kbd>l</kbd>                      | go one buffer right                             |

## Search
|                    Key                    | Control              |
|:-----------------------------------------:|----------------------|
| <kbd>/</kbd> + `query` + <kbd>Enter</kbd> | search something     |
|    <kbd>Space</kbd> + <kbd>Enter</kbd>    | clear search results |
|               <kbd>n</kbd>                | find next result     |
|               <kbd>N</kbd>                | find previous result |

## Placeholder
|                      Key                       | Control                                                         |
|:----------------------------------------------:|-----------------------------------------------------------------|
|      <kbd>Space</kbd> + <kbd>Space</kbd>       | find the next placeholder, clear it and switch into insert mode |
| <kbd>Space</kbd> + <kbd>p</kbd> + <kbd>h</kbd> | insert a placeholder at current position                        |

## Comment
|                        Key                         | Control        |
|:--------------------------------------------------:|----------------|
|   <kbd>Space</kbd> + <kbd>c</kbd> + <kbd>c</kbd>   | comment        |
|   <kbd>Space</kbd> + <kbd>c</kbd> + <kbd>u</kbd>   | uncomment      |
|           <kbd>Ctrl</kbd> + <kbd>c</kbd>           | comment toggle |

## Numbers
|              Key               | Control         |
|:------------------------------:|-----------------|
| <kbd>Ctrl</kbd> + <kbd>a</kbd> | add number by 1 |

## For fun!
|                      Key                       | Control                                               |
|:----------------------------------------------:|-------------------------------------------------------|
|       <kbd>Space</kbd> + <kbd>logo</kbd>       | convert the input string into a nice digital artwork! |
| <kbd>Space</kbd> + <kbd>g</kbd> + <kbd>y</kbd> | Zen mode!                                             |

# Plugins
> This chapter includes all plugins used in this NeoVim config.

## UI-relevant
+ [vim-airline](https://github.com/vim-airline/vim-airline): add a nice statusline at the bottom of Vim window.
+ [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes): provide various airline themes, click [here](https://github.com/vim-airline/vim-airline-themes/blob/master/doc/airline-themes.txt) for more options.
+ [gruvbox](https://github.com/morhetz/gruvbox): a beautiful Vim theme!
+ [vim-devicons](https://github.com/ryanoasis/vim-devicons): add fancy icons for Vim ui (NerdTree, airline, statify, etc).
+ [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin): support git status display on nerdtree.
+ [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides): visually display indent levels.
+ [vim-cursorword](https://github.com/itchyny/vim-cursorword): underline the word under the cursor.

## Function Enhancement
+ [nerdcommenter](https://github.com/preservim/nerdcommenter): enable smart commenting behaviour like most IDEs.
+ [coc-snippets](https://github.com/neoclide/coc-snippets): enable quick code snippets input.
+ [vim-snippets](https://github.com/honza/vim-snippets): get snippets.
+ [ale](https://github.com/dense-analysis/ale): (Asynchronous Lint Engine) enable error checking.
+ [undotree](https://github.com/mbbill/undotree): visualize undo history and switch between undo branches.
+ [coc.nvim](https://github.com/neoclide/coc.nvim): give nvim/vim a VS Code like experience!
+ [vim-signature](https://github.com/kshenoy/vim-signature): place, toggle and display marks.
+ [vim-surround](https://github.com/junegunn/goyo.vim): quick change surround symbols!
+ [tabular](https://github.com/godlygeek/tabular): align text easily.
+ [wildfire.vim](https://github.com/gcmt/wildfire.vim): quick select closed text objects!
+ [auto-pair](https://github.com/jiangmiao/auto-pairs): enable auto pair!
+ [coc-marketplace](https://github.com/fannheyward/coc-marketplace): search coc extensions.
+ [coc-highlight](https://github.com/neoclide/coc-highlight): default syntax highlight for coc.nvim.
+ [coc-prettier](https://github.com/neoclide/coc-prettier): a code formatter.

## Just for fun~
+ [vim-FIGlet](https://github.com/fadein/vim-FIGlet): enables figlet input in Vim!
+ [vim-startify](https://github.com/mhinz/vim-startify): display a cute start screen when launching nvim/vim without a specific file path.
+ [goyo.vim](https://github.com/junegunn/goyo.vim): Zen mode~

## Navigation
+ [nerdtree](https://github.com/preservim/nerdtree): a file system explorer for Vim.
+ [tagbar](https://github.com/preservim/tagbar): get an overview of the current code structure.

## Enhancement for specific languages
+ [kotlin-vim](https://github.com/udalov/kotlin-vim): syntax highlight for kotlin.
+ [vim-android](https://github.com/hsanson/vim-android): support Gradle based project development.
+ [indentpython.vim](https://github.com/vim-scripts/indentpython.vim): deal with annoying Python indentation!
+ [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim): preview markdown in a specific web browser.
+ [vimwiki](https://github.com/vimwiki/vimwiki): personal wiki for vim.
+ [coc-pyright](https://github.com/fannheyward/coc-pyright): python linting and auto completion.

## Git
+ [conflict-marker.vim](https://github.com/rhysd/conflict-marker.vim): visualize git conflicts and jump between them.
+ [vim-fugitive](https://github.com/tpope/vim-fugitive): a Git wrapper for vim/nvim. Call `:Git` or `:G` to execute git commands.
+ [vim-signify](https://github.com/mhinz/vim-signify): use the left gutter to indicate code status managed by a version control system (VCS).
+ [vim-gitignore](https://github.com/gisphm/vim-gitignore): provide highlighting and code snippets for `.gitignore` file.

## Dependencies
+ [vim-plug](https://github.com/junegunn/vim-plug)
+ [vim-addon-wm-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
+ [vim-textobj-user](https://github.com/kana/vim-textobj-user)
+ [coc-vimlsp](https://github.com/iamcco/coc-vimlsp)
