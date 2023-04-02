-- https://github.com/RRethy/vim-illuminate

local M = {}

function M.get(spec, config, opts)
  return {
    illuminatedWord = { link = "LspReferenceText" },
    illuminatedCurWord = { link = "LspReferenceText" },
    IlluminatedWordText = { link = "LspReferenceText" },
    IlluminatedWordRead = { link = "LspReferenceRead" },
    IlluminatedWordWrite = { link = "LspReferenceWrite" },
  }
end

return M
