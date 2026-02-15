-- Configure Hexokinase plugin
return {
  "RRethy/vim-hexokinase",
  run = "make hexokinase",  -- This builds the plugin after installation
  config = function()
    -- Set the Hexokinase highlighter to virtual
    vim.g.Hexokinase_highlighters = { "virtual" }
  end,
}

