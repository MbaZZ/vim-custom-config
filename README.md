
# Contenu

* [vim-node](https://github.com/moll/vim-node)
* [vim-javascript](https://github.com/pangloss/vim-javascript)
* [NERDTree](https://github.com/scrooloose/nerdtree)
* [Pathogeni.vim](https://github.com/tpope/vim-pathogen)


## Node.vim

Using 
-----
Open any JavaScript file inside a Node project and you're all set.

- Use `gf` inside `require("...")` to jump to source and module files.
- Use `[I` on any keyword to look for it in the current and required files.
- Use `:Nedit module_name` to edit the main file of a module.
- Use `:Nedit module_name/lib/foo` to edit its `lib/foo.js` file.
- Use `:Nedit .` to edit your Node projects main (usually `index.js`) file.

#### Want to customize settings for files inside a Node projects?
Use the `Node` autocommand. For example:
```vim
autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif
```

#### Want `<C-w>f` to open the file under the cursor in a new vertical split?
`<C-w>f` by default opens it in a horizontal split. To have it open vertically, drop this in your `vimrc`:
```vim
autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif
```
