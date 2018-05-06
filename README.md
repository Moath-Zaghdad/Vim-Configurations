
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

### Normal mode

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
    *?* to search about the current line
    and to see the next word that yor looing for hit 
    *n*
   to paste something par on the search hit ***Ctrl + R + "***
To **hed to the Start of the file**
    **gg**

To **Copy/Yank a Text**

|  vim | command  description                                       |
| :--- | ---------------------------------------------------------- |
|  y   |  to copy what's selected                         	    |
|  yy  |  to copy A **FULL LINE**                                   |
|  yiw |  to copy the word that the cursor pointing at              |


|
To **Paste the Text**
    *p*

To make the current line to the **sinter of the screen**
    *zz*

To **Delete/Change/Select/Yank a Text**<br>
    {  **`d`,`c`,`v`,`y`**  } + {  **`i`,`a`**  } + {  **`(`,`'`,`"`,`{`**  }
    
  + to delete a line
        ***dd***
  + to delete texts betwen bracets for examble
    + ***di(***   => stand for Delete Inside the parentheses<br>
    + ***da(***   => stand for Delete inside the parentheses And the parentheses it selves 

  + If You wont to **Change** what's in the { .. }	=> ***ci{*** <br>
  + If You wont to **Select** what's in the { .. }	=> ***vi{*** <br>
  + If You wont to **Yank** what's in the { .. }	=> ***yi{*** <br>

To **Go To The Class Or Function folder**
  - **`Ctr+]`**<br>
    And To go back
  - **`Ctr+^`** or the map that I made **`Ctr+[`**
  
<hr>

### Visual Mode

|  vim | command  description                                       |
| :--- | ---------------------------------------------------------- |
|  v   | to select characters                                       |
|  V   | to select by **Lines**                                     |
|  vi{ | to select what's inside the { .. }                         |
|  vit | to select what's inside the TAG                            |
|  D   | to delete the selected                                     |
| "+y  | to copy the selected text from vim to an external program  |
| "+p  | to paste a text from an external program to vim            |
| :sort| to sort the selected columns alphabetically                |
| ,su  | to sort the selected columns from shortest to longests     |

<hr>

### Marking
you may make marks in your code to go fast back to these lines/marks

|    Vim   |  command  description                                    |
| :------- | -------------------------------------------------------- |
|  :marks  |   to display all the marks                               |
|  m { ? } |   m followed by any letter to create a mark <br> example ***mx*** where x == ? |
|   { ? }  |   If you used a lower case KEY that will work in the <br> currnet buffer only, but if you used a Capital Later <br> it will work acrous all the files |
|  ' { ? } |   to take you back to the line you marked  	      |
|  \` { ? } |   to take you back to the same curser place in the line you marked  |
|  d'{ ? } |   to delete until the mark                                          |
|  v'{ ? } |   to select everything until the mark                               |
|  c'{ ? } |   to change everything until the mark                               |

<hr>

### Insert Mode
press **`I`** to switch to insert mode<br>
to **exit** from insert mode
  + ***Esc***
  + ***Shift + Alt + :***
  + ***Ctrl + :***

<hr>

### Command Mode   ***`:`***

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

<hr>

### TABS
 *  To **Open New Tab**
    **`:tabedit {file}`**
 *  To **close the buffer that's we are on** 
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
	+ or to open it in split buffer 
	    **`:sbuffer 3`**

 *  To make the **current split full screne**
     `Ctr + W` `Shift + /`

 *  To make the **split equal screen size**
     `Ctr + W` `=`

<hr>

### BROWS THE FOLDERS

to les everything on the current directory
    **`:e .`**

<hr>

### Macros
a macro is a just a recording
    that you can replay at any point or you can even save it for future use

to Start recording hit the letter ***q*** and any letter after it as a register
to Stop recording hit ***q*** again

you can see all the saved records ***:reg***
to replay it hit ***@*** and then the register
example:

***qD*** will start the recording, you may write what you want to record. ***D*** well stop the recording
***"Dp*** to get what's inside the register	where *"D* refers to the register and *p* for paste

you can save it in your *.vimrc* file ex:
`let @D="Whatever you want to save, and you may use "Dp to spit it hear"`
and to use it hit *@D*



<hr>


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

<hr>

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
|  Ctrl + p   |  to invoke CtrlP                                         |
|     F5      |  refresh the cashed files                                |
|  Ctrl + d   |  to switch to filename only search instead of full path  |
|  Ctrl + r   |  to switch to regexp mode.                               |
|  Ctrl + f<br>Ctrl + b   |  to cycle between modes.                   |
|  Ctrl + r   |  to switch to regexp mode.                               |
|  Ctrl + o   |  To go back to the previous point of editing             |
|  Ctrl + i   |  To go forward to the next edit point                    |
|  Ctrl + j<br>Ctrl + k |  or the arrow keys to navigate the result list.  |
|  Ctrl + t<br>Ctrl + v <br> Ctrl + x | open the selected entry in a new tab or in a new split. |


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
`:Ag 'class User'`, to search for class User in your project 


#### [greplace.vim](https://github.com/skwp/greplace.vim)
This Plugin for doing a search and replace across many files.
[Customization](https://github.com/skwp/greplace.vim#customization)

run     **`:Gsearch`**
and now, if you wanna search and replace after the search result appear
- go to the ***Visual mode*** and select what you wanna replace 
- Press **`:`**
- write **`s/{THE_WORD_TO_REPLACE}/{THE_REPLACED_WORD}`**
- run **`Greplace`**
- now either press **`a`** to apply all and  **`:wa`** to write all files, **OR** go to each file by followi:wng the instructions






## [vim-snipmate](https://github.com/garbas/vim-snipmate) I'm not using it now!
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


## [UltiSnips](https://github.com/SirVer/ultisnips)
UltiSnips is the ultimate solution for snippets in Vim.<br>
to write new snippet go to *`~/.vim/UltiSnips`* and simply add one!<br>
or open a file ex: *index.php* and hit *:UltiSnipsEdit* this well open a snippet for that file type 


## [vim-surround](https://github.com/tpope/vim-surround)
Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more.

***cs*** stand for **Change Surround**<br>
***ds*** stand for **Delete Surround**<br>

***dst*** stand for **Delete Surround Tag!**<br>
***dat*** stand for **Delete A Tag!**<br>
***cst*** stand for **Change Surround Tag!**<br>
select a string and ***S*** to create a tag

*example:*  `"Hellow Surround.vim"`   `cs"<H1>` and it will be  `<h1>Hellow Surround.vim</h1>`





# [php.vim](https://github.com/StanAngeloff/php.vim)
An up-to-date Vim syntax for PHP.

# [vim-php-namespace](https://github.com/arnaud-lb/vim-php-namespace)
vim-php-namespace is a vim plugin for inserting "use" statements automatically.<br>
this plugin requires a *tags* file `ctags -R`<br>
to use it, set the cursor on the word for example:<br>
`return User::all();// the cureser is at the world User`<br>
***,n*** in insert/normal mode well add `use App\User;`<br>
***,nf*** in insert/normal mode well make it `return App\User::all();`in line



# [supertab](https://github.com/ervandew/supertab)
Supertab is a vim plugin which allows you to use <Tab> for all your insert completion needs (:help ins-completion).


# [vim-php-cs-fixer](https://github.com/stephpy/vim-php-cs-fixer)
This plugin will execute the php-cs-fixer command on the directory or file (depends on which command you call). See options to know how to customize that.

***,pf*** to auto format the file to psr2 


## [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
`composer global require friendsofphp/php-cs-fixer`

# [PDV - PHP Documentor for VIM](https://github.com/tobyS/pdv)
PDV - PHP Documentor for VIM, your tool of choice for generating PHP doc blocks.

running ***,c*** while you're cursor pointing at the method will create a document comment

## [vmustache](https://github.com/tobyS/vmustache)
vmustache - Mustache template system for VIMScript



