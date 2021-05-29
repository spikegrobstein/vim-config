lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'bash',
    'c',
    'css',
    'elixir',
    'go',
    'graphql',
    'html',
    'javascript',
    'jsdoc',
    'json',
    'regex',
    'ruby',
    'rust',
    'toml',
    'tsx',
    'typescript',
    'yaml',
    }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = {  }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = {},  -- list of language that will be disabled
  },
}
EOF

