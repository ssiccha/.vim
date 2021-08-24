" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" Teach vim that autodoc comments start with #!
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#!,b:##,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s

" Settings used by vim-dispatch
if expand("%:e") == "gd"
    let b:dispatch = 'gap-master --quitonbreak makedoc.g -c "QUIT;" > /dev/null'
else
    let b:dispatch = 'gap-master --quitonbreak tst/testquick.g'
    setlocal makeprg=gap-master\ tst/testall.g
endif
