NeoBundle 'thinca/vim-quickrun'

let g:quickrun_config = {
      \   '_': {
      \     'outputter': 'multi:buffer:quickfix',
      \     'outputter/buffer/split': '',
      \     'hook/time/enable': 1,
      \   },
      \ }
