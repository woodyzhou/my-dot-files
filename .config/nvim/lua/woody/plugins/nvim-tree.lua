-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- delete mappings
	vim.keymap.del("n", "s", { buffer = bufnr })

	-- custom mappings
	vim.keymap.set("n", "s", api.node.open.vertical, opts("Open: Vertical Split"))
	vim.keymap.set("n", "i", api.node.open.horizontal, opts("Open: Horizontal Split"))
	vim.keymap.set("n", "t", api.node.open.tab, opts("Open: New Tab"))
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

-- configure nvim-tree
nvimtree.setup({
	on_attach = my_on_attach,
	-- change folder arrow icons
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
		group_empty = true,
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	view = {
		adaptive_size = true,
		-- mappings = {
		-- 	list = {
		-- 		{ key = "u", action = "dir_up" },
		-- 		{ key = "s", action = "vsplit" },
		-- 		{ key = "i", action = "split" },
		-- 		{ key = "t", action = "tabnew" },
		-- 		{ key = "?", action = "toggle_help" },
		-- 	},
		-- },
	},
	git = {
		enable = false,
		ignore = true,
		show_on_dirs = false,
		show_on_open_dirs = false,
		timeout = 4000,
	},
})
