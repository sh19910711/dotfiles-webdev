if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

for f in split(glob('~/.vim.d/plugins/*.vim'), '\n')
	execute 'source' f
endfor

NeoBundleCheck
