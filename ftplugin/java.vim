set tabstop=4
set shiftwidth=4
set expandtab

set colorcolumn=81

source ~/.vim/programming/whitespace-indent.vim

setlocal omnifunc=javacomplete#Complete

if filereadable('pom.xml')
  if filereadable('.env')
    setl makeprg=source\ .env\ &&\ mvn\ package
  else
    setl makeprg=mvn\ clean\ package
  endif
endif

" Highlight all unused imports
highlight link unusedimport WarningMsg

augroup JavaUnusedImports
  autocmd!

  " Highlight all unused imports
  autocmd BufEnter *.java :UnusedImports
  " Remove unused imports
  autocmd BufWritePre,FileWritePre *.java :UnusedImportsRemove
augroup END

if (!exists("g:JavaComplete_ImportSortType")) || (g:JavaComplete_ImportSortType == 'jarName')
  let g:JavaComplete_ImportSortType = 'packageName'
  let g:JavaComplete_ImportOrder = ['java.', 'javax.', 'junit.', '*']
endif

augroup JavaSortImports
  autocmd BufWritePre,FileWritePre *.java :JCimportsSort
augroup END
