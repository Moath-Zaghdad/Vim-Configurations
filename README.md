
[![GNU GPL V2.0 License](https://img.shields.io/badge/license-GNU%20GPL%20V2.0-red.svg)](LICENSE)

# Setup guide
If you wish to use my vim configuration you need to do the following
before you start, you might need to backup your default configuration in case anything goes wrong
 + clone the repository to your **$HOME** directory
    `mv Vim-Configurations/ .vim`
 + move the .vimrc to your **$HOME** directory or link it
    `ln -s  Vim-Configurations/vimrc ~/.vimrc`
    `ln -s  Vim-Configurations/gvimrc ~/.gvimrc`
 + go to **~/.vim/bundle/**
    `git clone https://github.com/VundleVim/Vundle.vim.git`
 + step 3 install the plugins
    `:PluginInstall`


# Vim

### Normal mod

```
H  Left
L  Right
K  Up
j  Downlasf

u undo
o craete new line
r replace character
```

To **Search for a worde**
    */* and then anyting that you are looking four
    and to see the next word that yor looing for hit 
    *n*
To **hed to the Start of the file**
    **gg**

To **Copy a Text**
    *y*
    If you want to coppy A **FULL LINE**
    *yy*

To **Paste the Text**
    *p*

To make the current line to the **sinter of the screen**
    *zz*

To **Delete the Texts**
    **`{  d,c,v  }{  i,a  }{  (,',",{  }`**
    * to delete a line
        *dd*
    * to delete texts betwen bracets for examble
        *di(*   => stand for Delete Inside the prentheceas
        *da(*   => stand for Delete Inside the prentheceas and the prentheceas it selves
        *di{*
    **If You wont to Change what's in the { .. }**
        *CI{*

To **Go To The Class Or Function folder**
    **`Ctr+]`**
    And To go back
    **`Ctr+^`** I made a map for `Ctr+[` 

### Visual Mod

|  vim | command  description                                       |
| :--- | ---------------------------------------------------------- |
|  v   | to select characters                                       |
|  V   | to select by **Lines**                                     |
|  vi{ | to select what's inside the the { .. }                     |
|  D   | to delete the selected                                     |
| "+y  | to copy the selected text from vim to an external program  |
| "+p  | to paste a text from an external program to vim            |



### Insert Mod      ***I***


***Shift + Alt + :***
***Esc***







####  :

To **Write/Save** the file
**`:w`**

To **Edit** the file
**`:e filename.py`**

To **Queate** the file
**`:q`**

To **Save & Exit** the file
**`:wq`**

You can do something like 
**`:pwd`**

To ***Soars The File***
*:*s`o %`**  % => means the current file

To ***Delete all the buffers***
:bufdo bd!

### TABS
 *  To **Open New Tab**
    **`:tabedit {file}`**
 *  To **close all the tabs** on the buffer
    **`:bd`**
 *  To **class the current tab**
    **`:tabclose`** or **`:tabc`**
 *  To **edit a new file, or jump to the window containing it if it already exists**
    **`:drop`** or **`:tab drop {file}`** to open the file in a new tab if it isn't already open



### Multi Windows -splits-

 *  To **make a horizontal split**
    **`:sp`**
 *  To **make a vertical split**
    **`:vsp`**


 *  To **switch between the windows**
     +  to go UP  `Ctrl + W `+`k`
     +  to go DOWN  `Ctrl + W + j`
     +  to go Right  `Ctrl + W + l`
     +  to go Left  `Ctrl + W + h`
     +  to rotate  `Ctrl + W + W`

 *  To **twak the window size**
     +  `Ctrl + W` + `|` Maximize the current window Horizontally
     +  `Ctrl + W` + `__` Maximize the current window Vertically
     +  `Ctrl + W` + `o` Maximize the current window Horizontally AND Vertically
     +	`Ctrl + W` + `=` Make all the windows equals
 

* To **go back to the olde file/windows/buffer** on the tabe
     **`:bp`** buffer previous
        or
     **`Ctrl + 6`** to go the the last file

    *   to less al the opend file on the buffer
        **`:ls`**
        + Now to switch to any buffer from that list
            **`:b3`** *=> :b and the buffer number*

 *  To make the **current split full screne**
     `Ctr + W` `Shift + /`

 *  To make the **split equal screen size**
     `Ctr + W` `=`



### BROWS THE FOLDERS

to les everything on the current directory
    **`:e .`**



#                               From the mains screen

##  :


#                               From the opend file

## the Edit mod

**To switch to insert mod**
*i*

## Configrations



#### Configaration 
:colorscheme delek

***~/.vimrc***
syntax enable
 

colorscheme delek

set backspace=indent,eol,start


***
|  vim | command  description                                    |
| :--- | ------------------------------------------------------- |
|  0   | move to beginning of the current line                   |
|  $   | move to end of line                                     |
|  H   | move to the top of the current window (high)            |
|  M   | move to the middle of the current window (middle)       |
|  L   | move to the bottom line of the current window (low)     |
|  1G  | move to the first line of the file                      |
|  20G | move to the 20th line of the file                       |
|  G   | move to the last line of the file                       |
|  gg  | move to the first line if the file                      |
|:!rm %| delete the file we are in right now                     |
|      |                                                         |

***

# plugins
```
graph TD;
    A[Atom Dark];
    
    V[Vundle];
    V --> vinegar;
    V --> nerdtree;
    V --> ctrlp;
    
    x[The Silver Searcher]-->ag.vim


    S[Vim Snipmate];
    vim-addon-mw-utils        --> S;
    tlib_vim                  --> S;
    vim-snipmate              --> S;
    vim-snippets(Round edge)  --> |Optional| S;



    vim-surround;
    
```
### [vim-atom-dark](https://github.com/gosukiwi/vim-atom-dark)



### [Vundle.vim](https://github.com/VundleVim/Vundle.vim)
 This is a Vim plugin manager
 *  Read the [quick-start](https://github.com/VundleVim/Vundle.vim#quick-start) to find out more about this


### [vinegar.vim](https://github.com/tpope/vim-vinegar)
After This plug in have been installed you can do this
**`:e .`**


 *  and after that do this
    **`s`** to sort the folders  
 *  To go back folder 
    **`-`**
 *  To create a directory 
    **`d`** and then thae folder name
 *  To delete directory or file underneath the cursor
    **`D`** yes
 *  To create new file 
   **`%`** 

 
### [nerdtree](https://github.com/scrooloose/nerdtree)
:NERDTreeToggle
**`, + 1`**
to create/move/copy  file/folder via nerdtree
**`m`**

**`t`** to open in new tab
**`t`** to open in new tab

| NerdTree | command  description                                     |
| :------- | -------------------------------------------------------- |
|  , + 1   |   to open the NerdTree                                   |
|    q     |   to Close NerdTree                                      |
|    m     |   to create/move/copy file/folder                        |
|    t     |   open the file in new tab                               |
|    s     |   open the file in virtucal split                        |
|    p     |   to go to the upper folder                              |

### [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)

if you can't get :CtrlPBufTag to work install **`sudo apt install ctags`**

run on the terminal **`ctags -R`** and this makes the tage file, so you could go to vim and do this
**OR** you can run it on vim **`:!ctags -R`**

| ctrlp       | command  description                                     |
| :---------- | -------------------------------------------------------- |
|  Ctrl + P   |                                                          |
|     F5      |  refresh the cashed files                                |
|  Ctrl + D   |                                                          |
|  Ctrl + S   |                                                          |
|  Ctrl + E   |                                                          |
***
|  Ctrl + F   |                                                          |
|  Ctrl + R   |                                                          |
|             |                                                          |
on search
C-T         open in new Tab
C+Y and C-V open the location in virtical mod
C+O         To selecte the open way
C+S         open Horizantaly
C+D         to swich the search betwean path and file



Ex if you wanna search for the *report* 
- **`:tag report`** I mad a short cut `,f`
- **`:tn`** to go to the next *report* function, a short cut is `tn`
- **`:tp`** to go to the previous *report* function, a short cut is `tp`
- **`:ts`** to select from all the *report* functions available, a short cut is `ts`








### [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)
A code searching tool similar to *ack*, with a focus on speed.
[Installation](https://github.com/ggreer/the_silver_searcher#linux)

#### [ag.vim](https://github.com/rking/ag.vim)
This plugin will allow you to run ag from vim.
`:Ag 'class User'`


#### [greplace.vim](https://github.com/skwp/greplace.vim)
This Plugin for doing a search and replace across many files.
[Customization](https://github.com/skwp/greplace.vim#customization)

**`:Gsearch`**
and now, if you wanna search and replace after the search result appear
- go to the visual mod and select what you wanna replace 
- press **`:`**
- write **`s/{THE_WORD_TO_REPLACE}/{THE_REPLACED_WORD}`**
- run **`Greplace`**
- now either press **`a`** to apply all and  **`:wa`** to write all files, **OR** go to each file by followi:wng the instructions






## [vim-snipmate](https://github.com/garbas/vim-snipmate)
create **snippets** folder in your .vim directory
add your snippets hear for example if you wanna make a snippets for php:
+ create a file and name it **php.snippets**
+ add your snippets in that file !! example:
```
 snippet met
        public function ${1}()
        {
            ${2}
        }
```
- note
    -   to show all the snippets in the file hit
    **`zx`**
    -   to close all the snippets in the file hit
    **`zc`**
    - to toggle **`za`**





## [vim-surround](https://github.com/tpope/vim-surround)
Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.

***cs*** stand for **Change Surround**
***ds*** stand for **Delete Surround**

***dst*** stand for **Delete Surround Tag!**
***cst*** stand for **Change Surround Tag!**
select a string and ***S*** to create a tag

*example:*  `"Hellow Surround.vim"`   `cs"<H1>` and it will be  `<h1>Hellow Surround.vim</h1>`


- [x] 15
- [ ] 16
- [ ] 17
- [ ] 18
- [ ] 19
- [ ] 20
- [ ] 21
- [ ] 22
