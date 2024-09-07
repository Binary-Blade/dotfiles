-- For plugins keymaps only
local PLUGINS = {}
local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Copilot keymaps
function PLUGINS.copilot_keymaps()
  set('n', '<leader>cc', ':lua ToggleCopilot()<CR>', { desc = '[C]ode Toggle [C]opilot' })
end

-- TodoComment keymaps
function PLUGINS.todo_keymaps()
  set('n', '<leader>ft', '<CMD>TodoTelescope keywords=TODO,FIX,WARNING,HACK<CR>',
    vim.tbl_extend('force', opts, { desc = '[F]ind Todo' }))
  set('n', '<leader>fn', '<CMD>TodoTelescope keywords=NOTE<CR>',
    vim.tbl_extend('force', opts, { desc = '[F]ind Todo: NOTE' }))
end

-- Oil keymaps
function PLUGINS.oil_keymaps()
  set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
end

-- Telescope keymap
function PLUGINS.telescope_keymaps()
  -- See `:help telescope.builtin`
  local builtin = require 'telescope.builtin'

  -- Search
  set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
  set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
  set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
  set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
  set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })

  -- Buffer
  set('n', '<leader>fb', builtin.buffers, { desc = '[B]uffers Find [B]uffers' })
  -- Find
  set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
  set('n', '<leader>ff', builtin.find_files, { desc = '[F]find [F]iles' })
  set('n', '<leader>fr', builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
  set('n', '<leader>fc', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
  end, { desc = '[F]ind [C]onfig files' })

  set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 0,
      previewer = false,
    })
  end, { desc = '[/] Fuzzily search in current buffer' })

  --  See `:help telescope.builtin.live_grep()` for information about particular keys
  set('n', '<leader>so', function()
    builtin.live_grep {
      grep_open_files = true,
      prompt_title = 'Live Grep in Open Files',
    }
  end, { desc = '[S]earch in [O]pen Files' })
end

-- Debugger
-- set('n', '<leader>db', '<Cmd>DapToggleBreakPoint<CR>', { desc = '[D]ebugger Add [B]reakpoint' }, opts)
-- set('n', '<leader>dc', '<Cmd>DapContinue<CR>', { desc = '[D]ebugger Start or [C]ontinue' }, opts)

function PLUGINS.setup()
  PLUGINS.copilot_keymaps()
  PLUGINS.todo_keymaps()
  PLUGINS.oil_keymaps()
end

return PLUGINS
