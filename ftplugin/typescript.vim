" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal tabstop=2
setlocal shiftwidth=2

let b:ale_fixers = {'typescript': ['prettier']}
