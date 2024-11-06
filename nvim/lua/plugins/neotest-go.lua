return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		{ "fredrikaverpil/neotest-golang", version = "*" }, -- Installation
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-golang")({ runner = "gotestsum", testify_enabled = true }), -- Registration
			},
		})
	end,
	keys = {
		{
			"<leader>tA",
			function()
				require("neotest").run.run(vim.uv.cwd())
			end,
			desc = "[t]est [A]ll files",
		},
		{
			"<leader>tS",
			function()
				require("neotest").run.run({ suite = true })
			end,
			desc = "[t]est [S]uite",
		},
		{
			"<leader>ts",
			function()
				require("neotest").summary.toggle()
			end,
			desc = "[t]est [s]ummary",
		},
		{
			"<leader>to",
			function()
				require("neotest").output.open({ enter = true, auto_close = true })
			end,
			desc = "[t]est [o]utput",
		},
		{
			"<leader>tO",
			function()
				require("neotest").output_panel.toggle()
			end,
			desc = "[t]est [O]utput panel",
		},
		{
			"<leader>tn",
			function()
				require("neotest").run.run()
			end,
			desc = "[t]est [n]earest",
		},
	},
}
