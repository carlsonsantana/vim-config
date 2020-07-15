" Load languages configurations
filetype on
augroup Languages_Settings
  autocmd BufNewFile,BufRead *.js set filetype=javascript
  autocmd BufNewFile,BufRead *.jsx set filetype=javascript
  autocmd BufNewFile,BufRead *.ts set filetype=typescript

  autocmd FileType javascript source ~/.vim/programming/javascript.vim
  autocmd FileType typescript source ~/.vim/programming/typescript.vim
  autocmd FileType python source ~/.vim/programming/python.vim

  autocmd FileType html source ~/.vim/programming/html.vim
  autocmd FileType css source ~/.vim/programming/css.vim
  autocmd FileType go source ~/.vim/programming/go.vim
augroup END

let g:ale_fix_on_save = 1
