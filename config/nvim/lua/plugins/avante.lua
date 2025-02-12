return {
  {
    "yetone/avante.nvim",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "zbirenbaum/copilot.lua",
    },
    build = "make",
    config = function()
      local opts = { provider = "copilot" }
      local has_openai_proxy_details = vim.fn.filereadable(vim.fn.expand("~/.oai-proxy-details"))

      if has_openai_proxy_details == 1 then
        local openai = require("avante.providers.openai")
        opts.provider = "shopify"
        opts.vendors = {
          ["shopify"] = {
            endpoint = "https://proxy.shopify.ai/v3/v1",
            model = "anthropic:claude-3-5-sonnet",
            api_key_name = "cmd:openai_key cat",
            parse_curl_args = openai.parse_curl_args,
            parse_response_data = openai.parse_response,
          },
        }
      end

      require("avante").setup(opts)
    end,
  },
}
