-- [[ Basic Vim Settings ]] -- 

HOME = os.getenv("HOME")

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.breakindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = 'yes'

vim.opt.updatetime = 200
vim.opt.timeoutlen = 300

vim.opt.completeopt = 'menuone,noselect'

vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.encoding = "utf-8"
vim.opt.completeopt = "menuone,noselect"

vim.opt.history = 1000

vim.opt.startofline = true
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100

vim.opt.eol = false -- show if there's no eol char vim.opt.showbreak = "↪" -- character to show when line is broken

-- [[ SIDEBAR ]] -- 
vim.opt.numberwidth = 3 -- always reserve 3 spaces for line number
vim.opt.modelines = 0
vim.opt.showcmd = true -- display command in bottom bar

-- [[ WHITE CHARACTERS ]] -- 
vim.opt.autoindent = true

-- [[ BACKUP FILES ]] -- 
vim.opt.writebackup = false

-- [[ COMMANDS MODE ]] --
vim.opt.wildmenu = true -- on TAB, complete options for system command
vim.opt.wildignore =
	"deps,.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc"

