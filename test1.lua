localPath = scriptPath()
setImagePath(localPath .. "images")
Settings:setScriptDimension(true, 1920)
Settings:setCompareDimension(true, 1920)
setDragDropTiming(100, 100)
setDragDropStepCount(10)
setDragDropStepInterval(100)
commonLib = loadstring(httpGet("https://raw.githubusercontent.com/AnkuLua/commonLib/master/commonLib.lua"))()
autoUpdate = true
function getLocalVersion()
    dofile(localPath .."version1.lua")
    currentBotVersion = botVersion
    currentImageLibraryVersion = imageLibraryVersion
end
function getOnlineVersion()
    latest = loadstring(httpGet("https://raw.githubusercontent.com/Paladiex/Palbot/master/version1.lua"))
    latest()
    latestBotVersion = botVersion
    latestImageLibraryVersion = imageLibraryVersion
end
function automaticUpdates ()
    if autoUpdate == true then
        getLocalVersion()
        getOnlineVersion()
        if currentBotVersion == latestBotVersion and currentImageLibraryVersion == latestImageLibraryVersion then
            toast ("You are up to date!")
        elseif currentBotVersion == latestBotVersion and  currentImageLibraryVersion ~= latestImageLibraryVersion then
            httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/imageupdater.lua", localPath .."imageupdater.lua")
            dofile(localPath .."imageupdater.lua")
            httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/version1.lua", localPath .."version1.lua")
            scriptExit("You have Updated the Palbot Image Library!")
        elseif currentBotVersion ~= latestBotVersion and currentImageLibraryVersion == latestImageLibraryVersion then
            httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/Palbot.lua", localPath .."Palbot.lua")
            httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/version1.lua", localPath .."version1.lua")
            scriptExit("You have Updated Palbot!")
        elseif currentBotVersion ~= latestBotVersion and currentImageLibraryVersion ~= latestImageLibraryVersion then
            httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/Palbot.lua", localPath .."Palbot.lua")
            httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/imageupdater.lua", localPath .."imageupdater.lua")
            dofile(localPath .."imageupdater.lua")
            httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/version1.lua", localPath .."version1.lua")
            scriptExit("You have Updated Palbot and the Image Library!")
        else
            print("none true")
        end
    end
end
automaticUpdates ()
print(currentBotVersion)
print(currentImageLibraryVersion)
print(latestBotVersion)
print(latestImageLibraryVersion)
