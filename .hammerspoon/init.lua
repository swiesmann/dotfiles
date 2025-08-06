local hyperKey = { 'cmd', 'alt', 'ctrl', 'shift' }

hyperKeyShortcuts = {
    { "1", "Brave Browser" },
    { "2", "IntelliJ IDEA Ultimate" },
    { "3", "ghostty.app" },
    { "4", "KeePassXC" },
    { "5", "/Applications/Obsidian.app" },
    --    anytype, signal VS teams, reaper
}

for i, shortcut in ipairs(hyperKeyShortcuts) do
    hs.hotkey.bind(hyperKey, shortcut[1], function()
        hs.application.launchOrFocus(shortcut[2])
        --hs.application.launchOrFocusByBundleID(shortcut[2])
    end)
end
