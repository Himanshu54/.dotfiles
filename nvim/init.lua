-- Map Caps to Esc


-- https://neovim.io/doc/user/lua-guide.html#lua-guide-config
-- Remove banner from netrw
vim.g.netrw_banner=0

-- Line Numbers
vim.opt.relativenumber=true
vim.opt.number=true

-- Remember Section --
-- Ctrl+v + <no of line >j+ <S-i> commnet <Esc>


-- https://github.com/dusans/vim-hardmode ported to lua.
-- TODO: Disable h,j,k,l in normal and visual mode ??
-- START HARDMODE
vim.g.hardmodemsg = "VIM: hard Mode [ ' :call EasyMode()' to exit]"
vim.g.hardmode_on = 0

function HardMode()
	vim.opt.backspace="0"
	vim.keymap.set({'n', 'v', 'i'}, '<Left>', "<Esc>:echo g:hardmodemsg<CR>", { buffer=true })
	vim.keymap.set({'n', 'v', 'i'}, '<Right>', "<Esc>:echo g:hardmodemsg<CR>", { buffer=true })
	vim.keymap.set({'n', 'v', 'i'}, '<Up>', "<Esc>:echo g:hardmodemsg<CR>", { buffer=true })
	vim.keymap.set({'n', 'v', 'i'}, '<Down>', "<Esc>:echo g:hardmodemsg<CR>", { buffer=true })
	vim.keymap.set({'n', 'v', 'i'}, '<PageUp>', "<Esc>:echo g:hardmodemsg<CR>", { buffer=true })
	vim.keymap.set({'n', 'v', 'i'}, '<PageDown>', "<Esc>:echo g:hardmodemsg<CR>", { buffer=true })	
	vim.g.hardmode_on = 1
	print(vim.g.hardmodemsg)
end

function EasyMode()
	vim.opt.backspace="indent,eol,start"
	vim.keymap.del({'n', 'v', 'i'}, '<Left>', { buffer=true, silent = true })
	vim.keymap.del({'n', 'v', 'i'}, '<Right>', { buffer=true, silent = true })
	vim.keymap.del({'n', 'v', 'i'}, '<Up>', { buffer=true, silent = true })
	vim.keymap.del({'n', 'v', 'i'}, '<Down>', { buffer=true, silent = true })
	vim.keymap.del({'n', 'v', 'i'}, '<PageUp>', { buffer=true, silent = true })
	vim.keymap.del({'n', 'v', 'i'}, '<PageDown>', { buffer=true, silent = true })
	vim.g.hardmode_on = 0
	print("You are weak...")
end

function ToggleHardMode()
	if (vim.g.hardmode_on==1)
	then
		EasyMode()
	else
		HardMode()
	end
end
-- END HARDMODE
