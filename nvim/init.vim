" General stuff
" Remember to :PlugInstall

" Oonga Boonga cool numbas
set number relativenumber

" Colors = yes
syntax on

" Mouse support (yeah idk)
set mouse=a

" VimPlug - Why do we need package managers for our editors again?
call plug#begin()

	" Syntax & Looks
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'lukas-reineke/indent-blankline.nvim'
	Plug 'lewis6991/gitsigns.nvim'

	" Themes (sainnhe goated)
	Plug 'sainnhe/everforest'
	Plug 'sainnhe/sonokai'
	Plug 'navarasu/onedark.nvim'

	" Misc.
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
	Plug 'sudormrfbin/cheatsheet.nvim'

	Plug 'nvim-tree/nvim-web-devicons' " optional
	Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

" Colorscheme
colorscheme sonokai " this changes often
set termguicolors

" Lua is very good and I like it
lua require('init')

" Wayland clipboard support (with wayland-clipboard) haha
let g:clipboard = {
	\ 'name': 'wayland-clipboard',
	\ 'copy' : {
	\	'+': ['wl-copy'],
	\	'*': ['wl-copy'],
	\	},
	\ 'paste': {
	\	'+': ['wl-paste'],
	\	'*': ['wl-paste'],
	\	},
	\	'cache_enabled': 1,
	\ }
