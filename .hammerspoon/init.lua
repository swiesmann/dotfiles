local hyperKey = {'cmd', 'alt', 'ctrl', 'shift'}

hyperKeyShortcuts = {
    {"1", "Brave Browser"},
    {"2", "IntelliJ IDEA Ultimate"},
}

for i,shortcut in ipairs(hyperKeyShortcuts) do
    hs.hotkey.bind(hyperKey, shortcut[1], function()
        hs.application.launchOrFocus(shortcut[2])
    end)
end