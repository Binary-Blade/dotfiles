return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
    'williamboman/mason.nvim',
    'jay-babu/mason-nvim-dap.nvim',
    'mfussenegger/nvim-dap-python',
  },
  opts = {
    automatic_setup = true,
    handlers = {
      function(config)
        require('mason-nvim-dap').default_setup(config)
      end,
      php = function(config)
        config.configurations = {
          {
            type = 'php',
            request = 'launch',
            name = 'Listen for Xdebug',
            port = 9003,
            pathMappings = {
              ['${workspaceFolder}'] = '${workspaceFolder}',
              ['/var/www/html'] = '${workspaceFolder}',
            },
          },
        }
        require('mason-nvim-dap').default_setup(config)
      end,
    },
    ensure_installed = {
      'php',
      'codelldb',
      'bash',
      'python',
    },
  },
  config = function()
    local dap = require('dap')
    local dapui = require('dapui')

    dap.set_log_level('DEBUG')


    -- Mason-Nvim-DAP setup
    require('mason-nvim-dap').setup {
      automatic_setup = true,
      handlers = {}, -- Add specific handlers if needed
      ensure_installed = {
        'codelldb',
        'php',
        'typescript-language-server',
        'vue-language-server',
        'pyright',
        'python',
        'debugpy',
      },
    }

    -- Python configuration
    require('dap-python').setup('~/.local/share/nvim/mason/packages/debugpy/venv/bin/python', {
      include_configs = true,
    })

    -- DAP listeners
    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close
    dap.listeners.after.event_exited['dapui_config'] = function()
      print('Event exited')
    end

    -- Custom DAP configuration for Python
    dap.adapters.python = {
      type = 'executable',
      command = '/Users/binary/.local/share/nvim/mason/packages/debugpy/venv/bin/python',
      args = { '-m', 'debugpy.adapter' },
    }
    dap.configurations.python = {
      {
        type = 'python',
        request = 'launch',
        name = 'Launch file',
        program = '${file}',
        pythonPath = function()
          return '/Users/binary/.local/share/nvim/mason/packages/debugpy/venv/bin/python'
        end,
      },
    }

    -- Custom event handlers for debugpy
    dap.listeners.before.event_terminated['custom_debugpy'] = function()
      print('Debugpy session terminated')
    end
    dap.listeners.before.event_exited['custom_debugpy'] = function()
      print('Debugpy session exited')
    end
    dap.listeners.before.event_stopped['custom_debugpy'] = function()
      print('Debugpy session stopped')
    end

    vim.fn.execute('let g:dap_log_level = "DEBUG"')
    vim.fn.execute('let g:dap_python_log_level = "DEBUG"')


    -- Keymaps for debugging
    local keymaps = {
      { 'n', '<leader>ds', dap.continue,                                                              { desc = '[D]ebug: [S]tart/Continue' } },
      { 'n', '<leader>di', dap.step_into,                                                             { desc = '[D]ebug: Step [I]nto' } },
      { 'n', '<leader>do', dap.step_over,                                                             { desc = '[D]ebug: Step [O]ver' } },
      { 'n', '<leader>dO', dap.step_out,                                                              { desc = '[D]Debug: Step [o]ut' } },
      { 'n', '<leader>db', dap.toggle_breakpoint,                                                     { desc = '[D]ebug: Toggle [B]reakpoint' } },
      { 'n', '<leader>dB', function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, { desc = '[D]ebug: Set [B]reakpoint' } },
      { 'n', '<F7>',       dapui.toggle,                                                              { desc = 'Debug: See last session result.' } },
    }

    for _, map in ipairs(keymaps) do
      vim.keymap.set(map[1], map[2], map[3], map[4])
    end

    -- DAP UI setup
    dapui.setup {
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    }
  end,
}
