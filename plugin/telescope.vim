lua << EOF
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix = ' >',
    color_devicons = true,

    file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

    mappings = {
      i = {
        ["<C-x>"] = false,
        ["<C-s>"] = actions.goto_file_selection_split,
        ["<C-q>"] = actions.send_to_qflist,
      },
    }
  },
  extensions = {
      fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
      }
  }
}

require('telescope').load_extension('fzy_native')
EOF

nnoremap <leader><silent>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader><silent>ff :lua require('telescope.builtin').find_files()<CR>

nnoremap <leader><silent>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader><silent>fb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader><silent>vh :lua require('telescope.builtin').help_tags()<CR>

nnoremap <leader><silent>gh <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader><silent>gb <cmd>lua require('telescope.builtin').git_branches()<cr>
nnoremap <leader><silent>gs <cmd>lua require('telescope.builtin').git_status()<cr>
nnoremap <leader><silent>gg <cmd>lua require('telescope.builtin').git_files()<CR>
