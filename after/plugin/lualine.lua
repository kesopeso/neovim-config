require('lualine').setup {
    options = {
        icons_enabled = true,
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_c = {
            {
                'filename',
                path = 3,
            },
        },
    },
}
