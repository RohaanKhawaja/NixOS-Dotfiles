------------------
---- MONITORS ----
------------------

-- Primary
hl.monitor({
    output   = "DP-9",
    mode     = "preferred",
    position = "0x0",
    scale    = "1.0",
})

-- Secondary
hl.monitor({
    output   = "DP-11",
    mode     = "preferred",
    position = "0x1080",
    scale    = "1.0",
})

-- Built-In
hl.monitor({
    output   = "eDP-1",
    mode     = "1600x2560@144",
    position = "-1600x1080",
    scale    = "1.6",
    transform = 1,
})
