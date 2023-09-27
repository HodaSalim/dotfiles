require('formatter').setup({
        filetype = {
            html = {
                function()
                    return {
                        exe = 'prettier',
                        args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
                        stdin = true
                    }
                end
            },
            css = {
                function()
                    return {
                        exe = 'prettier',
                        args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
                        stdin = true
                    }
                end
            },
            javascript = {
                function()
                    return {
                        exe = 'prettier',
                        args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
                        stdin = true
                    }
                end
            },
            typescript = {
                function()
                    return {
                        exe = 'prettier',
                        args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
                        stdin = true
                    }
                end
            },
            javascriptreact = {
                function()
                    return {
                        exe = 'prettier',
                        args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
                        stdin = true
                    }
                end
            },
            typescriptreact = {
                function()
                    return {
                        exe = 'prettier',
                        args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
                        stdin = true
                    }
                end
            },
            lua = {
                function()
                    return {
                        exe = 'stylua',
                        args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0) },
                        stdin = true
                    }
                end
            },
            python = {
                function()
                    return {
                        exe = 'black',
                        args = { '--quiet', '-' },
                        stdin = true
                    }
                end
            },
            c = {
                function()
                    return {
                        exe = 'clang-format',
                        args = { '-assume-filename=' .. vim.api.nvim_buf_get_name(0), '--style=Google' },
                        stdin = true,
                        cwd = vim.fn.expand('%:p:h') -- Run clang-format in the current file's directory
                    }
                end
            }
        }
    })

    -- Set up autocmd to trigger format on save
    vim.cmd [[
        augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost * FormatWrite
        augroup END
    ]]
