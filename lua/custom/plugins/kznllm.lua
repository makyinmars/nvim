return {
  'chottolabs/kznllm.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function(self)
    local kznllm = require 'kznllm'
    local spec_anthropic = require 'kznllm.specs.anthropic'
    local spec_groq = require 'kznllm.specs.openai'
    kznllm.TEMPLATE_DIRECTORY = vim.fn.expand(self.dir) .. '/templates/'

    local function llm_anthropic_fill()
      kznllm.invoke_llm({
        { role = 'system', prompt_template = spec_anthropic.PROMPT_TEMPLATES.FILL_MODE_SYSTEM_PROMPT },
        { role = 'user', prompt_template = spec_anthropic.PROMPT_TEMPLATES.FILL_MODE_USER_PROMPT },
      }, spec_anthropic.make_job)
    end

    local function llm_groq_fill()
      kznllm.invoke_llm({
        { role = 'system', prompt_template = spec_groq.PROMPT_TEMPLATES.GROQ.FILL_MODE_SYSTEM_PROMPT },
        { role = 'user', prompt_template = spec_groq.PROMPT_TEMPLATES.GROQ.FILL_MODE_USER_PROMPT },
      }, spec_groq.make_job)
    end

    vim.keymap.set({ 'n', 'v' }, '<leader>kab', llm_anthropic_fill, { desc = 'Send current selection to LLM ANTHROPIC llm_fill' })
    vim.keymap.set({ 'n', 'v' }, '<leader>kgb', llm_groq_fill, { desc = 'Send current selection to LLM GROQ llm_buffer' })
  end,
}
