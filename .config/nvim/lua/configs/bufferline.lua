local colors = {
    bg=     '#32302f',
    red=     '#fb4934',
    green=     '#b8bb26',
    yellow=     '#fabd2f',
    orange=    '#d3869b',
    blue=     '#83a598',
    violet=    '#d65d0e',
    magenta=     '#d65d0e',
    darkblue=    '#458588',
    cyan=     '#8ec07c',
    bg_light= "#3c3836",
    bg_alt= "#504945",
    bg_red = '#32302f',
    fg=    '#fbf1c7',
    clear= 'None',
}


-- colors for active , inactive uffer tabs
require "bufferline".setup {
    options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 14,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = false,
        separator_style = "thik"
    },
    highlights = {
        background = {
            fg = comment_fg,
            bg = colors.bg_alt
        },
        fill = {
            fg = comment_fg,
            bg = colors.bg
        },
        tab = {
                fg = colors.bg,
                bg = 'None'
            },
            tab_selected = {
                fg = colors.bg,
                bg = 'None'
            },

        buffer_selected = {
            fg = normal_fg,
            bg = colors.bg_light,
        },
        buffer_visible = {
            fg = colors.color6,
            bg = colors.bg_alt
        },
        separator_visible = {
            fg = colors.bg, 
            bg = colors.bg_alt
        },
        separator_selected = {
            fg = colors.bg, 
            bg = colors.bg_light
        },
        separator = {
            fg = colors.bg, 
            bg = colors.bg
        },
        indicator_selected = {
            fg = colors.bg, 
            bg = colors.bg
        },
        modified_selected = {
            fg = string_fg,
            bg = colors.bg_light
        },
        tab_close = {
            fg = colors.fg,
            bg = colors.bg,
        },
        close_button = {
            fg = colors.fg,
            bg = colors.bg,
        },
        close_button_visible = {
            fg = colors.fg,
            bg = colors.bg,
        },
        close_button_selected = {
            fg = colors.fg,
            bg = colors.bg,
        }
    }
}

local opt = {silent = true}
