" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#!,b:##,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
if expand("%:e") == "gd"
    let b:dispatch = 'gap-master --quitonbreak makedoc.g -c "QUIT;" > /dev/null'
else
    let b:dispatch = 'gap-master --quitonbreak tst/testall.g'
endif
