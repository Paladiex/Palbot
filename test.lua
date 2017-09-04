localPath = scriptPath()
setImagePath(localPath .. "images")
Settings:setScriptDimension(true, 1920)
Settings:setCompareDimension(true, 1920)
commonLib = loadstring(httpGet("https://raw.githubusercontent.com/AnkuLua/commonLib/master/commonLib.lua"))()

grindstoneRegion = Region(750, 400, 250, 100)
grindstoneRegion:highlight()
if grindstoneRegion:exists(Pattern("grindstone.png"):similar(.45), 0.1) then
    scriptexit("I see it!")
end
grindstoneRegion:highlight()
scriptexit()