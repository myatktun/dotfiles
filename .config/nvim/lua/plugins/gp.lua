local conf = {
    providers = {
        openai = {},
        ollama = {
            endpoint = "http://localhost:11434/v1/chat/completions"
        }
    },
    agents = {
        {
            name = "ChatOllamaLlama3.1-8B",
            disable = true
        },
        {
            provider = "ollama",
            name = "deepseek",
            chat = true,
            command = true,
            model = {
                model = "deepseek-coder:base"
            },
            system_prompt = "hello there"
        }
    }
}

return {
    "robitx/gp.nvim",
    config = function()
        local conf = {
            -- For customization, refer to Install > Configuration in the Documentation/Readme
        }
        require("gp").setup(conf)

        -- Setup shortcuts here (see Usage > Shortcuts in the Documentation/Readme)
    end,
}
