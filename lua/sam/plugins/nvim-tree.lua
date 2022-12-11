local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

local config_status_ok, nvimtree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvimtree_config.nvim_tree_callback

-- recommended settings from nvim-tree
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF]])

nvimtree.setup({
  view = {
    mappings = {
      custom_only = false,
      list = {
        { key = {"l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        -- { key = "v", cb = tree_cb "vsplit" }, 
      }
    }
  },
  actions = {
    open_file = {
      window_picker = {
        enable = false
      }
    }
  }
})
