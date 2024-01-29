-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

-- configure/enable gitsigns
gitsigns.setup({
	watch_gitdir = {
		follow_files = false,
	},
	update_debounce = 1000,
})
