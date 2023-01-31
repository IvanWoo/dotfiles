# https://github.com/kovidgoyal/kitty/issues/1892#issuecomment-1127515620
# This function allows you to switch to a different task
# when an interactive command takes too long
# by notifying you when it is finished.
#
# It is invoked by the fish shell automatically using its event system.
function __postexec_notify_on_long_running_commands --on-event fish_postexec
    set --function interactive_commands 'vim' 'man' 'less' 'bash' 'zsh' 'fish' 'htop' 'k9s'
    set --function command (string split ' ' $argv[1])
    if contains $command $interactive_commands
        # We quit interactive commands manually,
        # no need for a notification.
        return
    end

    if test $CMD_DURATION -gt 10000
        set --local seconds (math $CMD_DURATION/1000)
        terminal-notifier -title "command finished in $seconds s" -message "$argv" -sound default
    end
end
