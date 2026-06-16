-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function()
  local apps = {
    "waybar",
    "hyprpaper",
    "hypridle",
    "hyprcursor",
  }
  hl.exec_cmd(table.concat(apps, " & "))
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)
