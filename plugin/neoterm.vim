fun! Neoterm_setup()
    lua for k in pairs(package.loaded) do if k:match("neoterm") then package.loaded[k] = nil end end
    lua require("neoterm")
endfun
