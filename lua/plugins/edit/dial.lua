return {
	"monaqa/dial.nvim",
	keys = {
		{
			"<C-a>",
			function()
				require("dial.map").manipulate("increment", "normal")
			end,
			mode = "n",
			desc = "Increment",
		},
		{
			"<C-x>",
			function()
				require("dial.map").manipulate("decrement", "normal")
			end,
			mode = "n",
			desc = "Decrement",
		},
		{
			"g<C-a>",
			function()
				require("dial.map").manipulate("increment", "gnormal")
			end,
			mode = "n",
			desc = "Increment (gnormal)",
		},
		{
			"g<C-x>",
			function()
				require("dial.map").manipulate("decrement", "gnormal")
			end,
			mode = "n",
			desc = "Decrement (gnormal)",
		},
		{
			"<C-a>",
			function()
				require("dial.map").manipulate("increment", "visual")
			end,
			mode = "x",
			desc = "Increment (visual)",
		},
		{
			"<C-x>",
			function()
				require("dial.map").manipulate("decrement", "visual")
			end,
			mode = "x",
			desc = "Decrement (visual)",
		},
		{
			"g<C-a>",
			function()
				require("dial.map").manipulate("increment", "gvisual")
			end,
			mode = "x",
			desc = "Increment (gvisual)",
		},
		{
			"g<C-x>",
			function()
				require("dial.map").manipulate("decrement", "gvisual")
			end,
			mode = "x",
			desc = "Decrement (gvisual)",
		},
	},
	opts = function()
		local augend = require("dial.augend")
		local logical_alias = augend.constant.new({
			elements = { "&&", "||" },
			word = false,
			cyclic = true,
		})
		local ordinal_numbers = augend.constant.new({
			elements = {
				"first",
				"second",
				"third",
				"fourth",
				"fifth",
				"sixth",
				"seventh",
				"eighth",
				"ninth",
				"tenth",
			},
			word = false,
			cyclic = true,
		})
		local months = augend.constant.new({
			elements = {
				"January",
				"February",
				"March",
				"April",
				"May",
				"June",
				"July",
				"August",
				"September",
				"October",
				"November",
				"December",
			},
			word = true,
			cyclic = true,
		})
		return {
			dials_by_ft = {
				css = "css",
				vue = "vue",
				javascript = "typescript",
				typescript = "typescript",
				typescriptreact = "typescript",
				javascriptreact = "typescript",
				json = "json",
				lua = "lua",
				markdown = "markdown",
				sass = "css",
				scss = "css",
				python = "python",
			},
			groups = {
				default = {
					augend.integer.alias.decimal,
					augend.integer.alias.decimal_int,
					augend.integer.alias.hex,
					augend.date.alias["%Y/%m/%d"],
					augend.constant.alias.en_weekday,
					augend.constant.alias.en_weekday_full,
					ordinal_numbers,
					months,
					augend.constant.alias.bool,
					augend.constant.alias.Bool,
					logical_alias,
				},
				vue = {
					augend.constant.new({ elements = { "let", "const" } }),
					augend.hexcolor.new({ case = "lower" }),
					augend.hexcolor.new({ case = "upper" }),
				},
				typescript = {
					augend.constant.new({ elements = { "let", "const" } }),
				},
				css = {
					augend.hexcolor.new({
						case = "lower",
					}),
					augend.hexcolor.new({
						case = "upper",
					}),
				},
				markdown = {
					augend.constant.new({
						elements = { "[ ]", "[x]" },
						word = false,
						cyclic = true,
					}),
					augend.misc.alias.markdown_header,
				},
				json = {
					augend.semver.alias.semver,
				},
				lua = {
					augend.constant.new({
						elements = { "and", "or" },
						word = true,
						cyclic = true,
					}),
				},
				python = {
					augend.constant.new({
						elements = { "and", "or" },
					}),
				},
			},
		}
	end,
	config = function(_, opts)
		for name, group in pairs(opts.groups) do
			if name ~= "default" then
				vim.list_extend(group, opts.groups.default)
			end
		end
		require("dial.config").augends:register_group(opts.groups)
		vim.g.dials_by_ft = opts.dials_by_ft
	end,
}
