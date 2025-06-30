ctrlCmdShortcuts = {
    { "1", "Brave Browser" },
    { "2", "IntelliJ IDEA Ultimate" },
}

for i, shortcut in ipairs(ctrlCmdShortcuts) do
    hs.hotkey.bind({ "alt", "cmd", "ctrl", "shift" }, shortcut[1], function()
        hs.application.launchOrFocus(shortcut[2])
    end)
end