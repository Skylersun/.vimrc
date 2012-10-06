I'm using *Janus*'s (https://github.com/carlhuda/janus) distribution of plug-ins and mappings for my Vim, Gvim and MacVim. Therefore this repo of `.vimrc` is just an appended part to override some settings. 

===============
For convenience, don't copy the `.vimrc` file to `~/` directly. Just clone this repo and then create a symbol link instead:

* For Mac OS:
        
		ln -s [clone path]/.vimrc ~/.vimrc.after
                
* For Windows:
        
		mklink [your vim root]\_vimrc [clone path]\.vimrc.after

===============
* **colorscheme**:

        solarized (background=dark)

* **font**:

        monaco:h16
