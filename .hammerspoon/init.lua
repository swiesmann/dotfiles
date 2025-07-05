hyperKeyShortcuts = {
    {"1", "Brave Browser"},
    {"2", "IntelliJ IDEA Ultimate"},
}

for i,shortcut in ipairs(hyperKeyShortcuts) do
    hs.hotkey.bind({"cmd","ctrl","option","shift"}, shortcut[1], function()
        hs.application.launchOrFocus(shortcut[2])
    end)
end