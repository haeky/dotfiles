return {
  {
    "yetone/avante.nvim",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local openai = require("avante.providers.openai")

      require("avante").setup({
        -- @type AvanteProvider
        provider = "shopify-ai",
        vendors = {
          ["shopify-ai"] = {
            endpoint = "https://proxy.shopify.ai/v3/v1",
            model = "anthropic:claude-3-5-sonnet",
            api_key_name = "cmd:openai_key cat",
            parse_curl_args = openai.parse_curl_args,
            parse_response_data = openai.parse_response,
          },
        },
      })
    end,
  },
}
