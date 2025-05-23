return {
	{
		'junegunn/vim-easy-align',
		config = function()
			local function easy_align_on_char()
					vim.ui.input({ prompt = 'Pattern align: ' },function(pat)
							if not pat or pat == '' then  -- 使用者按 <Esc> 直接取消
									return
							end
						-- 視覺選段 + 執行 EasyAlign
						vim.cmd('normal! vip')
						vim.cmd("'<,'>EasyAlign /" .. vim.fn.escape(pat, '/\\') .."/")
					end)
			end
			vim.keymap.set('n', '<A-x>', easy_align_on_char, { silent = true })
		end
	},
}