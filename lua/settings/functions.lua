local M = {}

function M.smart_quit()
  local bufnr = vim.api.nvim_get_current_buf()
  local modified = vim.bo[bufnr].modified
  if modified then
    vim.ui.input({
      prompt = "You have unsaved changes. Quit anyway? (y/n) ",
    }, function(input)
      if input == "y" then
        vim.cmd("q!")
      end
    end)
  else
    vim.cmd("q!")
  end
end

M.spell_files = {
  en = vim.fs.abspath("~/.config/nvim/spell/en.utf-8.add"),
  ru = vim.fs.abspath("~/.config/nvim/spell/ru.utf-8.add"),
}

-- Add the word under the cursor to a specific language's .add file.
-- :spellgood (no bang) writes to 'spellfile' and rebuilds its .spl automatically.
function M.add_to_spell(lang)
  local path = M.spell_files[lang]
  if not path then
    return
  end

  local word = vim.fn.expand("<cword>")
  if word == "" then
    return
  end

  local spelllang = vim.opt_local.spelllang:get()
  local spellfile = vim.opt_local.spellfile:get()
  vim.opt_local.spelllang = { lang }
  vim.opt_local.spellfile = { path }
  vim.cmd("silent spellgood " .. vim.fn.fnameescape(word))
  vim.opt_local.spelllang = spelllang
  vim.opt_local.spellfile = spellfile

  vim.notify(("Added %q to the %s dictionary"):format(word, lang), vim.log.levels.INFO)
end

-- Pick the dictionary by the word's script: Cyrillic -> ru, otherwise -> en.
function M.smart_add_to_spell()
  local word = vim.fn.expand("<cword>")
  local lang = word:find("[\208-\209]") and "ru" or "en"
  M.add_to_spell(lang)
end

return M
