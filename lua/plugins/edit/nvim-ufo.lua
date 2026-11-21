return {
	"kevinhwang91/nvim-ufo",
	dependencies = {
		"kevinhwang91/promise-async",
	},
	event = "BufReadPost",
	keys = {
		{
			"zP",
			function()
				require("ufo").peekFoldedLinesUnderCursor()
			end,
			desc = "ufo: preview fold",
		},
	},
	init = function()
		vim.o.foldcolumn = "1"
		vim.o.foldlevel = 99
		vim.o.foldlevelstart = 99
		vim.o.foldenable = true
	end,
	opts = {
		provider_selector = function(bufnr, filetype, buftype)
			local has_lsp = #vim.lsp.get_clients({ bufnr = bufnr }) > 0
			if has_lsp then
				return { "lsp", "indent" }
			end
			return { "treesitter", "indent" }
		end,
		fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
			local newVirtText = {}
			local suffix = ("   󰁂 %d lines"):format(endLnum - lnum)
			local sufWidth = vim.fn.strdisplaywidth(suffix)
			local targetWidth = width - sufWidth
			local curWidth = 0
			for _, chunk in ipairs(virtText) do
				local chunkText = chunk[1]
				local chunkWidth = vim.fn.strdisplaywidth(chunkText)
				if targetWidth > curWidth + chunkWidth then
					table.insert(newVirtText, chunk)
				else
					chunkText = truncate(chunkText, targetWidth - curWidth)
					table.insert(newVirtText, { chunkText, chunk[2] })
					break
				end
				curWidth = curWidth + chunkWidth
			end
			table.insert(newVirtText, { suffix, "Comment" })
			return newVirtText
		end,
	},
}
