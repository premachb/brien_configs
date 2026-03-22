return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  cmd = { "Obsidian" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Brien Obsidian Vault",
      },
    },

    daily_notes = {
      enabled = true,
      folder = "daily",
      date_format = "%Y-%m-%d",
      default_tags = { "daily" },
    },

    templates = {
      folder = "templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },

    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },

    picker = {
      name = "telescope.nvim",
    },

    -- Use title as filename, fall back to timestamp
    note_id_func = function(title)
      if title ~= nil then
        return title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        return tostring(os.time())
      end
    end,

    preferred_link_style = "wiki",

    attachments = {
      folder = "assets/imgs",
    },

    legacy_commands = false,

    -- Disable built-in UI since render-markdown.nvim handles rendering
    ui = {
      enable = false,
    },
  },
  keys = {
    { "<leader>oo", "<cmd>Obsidian quick_switch<cr>", desc = "Open note" },
    { "<leader>on", "<cmd>Obsidian new<cr>", desc = "New note" },
    { "<leader>ot", "<cmd>Obsidian today<cr>", desc = "Today's daily note" },
    { "<leader>oy", "<cmd>Obsidian today -1<cr>", desc = "Yesterday's daily note" },
    { "<leader>od", "<cmd>Obsidian dailies<cr>", desc = "Browse daily notes" },
    { "<leader>os", "<cmd>Obsidian search<cr>", desc = "Search vault" },
    { "<leader>ob", "<cmd>Obsidian backlinks<cr>", desc = "Backlinks" },
    { "<leader>ol", "<cmd>Obsidian link<cr>", desc = "Link to note", mode = "v" },
    { "<leader>oe", "<cmd>Obsidian extract_note<cr>", desc = "Extract to note", mode = "v" },
    { "<leader>og", "<cmd>Obsidian tags<cr>", desc = "Search tags" },
    { "<leader>op", "<cmd>Obsidian template<cr>", desc = "Insert template" },
    { "<leader>or", "<cmd>Obsidian rename<cr>", desc = "Rename note" },
    { "<leader>oc", "<cmd>Obsidian toggle_checkbox<cr>", desc = "Toggle checkbox" },
    { "<leader>oi", "<cmd>Obsidian paste_img<cr>", desc = "Paste image" },
  },
}
