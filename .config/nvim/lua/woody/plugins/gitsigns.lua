-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

-- configure/enable gitsigns
gitsigns.setup({
	watch_gitdir = {
		interval = 60000,
		follow_files = true,
	},
	update_debounce = 1000,
})
