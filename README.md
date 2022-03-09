# <center>My NeoVim</center>
> Yet another `NeoVim` configuration~

> Basic Vim guidance should be found [here](http://www.oualline.com/vim-cook.html)!
```
__   __    _       _  __     _                    
\ \ / /__ | | ___ | |/ /___ | | ___   _ _ __ __ _ 
 \ V / _ \| |/ _ \| ' // _ \| |/ / | | | '__/ _` |
  | | (_) | | (_) | . \ (_) |   <| |_| | | | (_| |
  |_|\___/|_|\___/|_|\_\___/|_|\_\\__,_|_|  \__,_|
                                                  
```
[TOC]

# Cursor Control (Normal & Visual)
|              Key               | Control                                        |
|:------------------------------:|------------------------------------------------|
|  <kbd>h</kbd> / <kbd>H</kbd>   | left                                           |
|  <kbd>l</kbd> / <kbd>L</kbd>   | right                                          |
|  <kbd>j</kbd> / <kbd>J</kbd>   | down                                           |
|  <kbd>k</kbd> / <kbd>K</kbd>   | up                                             |
|  <kbd>w</kbd> / <kbd>W</kbd>   | move cursor to the next (10) word              |
|  <kbd>b</kbd> / <kbd>B</kbd>   | move cursor to the front (10) word             |
| <kbd>Ctrl</kbd> + <kbd>h</kbd> | move cursor to the first charactor of the line |
| <kbd>Ctrl</kbd> + <kbd>l</kbd> | move cursor to the last charactor of the line  |
|  <kbd>g</kbd> + <kbd>g</kbd>   | top of the file                                |
|          <kbd>G</kbd>          | bottom of the file                             |

# General Commands
|                   Key                    | Control                                                         |
|:----------------------------------------:|-----------------------------------------------------------------|
|               <kbd>o</kbd>               | add a new line below the current line and switch to Insert mode |
|               <kbd>O</kbd>               | add a new line above the current line and switch to Insert mode |
|               <kbd>A</kbd>               | append the current line                                         |
|               <kbd>I</kbd>               | insert at the start of the current line                         |
|               <kbd>Q</kbd>               | quit NeoVim                                                     |
|               <kbd>S</kbd>               | save file                                                       |
|               <kbd>R</kbd>               | reload `init.vim`                                               |
| <kbd>:</kbd> + <kbd>e</kbd> + `filepath` | open file                                                       |
|       <kbd>z</kbd> + <kbd>z</kbd>        | set the current line at the center of the screen                |

# File Open Shortcuts
|                              Key                              | Control                   |
|:-------------------------------------------------------------:|---------------------------|
| <kbd>Space</kbd> + <kbd>z</kbd> + <kbd>r</kbd> + <kbd>c</kbd> | open `init.vim` in NeoVim |
|        <kbd>Space</kbd> + <kbd>r</kbd> + <kbd>c</kbd>         | open `init.vim` in NeoVim |

# Screen Split & Tabs
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

# Search
|                    Key                    | Control              |
|:-----------------------------------------:|----------------------|
| <kbd>/</kbd> + `query` + <kbd>Enter</kbd> | search something     |
|    <kbd>Space</kbd> + <kbd>Enter</kbd>    | clear search results |
|               <kbd>n/<kbd>                | find next result     |
|               <kbd>N/<kbd>                | find previous result |

# Plugins
+ [`NerdTree`](https://github.com/preservim/nerdtree): A file system explorer
+ vim-plug
+ vim-airline
