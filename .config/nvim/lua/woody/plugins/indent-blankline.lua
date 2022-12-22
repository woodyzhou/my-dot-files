-- import indent_blankline plugin safely
local setup, indent_blankline = pcall(require, "indent_blankline")
if not setup then
	return
end

vim.opt.list = true
vim.opt.listchars:append("eol:↴")

indent_blankline.setup({
	show_end_of_line = true,
})
