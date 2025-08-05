return {
  {
    "williamboman/mason.nvim",
    opts = {
      -- Don't add jdtls (Java) to this as that is installed and managed by the nvim-java plugin
      -- These are the ones that are not supported in mason-lspconfig.
      ensure_installed = {
        "markdownlint",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      -- Don't add jdtls (Java) to this as that is installed and managed by the nvim-java plugin
      ensure_installed = {
        "bashls",
        "cssls",
        "eslint",
        "gopls",
        "helm_ls",
        "html",
        "jsonls",
        "marksman",
        "phpactor",
        "tsserver",
        "volar",
      },
    },
    handlers = {
      -- default handler (optional)
      function(server_name)
        require("lspconfig")[server_name].setup({})
      end,

      -- language-server specific setup handlers.
      --
      -- This is no longer required but is an example of how to write a handler
      -- ["volar"] = function()
      --   require("lspconfig").volar.setup({
      --     filetypes = { "vue", "javascript", "typescript", "typescriptreact", "javascriptreact" },
      --     init_options = {
      --       vue = {
      --         hybridMode = false,
      --       },
      --       typescript = {
      --         tsdk = vim.fn.getcwd() .. "node_modules/typescript/lib",
      --       },
      --     },
      --   })
      -- end,
    },
  },
  {
    "nvim-lspconfig",
    keys = {
      { "<leader>ce", "<cmd>EslintFixAll<cr>", desc = "ESLint Fix All" },
    },
    opts = {
      setup = {
        tsserver = function(_, opts)
          local mason_registry = require("mason-registry")
          local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
            .. "/node_modules/@vue/language-server"

          opts.init_options = {
            plugins = {
              {
                name = "@vue/typescript-plugin",
                location = vue_language_server_path,
                languages = { "vue" },
              },
            },
          }
          opts.filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" }
        end,
      },
    },
  },
}
