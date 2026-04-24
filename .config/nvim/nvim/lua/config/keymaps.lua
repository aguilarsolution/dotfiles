-- configuracion de key binds personalisadas de un video puedo modificarlo, originalmente el erchivo estaba vacio

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- comando
--keymap.set("n","x", '"_x')

-- Increment/Increment
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
--keymap.set("n", "<Leader>w", ":update<Return>", opts)
--keymap.set("n", "<Leader>q", ":quit<Return>", opts)
--keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- Tabs
--keymap.set("n", "te", ":tabedit")
--keymap.set("n", "<tab>", ":tabnext<Return>", opts)
--keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
--keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Retunr>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostics.goto_next()
end, opts)
