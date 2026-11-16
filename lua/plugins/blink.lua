return {
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = { "rafamadriz/friendly-snippets" },
	opts = {
		keymap = { preset = "default" }, -- ou "super-tab" / "enter"
		completion = {
			documentation = { auto_show = true },
			accept = { auto_brackets = { enabled = true } },
		},
		keyword = { "full" },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
		snippets = { preset = "default" },
		signature = { enable = false },
		list = { selection = { preselect = false, auto_insert = true } },
		menu = {
			auto_show = true,
			draw = {
				columns = {
					{ "label", "label_description", gap = 1 },
					{ "kind_icon", "kind" },
				},
			},
		},
	},
	opts_extend = { "sources.default" },
}
