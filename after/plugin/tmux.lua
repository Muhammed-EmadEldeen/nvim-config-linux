function TmuxConfig()
require("tmux").setup(
{
    copy_sync = {
        enable = true,

        ignore_buffers = { empty = false },

        redirect_to_clipboard = false,
        register_offset = 0,

        sync_clipboard = false,
        sync_registers = true,
        sync_deletes = true,
        sync_unnamed = true,
    },
    navigation = {
        cycle_navigation = false,

        enable_default_keybindings = true,

        persist_zoom = false,
    },
    resize = {
        enable_default_keybindings = false,
        resize_step_x = 1,
        resize_step_y = 1,
    }
}
)
end
