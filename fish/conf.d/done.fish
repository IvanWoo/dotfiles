# https://github.com/kovidgoyal/kitty/issues/1892#issuecomment-1127515620
# This function allows you to switch to a different task
# when an interactive command takes too long
# by notifying you when it is finished.
#
# It is invoked by the fish shell automatically using its event system.
function __postexec_notify_on_long_running_commands --on-event fish_postexec
    if status is-interactive
        return
    end

    if test $CMD_DURATION -gt 5000
        terminal-notifier -title 'command finished' -message "$argv" -sound default
    end
end
