local wk = require("which-key")

local Terminal = require ('toggleterm.terminal').Terminal
local toggle_float = function ()
  local float = Terminal:new({direction = "float"})
  return float:toggle()
end

local toggle_lazygit = function ()
  local lazygit = Terminal:new({cmd = 'lazygit',direction = "float"})
  return lazygit:toggle()
end

  local mappings = {
  q = {":q<CR>", "Quit"},
  Q = {":wq<CR>", "Save & Quite"},
  w = {":w<CR>", "Save"},
  x = {":bdelete<CR>", "Close"},
  E = {":e ~/appdata/local/nvim/init.lua<CR>", "Edit Config"},
  f = {":Telescope find_files<CR>", "Telescope Find Files"},
  r = {":Telescope live_grep<CR>", "Telescope Live Grep"},

  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
    K = {"<cmd>Lspsaga hover_doc<cr>", "Hover Commands"},
    w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder"},
    W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder"},
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    },
    t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>', "Type Definition"},
    d = {'<cmd>lua vim.lsp.buf.definition()<cr>', "Go To Definition"},
    D = {'<cmd>lua vim.lsp.buf.declaration()<cr>', "Go To Declaration"},
    r = {'<cmd>lua vim.lsp.buf.references()<cr>', "References"},
    R = {'<cmd>Lspsaga rename<cr>', "Rename"},
    a = {'<cmd>Lspsaga code_action<cr>', "Code Action"},
    e = {'<cmd>Lspsaga show_line_diagnostics<cr>', "Show Line Diagnostics"},
    n = {'<cmd>Lspsaga diagnostic_jump_next<cr>', "Go To Next Diagnostic"},
    N = {'<cmd>Lspsaga diagnostic_jump_prev<cr>', "Go To Previous Diagnostic"}
  },
  t = {
    name = "Terminal",
    t = {":ToggleTerm<CR>", "Split Below"},
    f = {toggle_float, "Floating Terminal"},
   l = {toggle_lazygit, "LazyGit Terminal"}
  },
  c = {
    name = "Comment Text",
     l = {":CommentToggle<CR>", "Comment Line"},
     c = {":Comment<CR>", "Comment Selection"}
  },
  o = {
    name = "Colorizer",
    o = {":ColorizerToggle<CR>", "Colorizer File"}
  },
  b = {
    name = "Buffer",
    n = {":BufferLineCycleNext<CR>", "Buffer Next"},
    p = {":BufferLineCyclePrev<CR>", "Buffer Prev"},
    cl = {":BufferLineCloseLeft<CR>", "Buffer Close Left"},
    cr = {":BufferLineCloseRight<CR>", "Buffer Close Right"}
  },
  s = {
    name = "Split File",
    r = {":vsplit<CR>", "Split File To Right"},
    b = {":split<CR>", "Split Fole To Bottom"}
  },
  S ={
    name = "Locate Words",
    s = {"/", "Locate Word"}
  }
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
