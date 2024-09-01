<p align="center">
  <img src="https://preview.redd.it/i-made-a-neovim-icon-for-macos-download-link-in-comments-v0-w00sqfdjcvxa1.png?width=1024&format=png&auto=webp&s=99650e7810611084789c86c4554121929484dcb6" width="100" alt="project-logo">
</p>
<p align="center">
    <h1 align="center">BINARYVIM</h1>
</p>
<p align="center">
    <em>Code enhancement, efficiency redefined.</em>
</p>
<p align="center">
	<img src="https://img.shields.io/github/license/Binary-Blade/binaryvim?style=default&logo=opensourceinitiative&logoColor=white&color=0080ff" alt="license">
	<img src="https://img.shields.io/github/last-commit/Binary-Blade/binaryvim?style=default&logo=git&logoColor=white&color=0080ff" alt="last-commit">
	<img src="https://img.shields.io/github/languages/top/Binary-Blade/binaryvim?style=default&color=0080ff" alt="repo-top-language">
	<img src="https://img.shields.io/github/languages/count/Binary-Blade/binaryvim?style=default&color=0080ff" alt="repo-language-count">
<p>
<p align="center">
	<!-- default option, no dependency badges. -->
</p>

<br><!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary><br>

- [ Overview](#-overview)
- [ Features](#-features)
- [ Repository Structure](#-repository-structure)
- [ Modules](#-modules)
- [ Getting Started](#-getting-started)
  - [ Installation](#-installation)
  - [ Usage](#-usage)
  - [ Tests](#-tests)
- [ Project Roadmap](#-project-roadmap)
- [ Contributing](#-contributing)
- [ License](#-license)
- [ Acknowledgments](#-acknowledgments)
</details>
<hr>

##  Overview

**BinaryVim** is my personal Neovim configuration project designed to enhance the code editing experience. 
It features a rich assortment of plugins, UI enhancements for indenting, to-do lists, and custom themes. 
The project streamlines database integration, testing workflows, debugging setups, and key mappings for efficient development. 
With a strong focus on improving productivity and customization, Binaryvim aims to provide a seamless and feature-rich environment for software engineers.

---

##  Features

|    |   Feature        | Description |
|----|------------------|---------------------------------------------------------------|
| ⚙️  | **Architecture** | The project uses Lua and follows a modular architecture with lazy loading and various plugins for UI, navigation, database, etc. It enhances code editing experience in Neovim with custom features and configurations. |
| 🔩 | **Code Quality** | The codebase maintains a high code quality standard with consistent style and structure. It follows best practices in Lua programming and plugin development, ensuring readability and maintainability. |
| 📄 | **Documentation** | The project provides detailed documentation for various features, plugins, and configurations. It includes explanations, setup instructions, and usage examples, helping users understand and customize the project effectively. |
| 🔌 | **Integrations** | Key integrations include plugins like nvim-treesitter, LSP servers, Telescope, and more. External dependencies are managed efficiently to enhance code highlighting, editing, navigation, and overall functionality within Neovim. |
| 🧩 | **Modularity** | The codebase is highly modular, allowing easy extension and reusability of components. Plugins are organized into separate modules, enhancing separation of concerns and making it convenient to add or remove functionalities. |
| 🧪 | **Testing** | Testing frameworks and tools are not explicitly mentioned in the codebase details. However, the project likely follows manual testing practices or integrates testing tools compatible with Neovim plugins. |
| ⚡️  | **Performance** | The project focuses on efficiency by implementing lazy loading and optimizing plugin configurations. It aims to provide a fast and responsive editing experience, minimizing resource usage and ensuring smooth operation within Neovim. |
| 🛡️ | **Security** | Security measures such as data protection and access control are not discussed in the codebase details. However, it's important for the project to consider security best practices when handling sensitive data or external integrations. |
| 📦 | **Dependencies** | The project relies on external libraries like Lua for scripting capabilities. Key dependencies include various Neovim plugins for UI enhancements, navigation, testing, database integration, and more. |

---

##  Repository Structure

```sh
└── binaryvim/
    ├── README.md
    ├── init.lua
    └── lua
        ├── core
        └── plugins
```

---

##  Modules

<details closed><summary>.</summary>

| File                                                                       | Summary                                                   |
| ---                                                                        | ---                                                       |
| [init.lua](https://github.com/Binary-Blade/binaryvim/blob/master/init.lua) | Implements lazy loading mechanism by requiring core.lazy. |

</details>

<details closed><summary>lua.plugins.ui</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                                                                                                                          |
| ---                                                                                                       | ---                                                                                                                                                                                                                                                                                                              |
| [indent_line.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/ui/indent_line.lua)   | Implements indent guides on blank lines using lukas-reineke/indent-blankline.nvim plugin. Enhances code readability in binaryvim's plugin architecture.                                                                                                                                                          |
| [todo-comment.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/ui/todo-comment.lua) | Implements Todo Comments UI feature using folke/todo-comments.nvim with plenary.nvim dependency. Enables visual signs display. Located in lua/plugins/ui/todo-comment.lua.                                                                                                                                       |
| [noice.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/ui/noice.lua)               | Implements custom UI configurations for noice.nvim plugin. Sets up specific views like cmdline popup and popup menu with styling options. Dependencies include nui.nvim. Part of the plugins module within the binaryvim repository.                                                                             |
| [lualine.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/ui/lualine.lua)           | Defines Lualine config for status line in Neovim. Implements mode-specific icons and LSP server status. Customizes theme and section layout for improved code editing experience.                                                                                                                                |
| [obsidian.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/ui/obsidian.lua)         | Implements custom Obsidian features for markdown notes. Customizes workspace paths, completion settings, wiki link formatting, note ID generation, markdown link formatting, frontmatter, templates, tags interface, and key mappings for the Telescope picker.                                                  |
| [vim-sleuth.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/ui/vim-sleuth.lua)     | Automates detection of tabstop and shiftwidth settings dynamically with tpope/vim-sleuth plugin.                                                                                                                                                                                                                 |
| [treesitter.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/ui/treesitter.lua)     | Enables code highlighting, editing, and navigation using nvim-treesitter. Configures automatic installation of language parsers for various file types and provides options for incremental selection and context display. Enhances development experience within the binaryvim repositorys plugin architecture. |

</details>

<details closed><summary>lua.plugins.navigation</summary>

| File                                                                                                        | Summary                                                                                                                                                                                                                               |
| ---                                                                                                         | ---                                                                                                                                                                                                                                   |
| [alpha.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/navigation/alpha.lua)         | Enhance dashboard appearance and functionality by incorporating navigation buttons and a customized header/footer. Displays find/recent files, config options, and quit button for a visually appealing and practical interface.      |
| [barbar.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/navigation/barbar.lua)       | Implements customizable buffer navigation with icons, git status, and diagnostic symbols for Barbar.nvim plugin. Enables seamless keyboard shortcuts for buffer management, enhancing the UI/UX of the repositorys navigation system. |
| [telescope.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/navigation/telescope.lua) | Implements configuration and extensions for a telescope plugin in the navigation section. Sets up mappings and themes, loads necessary extensions, and defines keymaps.                                                               |
| [which-key.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/navigation/which-key.lua) | Implements dynamic key mappings using which-key. Enhances navigation in the binaryvim repository. Grouped by various functional areas for intuitive keybinds.                                                                         |
| [neotree.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/navigation/neotree.lua)     | Implements Neotree navigation in the `binaryvim` repository. Enables toggling Neotree with `<leader>e` keymap. Dependencies include `plenary.nvim`, `nvim-web-devicons`, and `nui.nvim`.                                              |

</details>

<details closed><summary>lua.plugins.database</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                                                                                     |
| ---                                                                                                       | ---                                                                                                                                                                                                                                                                         |
| [dadbob-ui.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/database/dadbob-ui.lua) | Implements database UI integration with key mappings and configurations. Manages dependencies for vim-dadbod and vim-dadbod-completion plugins. Initializes DBUI with custom settings for Nerd fonts and window position, along with a leader key mapping for quick access. |

</details>

<details closed><summary>lua.plugins.configs</summary>

| File                                                                                                                         | Summary                                                                                                                                                                                                                                                                                                                     |
| ---                                                                                                                          | ---                                                                                                                                                                                                                                                                                                                         |
| [comment.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/comment.lua)                         | Enables custom commenting behavior via numToStr/Comment.nvim plugin in binaryvim, enhancing code readability and maintainability. Accepts optional configurations for tailored commenting experience in the editor.                                                                                                         |
| [autoclose.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/autoclose.lua)                     | Implements autoclosing functionality using m4xshen/autoclose.nvim. It configures autoclose plugin settings.                                                                                                                                                                                                                 |
| [conform.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/conform.lua)                         | Implements code formatting settings using stevearc/conform.nvim plugin. Configures formatting options, file type-specific formatters, and format-on-save behavior. Enhances code consistency and readability in the binaryvim repository's architecture.                                                                    |
| [vim-test.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/vim-test.lua)                       | Enhances testing capabilities with keymaps for quick test run commands. Handles dependencies and sets test strategy, optimizing test workflow. Aiming to streamline test execution and improve developer productivity in the BinaryVim repository.                                                                          |
| [cmp-completions.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/cmp-completions.lua)         | Implements configuration for completion plugins in `cmp-completions.lua`. Configures code completion behavior, integrates LuaSnip for snippets, and tracks Copilot state globally. Enhances completion with tab navigation, snippet expansion, and source selection in the parent repositorys architecture.                 |
| [nvim-dap.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/nvim-dap.lua)                       | Implements debug configurations and keymaps for nvim-dap plugin. Ensures debugger setup and provides UI customization. Configures handlers for different languages. Enables viewing last session result.                                                                                                                    |
| [toggleterm.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/toggleterm.lua)                   | Implements** terminal toggling functionality with lazygit, lazydocker, and a virtual terminal. **Creates** custom keybindings and settings for each terminal instance, enhancing the user experience and productivity within the Vim environment.                                                                           |
| [mini.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/mini.lua)                               | Enhances mini.nvim plugin with advanced text object selections, surround manipulations, and scope-based selections. Mini-ai for text object improvements, Mini-surround for surround operations, and Mini-indentscope for scope selection. Optional Mini-statusline for a simple statusline. Visit GitHub for more details. |
| [nvim-tmux-navigator.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/nvim-tmux-navigator.lua) | Enables seamless navigation between Vim and tmux panes using key bindings. Improves developer productivity by simplifying window movements. Complements the overall structure of the binaryvim repository for enhanced developer experience.                                                                                |
| [chatgpt.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/chatgpt.lua)                         | Enhances ChatGPT integration. Configures API keys and parameters for prompt generation. Dependencies ensure seamless functionality with Nvim plugins.                                                                                                                                                                       |
| [lsp-config.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/configs/lsp-config.lua)                   | Enables LSP server configuration for various languages in Neovim using customizable capabilities. Sets up key mappings for popular LSP actions and ensures installation of specified servers. Enhances LSP functionality for effective code navigation and editing.                                                         |

</details>

<details closed><summary>lua.plugins.themes</summary>

| File                                                                                                      | Summary                                                                                                                                                                                                                             |
| ---                                                                                                       | ---                                                                                                                                                                                                                                 |
| [catppuccin.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/themes/catppuccin.lua) | Implements Catppuccino theme configuration with integration options for a Neovim setup. Enables custom flavor, transparent background, and theme integrations like completion, version control indicators, and syntax highlighting. |

</details>

<details closed><summary>lua.plugins.archived</summary>

| File                                                                                                        | Summary                                                                                                                                                                                                                                                                                            |
| ---                                                                                                         | ---                                                                                                                                                                                                                                                                                                |
| [lspsaga.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/lspsaga.lua)       | Improve lspsaga UI experience by customizing code actions presentation, and managing dependencies for nvimdev/lspsaga.nvim.                                                                                                                                                                        |
| [laravel.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/laravel.lua)       | Enables Laravel integration with essential commands and key mappings, utilizing laravel.nvim plugin. Dependencies include telescope.nvim and vim-dotenv. Configured for lazy loading with predefined events.                                                                                       |
| [null-ls.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/null-ls.lua)       | Enables integration of jose-elias-alvarez/null-ls.nvim for formatting and linting in Neovim. Configures null-ls with various built-in sources for styling formats, error diagnostics, and spell checking for specific file types, enhancing Neovim's capabilities within the project architecture. |
| [health.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/health.lua)         | Validates Neovim version and system essentials, providing health status messages. Enables quick system check and highlights necessary upgrades for smooth functioning.                                                                                                                             |
| [debugging.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/debugging.lua)   | Enables automated debugger setup for multiple languages using mason-nvim-dap. Handles debug configurations and installations seamlessly. Helps streamline debugging workflows for PHP, Bash, and Python.                                                                                           |
| [bufferline.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/bufferline.lua) | Implements buffer management UI with sleek styling, colorful icons, and diagnostic indicators. Provides custom commands for closing and navigating buffers, along with keybindings for efficient buffer cycling and closing actions.                                                               |

</details>

<details closed><summary>lua.plugins.archived.themes</summary>

| File                                                                                                                   | Summary                                                                                                                                                                                                                   |
| ---                                                                                                                    | ---                                                                                                                                                                                                                       |
| [mellifious.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/themes/mellifious.lua)     | Implements Mellifluous theme setup and configuration. Controls theme activation and customization. Located in lua/plugins/archived/themes/mellifious.lua within binaryvim repository.                                     |
| [rose-pine.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/themes/rose-pine.lua)       | Enables the rose-pine theme in Neovim, offering customization options like color variant and transparency settings. Integrated within the repository's theme architecture for aesthetics and individual user preferences. |
| [kanagawa.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/themes/kanagawa.lua)         | Enables Kanagawa theme in Neovim with customizable transparent background and predefined color scheme kanagawa-wave.                                                                                                      |
| [gruvbox-baby.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/plugins/archived/themes/gruvbox-baby.lua) | Implements gruvbox-baby theme settings and enables it with a dark background color within the architecture of the binaryvim repository.                                                                                   |

</details>

<details closed><summary>lua.core</summary>

| File                                                                                        | Summary                                                                                                                                                                                                                                                                          |
| ---                                                                                         | ---                                                                                                                                                                                                                                                                              |
| [keymaps.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/core/keymaps.lua)   | Defines key mappings for navigation, debugging, and code search; handles text yanking highlighting; integrates with Telescope for searching, navigation, and file finding. Organizes keymaps for efficient developer workflow.                                                   |
| [lazy.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/core/lazy.lua)         | Implements lazy-loading for plugins using lazy.nvim. Dynamically manages plugin setup and updates, enhancing modularity and performance in binaryvims architecture.                                                                                                              |
| [settings.lua](https://github.com/Binary-Blade/binaryvim/blob/master/lua/core/settings.lua) | Defines global settings for Neovim, focusing on UI, editor behavior, file management, performance, and window handling. Sets options for line numbers, whitespace, keybindings, and more. Enhances productivity and customization within the binaryvim repositorys architecture. |

</details>

---

##  Getting Started

**System Requirements:**

* **Lua**: `version x.y.z`

###  Installation

<h4>From <code>source</code></h4>

> 1. Clone the binaryvim repository:
>
> ```console
> $ git clone https://github.com/Binary-Blade/binaryvim
> ```
>
> 2. Change to the project directory:
> ```console
> $ cd binaryvim
> ```
>
> 3. Install the dependencies:
> ```console
> $ luarocks install --only-deps myapp
> ```

###  Usage

<h4>From <code>source</code></h4>

> Run binaryvim using the command below:
> ```console
> $ lua main.lua
> ```

###  Tests

> Run the test suite using the command below:
> ```console
> $ Insert test command.
> ```

---

##  License

This project is personnal project.

---

[**Return**](#-overview)

---
