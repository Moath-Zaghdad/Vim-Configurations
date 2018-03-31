# Setup guide
If you wish to use my vim configuration you need to do the following
before you start, you might need to backup your default configuration in case anything goes wrong
 + clone the repository to your **$HOME** directory
    `mv Vim-Configurations/ .vim`
 + move the .vimrc to your **$HOME** directory or link it
    `ln -s  Vim-Configurations/vimrc ~/.vimrc`
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
        *ci{*

To **Go To The Class Or Function folder**
    **`Ctr+]`**
    And To go back
    **`Ctr+^`** I made a map for `Ctr+[` 

### Visual Mod

***v*** to select characters
***V*** to select by **Lines**
***vi{*** to select what's inside the the { .. }
```
D  Delete
```

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



### TABS

 *  To **Open New Tab**
    **`:tabedit filename*.py`**
 *  To **close all the tabs** on the buffer
    **`:bd`**
 *  To **class the current tab**
    **`:tabclose`** or **`:tabc`**



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

 * To **go back to the olde file** on the tabe
     **`:bp`**

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



*******************************************************************************************
*******************************************************************************************

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


****
****
# plugins

[vim-atom-dark](https://github.com/gosukiwi/vim-atom-dark)


This is like a backage manigare ...
[Vundle.vim](https://github.com/VundleVim/Vundle.vim)
 *  Read the [quick-start](https://github.com/VundleVim/Vundle.vim#quick-start) to find out more about this


[vinegar.vim](https://github.com/tpope/vim-vinegar)
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

 
[nerdtree](https://github.com/scrooloose/nerdtree)
:NERDTreeToggle

[ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)

if you can't get :CtrlPBufTag to work install **`sudo apt install ctags`**

run on the terminal **`ctags -R`** and this makes the tage file, so you could go to vim and do this
**OR** you can run it on vim **`:!ctags -R`**

**`:tag report`** I mad a short cut `,f`
**`:tn`** to go to the next *report* function
**`:tp`** to go to the previous *report* function
**`:ts`** to select from all the *report* functions available





**`Ctrl + P`**
    **`Ctrl + D`**
    **`Ctrl + R`**
    **`Ctrl + E`**
    **`Ctrl + F`**
**`Ctrl + E`**
**`Ctrl + R`**
**`, + 1`**





 11