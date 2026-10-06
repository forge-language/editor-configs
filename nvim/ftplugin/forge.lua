if vim.b.did_forge_ftplugin then
  return
end
vim.b.did_forge_ftplugin = true

vim.bo.commentstring = '// %s'

local function find_root(start_path)
  local found = vim.fs.find({ '.git', 'CMakeLists.txt' }, { upward = true, path = start_path })[1]
  if found then
    return vim.fs.dirname(found)
  end
  return vim.fn.getcwd()
end

local bufname = vim.api.nvim_buf_get_name(0)
local root_dir = find_root(bufname)

local cmd = vim.g.forge_lsp_path
if not cmd or cmd == '' then
  cmd = vim.fn.exepath('forge-lsp')
end
if not cmd or cmd == '' then
  return
end

vim.lsp.start({
  name = 'forge-lsp',
  cmd = { cmd },
  root_dir = root_dir,
})
