localPath = scriptPath()
isTrial = false
maxTrialTimeout = 3600
commonLib = loadstring(httpGet("https://raw.githubusercontent.com/AnkuLua/commonLib/master/commonLib.lua"))()
getNewestVersion = loadstring(httpGet("https://raw.githubusercontent.com/Paladiex/Palbot/master/version.lua"))
latestVersion = getNewestVersion()
currentVersion = dofile(localPath .."version.lua")
print (currentVersion)
print (latestVersion)
setDragDropTiming(100, 100)
setDragDropStepCount(10)
setDragDropStepInterval(100)
mainStatImages = {  "hpMain.png", "defMain.png", "atkMain.png", "spdMain.png", "criRateMain.png",
  "criDmgMain.png", "resMain.png", "accMain.png" }
levelBattleImages = {"level40Battle.png", "level35Battle.png", "level30Battle.png", "level25Battle.png",
  "level20Battle.png", "level15Battle.png" }
battleSlotStarLevelImages = { "star6BattlePink.png", "star6BattleWhite.png", "star5BattlePink.png",
  "star5BattleWhite.png", "star4BattlePink.png", "star4BattleWhite.png",
  "star3BattlePink.png", "star3BattleWhite.png", "star2BattlePink.png",
  "star2BattleWhite.png", "star1BattleWhite.png", }
FodderSlotImages = {"0FodderSlot.png", "1FodderSlot.png", "2FodderSlot.png", "3FodderSlot.png", "4FodderSlot.png"}
runeRarityImages = {"runeLegendary.png", "runeHero.png", "runeRare.png", "runeMagic.png", "runeNormal.png"}
function automaticUpdates ()
  if autoUpdate == true then
    if currentVersion == latestVersion then
      toast ("You are up to date!")
    else
      httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/version.lua", localPath .."version.lua")
      httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/Palbot.lua", localPath .."Palbot.lua")
      httpDownload("https://raw.githubusercontent.com/Paladiex/Palbot/master/imageupdater.lua", localPath .."imageupdater.lua")
      scriptExit("You have Updated Palbot!")
    end
  end
end
function defaultValues()
  monX = 0
  monY = 0
  storageScrollY = 0
winCount = 0
loseCount = 0
arenaWinCount = 0
arenaLoseCount = 0
arenaDrawCount = 0
runeSave = 0
r6Count = 0
r6Sold = 0
r5Count = 0
r5Sold = 0
runeSold = 0
runLmt = 0
bNum = 10
customRunLmt = 0
runLmtGroup = 0
delayAmt = 0
riftBattle = 0
scanDelay = 0
imgAccuracy = 0.7
runeAccuracy = 0.9
textSize = ""
textSizeNum = 12
timerMagicShop = 0
timerNoActivity = 0
timerNoRaidActivity = 0
maxNoActivityTimeout = 600
maxConnectionTimeout = 600
maxNoRaidActivity = 120
waitTimer = 30
timerTrial = 0
searchMagicShopCount = 0
mysticalCount = 0
legendaryCount = 0
lightDarkCount = 0
screenH = 0
screenW = 0
bottombar = 0
sidebar = 0
compareW = 0
compareH = 0
nextFodder = 1
fodderX = 1245
nonFlatSub = 0
runeSubCnt = 0
runeSubPercCnt = 0
runeDetect = 0.8
maxDetect = 0.9
rareNum = 0
runeRarity6 = 0
runeRarity5 = 0
runeRarity4 = 0
runeRarity3 = 0
runeRarity2 = 0
runeRarity1 = 0
end
function defaultTrueFalse ()
isArenaRival = false
playSound = false
playVibrate = false
stopMaxLevel = false
isMaxLevel = false
useFriend = false
isClickFriend = false
isUsedAllFriend = false
isMoveRightFodderList = false
runAutoSwitchFodder = false
isSwitchFodderSlot1 = false
isSwitchFodderSlot2 = false
isSwitchFodderSlot3 = false
isSwitchFodderSlot4 = false
sellAllRune = false
saveAllRune = false
save6Star = false
save5Star = false
save6StarPct = false
save5StarPct = false
runMagicShop = false
runArena = false
arenaCheck = false
runGiant = false
runDragon = false
runNecro = false
runHallMagic = false
runHallLight = false
runHallDark = false
runHallFire = false
runHallWater = false
runHallWind = false
runSD = false
runRiftFire = false
runRiftIce = false
runRiftWind = false
runRiftLight = false
runRiftDark = false
runRiftRaid = false
runChiruka = false
runRunar = false
runFerun = false
runAiden = false
runFaimon = false
runVrofagus = false
runTamor = false
runHydeni = false
runTelain = false
runWhiteRagon = false
runKabir = false
runSiz = false
runGaren = false
runToa = false
runLiveArena = false
runQuickClick = false
isDungeon = false
isArena = false
isScenario = false
firstCheckMagicShop = true
immersiveMode = false
is16by9 = false
is16by10 = false
isNavBar = false
slot8FodderScan = false
keepLegendary = false
keepHero = false
keepRare = false
keepMagic = false
keepNormal = false
keep6Star = false
keep5Star = false
keep4Star = false
keep3Star = false
keep2Star = false
keep1Star = false
keepAll = false
runTestHighlight = false
keepSpdMain = false
screenshotSell = false
screenshotKeep = false
sellingRune = false
runRival = false
runMatchUp = false
end
function defaultRegionLocation ()
  FindEmptyFodderSlotsRegion = Region(1540, 210, 30, 35)
  FindFillFodderSlotsRegion = Region(1502, 210, 30, 35)
  fodderStorageOkRegion = Region(910, 915, 90, 60)
  storageIconRegion = Region(30, 660, 160, 160)
fodderSlot8X = Location(1245, 745)
fodderSlot7X = Location(1085, 745)
fodderSlot6X = Location(920, 745)
fodderSlot5X = Location(760, 745)
fodderSlot4X = Location(595, 745)
fodderSlot3X = Location(435, 745)
fodderSlot2X = Location(270, 745)
fodderSlot1X = Location(110, 745)
mainStatRegion = Region(760, 350, 400, 60)
runeSlotRegion = Region(574, 242, 770, 100)
runeRarityRegion = Region(1160, 340, 170, 70)
runeRankRegion = Region(630, 350, 130, 30)
grindstoneRegion = Region(760, 450, 300, 100)
enchantedGemRegion = Region(750, 350, 350, 150)
raidJoinRegion = Region(1300, 845, 250, 65)
raidReadyRegion = Region(1550, 950, 250, 75)
okRaidRegion = Region(910, 615, 100, 80)
raidAcceptRegion = Region(730, 245, 130, 45)
raidVictoryTotalRegion = Region(125, 600, 150, 50)
  raidLossTotalRegion = Region(125, 725, 150, 50)
raidOkRegion = Region(825, 625, 250, 250)
sameSessionRegion = Region(780, 360, 180, 50)
raidGetRegion = Region(1035, 635, 145, 115)
startRegion = Region(1490, 765, 125, 55)
startDialogRegion = Region(0, 0, 500, 75)
victoryDefeatRegion = Region(860, 105, 230, 145)
victoryDefeatStageRegion = Region(670, 235, 605, 65)
victoryDiamondRegion = Region(1430, 485, 120, 120)
okRegion = Region(900, 730, 120, 300)
replayRegion = Region(490, 550, 170, 75)
nextRegion = Region(1145, 555, 250, 65)
toaNextStageRegion = Region(320, 510, 585, 145)
reviveNoRegion = Region(1190, 675, 95, 60)
noLeaderSkillRegion = Region(1160, 360, 110, 55)
noLeaderSkillYesRegion = Region(740, 620, 105, 65)
arenaWingRegion = Region(1455, 200, 200, 750)
arenaRankRegion = Region(910, 115, 400, 400)
arenaMatchupRegion = Region(200, 200, 250, 100)
arenaRivalRegion = Region(200, 320, 250, 100)
arenaRivalNumberRegion = Region(175, 325, 300, 150)
arenaRivalDialogRegion = Region(0, 775, 125, 125)
arenaBottomRegion = Region(985, 810, 230, 60)
arenaOkRegion = Region(920, 625, 85, 55)
arenaXRegion = Region(1600, 100, 200, 200)
arenaFailLoadRegion = Region(575, 355, 255, 55)
refreshListRegion = Region(1300, 200, 400, 400)
refreshList2Region = Region(845, 560, 155, 55)
refreshListNotReadyRegion = Region(925, 555, 110, 50)
runeRegion = Region(630, 345, 135, 130)
runeMainStatRegion = Region(775, 335, 460, 90)
runeYesRegion = Region(740, 625, 100, 55)
sellRegion = Region(750, 820, 100, 60)
getRegion = Region(985, 635, 500, 515)
runeSellTextRegion = Region(535, 360, 865, 130)
refillYesRegion = Region(735, 625, 105, 55)
refillNoRegion = Region(1050, 625, 120, 60)
notEnoughEnergyRegion = Region(955, 355, 225, 65)
notEnoughWingRegion = Region(850, 355, 260, 65)
rechargeFlashRegion = Region(455, 395, 195, 235)
yesPurchaseRegion = Region(745, 635, 110, 60)
okPurchaseRegion = Region(915, 625, 90, 60)
closePurchaseRegion = Region(900, 895, 125, 60)
refillClosePurchaseRegion = Region(1526, 88, 129, 112)
dialogTextCenterRegion = Region(600, 0, 750, 275)
dialogToaRegion = Region(710, 65, 305, 85)
closeXCairoDungeonRegion = Region(1635, 75, 70, 70)
closeXScenarioRegion = Region(1825, 55, 70, 70)
closeXMagicShopRegion = Region(1815, 55, 70, 70)
closeXToaRegion = Region(1650, 75, 70, 70)
closeXPurchaseRegion = Region(1600, 0, 320, 320)
closeXStartDialog = Region(1820, 0, 100, 100)
yesRegion = Region(740, 600, 125, 300)
dialogCairoDungeonRegion = Region(715, 70, 485, 60)
dungeonListRegion = Region(235, 265, 550, 800)
dungeonBattleRegion = Region(800, 255, 850, 815)
sdChargeRegion = Region(1450, 310, 185, 140)
dropInfoRegion = Region(1045, 180, 175, 55)
closeXRiftRegion = Region(1635, 35, 70, 70)
riftBattleRegion = Region(1345, 850, 155, 65)
riftRankRegion = Region(1440, 740, 225, 90)
riftYesRegion = Region(650, 585, 285, 140)
riftStrategyRegion = Region(290, 155, 270, 75)
riftBackRegion = Region(1735, 900, 175, 160)
playRegion = Region(325, 970, 60, 75)
pauseRegion = Region(825, 430, 270, 85)
connectionDelayRegion = Region(530, 330, 870, 195)
connectionYesRegion = Region(740, 685, 95, 65)
backButtonRegion = Region(1760, 960, 115, 95)
samsungSearchRegion = Region(150, 75, 215, 50)
dontShowRegion = Region(205, 950, 295, 85)
touchStartRegion = Region(890, 400, 140, 155)
monthlyEventXRegion = Region(1525, 35, 70, 70)
mailboxXRegion = Region(1575, 115, 70, 70)
closeXRegion = Region(1350, 0, 570, 350)
iconPurchaseRegion = Region(1360, 895, 180, 170)
magicShopItemRegion = Region(1170, 190, 195, 745)
magicShopTimeRegion = Region(1310, 200, 75, 50)
battleIconRegion = Region(975, 880, 205, 190)
moveIconRegion = Region(1730, 880, 190, 200)
fodderCommandRegion = Region(640, 550, 600, 50)
commandRegion = Region(660, 450, 600, 50)
resultRegion = Region(1580, 200, 700, 250)
slot1MaxLevelRegion = Region(495, 640, 120, 120)
slot2MaxLevelRegion = Region(885, 640, 120, 120)
slot3MaxLevelRegion = Region(1280, 640, 120, 120)
slot4MaxLevelRegion = Region(495, 770, 120, 120)
battleSlot1Region = Region(400, 200, 170, 170)
battleSlot2Region = Region(200, 305, 170, 170)
battleSlot3Region = Region(600, 305, 170, 170)
battleSlot4Region = Region(400, 410, 170, 170)
fodderListRegion = Region(125, 655, 1305, 170)
fodderSlot8Region = Region(1155, 765, 165, 50)
fodderSlot7Region = Region(995, 765, 160, 50)
fodderSlot6Region = Region(830, 765, 165, 50)
fodderSlot5Region = Region(670, 765, 160, 50)
fodderSlot4Region = Region(505, 765, 165, 50)
fodderSlot3Region = Region(355, 765, 160, 50)
fodderSlot2Region = Region(180, 765, 165, 50)
fodderSlot1Region = Region(40, 765, 120, 50)
dialogScenarioRegion = Region(950, 0, 1000, 200)
closeDialogScenarioRegion = Region(1650, 0, 300, 200)
liveArenaMapRegion = Region(0, 750, 250, 500)
liveArenaTopRegion = Region(350, 0, 1100, 200)
liveArenaBattleRegion = Region(1450, 420, 420, 125)
liveArenaLookingRegion = Region(550, 400, 900, 200)
liveArenaDialogRegion = Region(600, 0, 800, 150)
liveArenaSameMonOkRegion = Region(750, 500, 450, 200)
slot1Region = Region(0, 675, 200, 225)
slot2Region = Region(0, 825, 200, 225)
slot3Region = Region(190, 675, 200, 225)
slot4Region = Region(190, 825, 200, 225)
slot5Region = Region(300, 675, 200, 225)
slot6Region = Region(300, 825, 200, 225)
slot7Region = Region(470, 675, 200, 225)
slot8Region = Region(470, 825, 200, 225)
slot9Region = Region(620, 675, 200, 225)
slot10Region = Region(620, 825, 200, 225)
closeNowYesRegion = Region(600, 630, 350, 200)
closeNowRegion = Region(525, 420, 75, 80)
friend1Location = Location(15, 1060)
runeSubRegion = Region(578,469,360,244)
runeStatRegion = Region(0, 200, 700, 250)
slot1MaxRegion = Region(450,668,345,165)
slot2MaxRegion = Region(825,668,345,165)
slot3MaxRegion = Region(1215,668,345,165)
slot4MaxRegion = Region(435,797,345,165)
bossBuffRegion = Region(1420,75,485,115)
miniBossLocation = Location(1211, 278)
fodderInfoRegion = Region(795,146,305,80)
fodderCloseLocation = Location(1541,186)
end
function captureScreenshot()
  setImagePath(localPath .. "Runes/")
  wait(1)
  rgn = Region(0, 0, getRealScreenSize():getX(), getRealScreenSize():getY())
  rgn:save(tostring("Rune" .. getNetworkTime() .. ".png"))
  setImagePath(localPath .. "1920x1080")
end
function zoomTest()
  wait(1)
  zoomOut()
  zoomOut()
  zoomOut()
  wait(4)
end
function testHighlight()
  while runTestHighlight do
    arenaMatchupRegion:highlight(10)
    arenaRivalRegion:highlight(10)
    wait(5)
  end
end
function isPro()
  if string.find(getVersion(), "pro") then
    return true
  else
    return false
  end
end
function showBattleToast(duration)
  local toastMessage = ""
  local totalBattle = riftBattle + loseCount + winCount
  local totalArenaBattle = arenaWinCount + arenaLoseCount
  local totalRuneCount = runeSave + r6Count + r6Sold + r5Count + r5Sold + runeSold
  local totalRuneSold = r6Sold + r5Sold + runeSold
  if runNum then
    toastMessage = "Remaining runs: " .. runLmt .. ""
  else
    toastMessage = "Infinite runs"
  end
  if totalBattle > 0 then
    toastMessage = toastMessage .. [[

Total Battles:]] .. totalBattle .. "  Win:" .. winCount .. "  Lose:" .. loseCount .. ""
  end
  if totalArenaBattle > 0 then
    toastMessage = toastMessage .. [[

Arena Battles:]] .. totalArenaBattle .. "  Win:" .. arenaWinCount .. "  Lose:" .. arenaLoseCount .. ""
  end
  if totalRuneCount > 0 then
    toastMessage = toastMessage .. [[

6* save:]] .. r6Count .. "  5* save:" .. r5Count .. "  6* sold:" .. r6Sold .. "  5* sold:" .. r5Sold .. "  Runes sold:" .. totalRuneSold
  end
  toast(toastMessage)
  toast(toastMessage)
  toast(toastMessage)
end
function printBattleMessage()
  local message = ""
  local totalBattle = riftBattle + loseCount + winCount
  local totalArenaBattle = arenaWinCount + arenaLoseCount
  local totalRuneCount = runeSave + r6Count + r6Sold + r5Count + r5Sold + runeSold
  local totalRuneSold = r6Sold + r5Sold + runeSold
  if totalBattle > 0 then
    message = message .. "Battle:" .. totalBattle .. "  W:" .. winCount .. "  L:" .. loseCount
  end
  if totalArenaBattle > 0 then
    message = message .. [[

Arena:]] .. totalArenaBattle .. "  W:" .. arenaWinCount .. "  L:" .. arenaLoseCount
  end
  if totalRuneCount > 0 then
    message = message .. [[

Rune 6*:]] .. r6Count .. "  5*:" .. r5Count .. "  Sold:" .. totalRuneSold
  end
  if 0 < searchMagicShopCount then
    message = message .. [[

Magic Shop Search:]] .. searchMagicShopCount .. " MS:" .. mysticalCount .. " LDS:" .. lightDarkCount .. " LS:" .. legendaryCount
  end
  if message ~= "" then
    message = message .. [[

--------------------------]]
    if getVersion() < "6.6" then
      print(message)
    else
      setStopMessage(message)
    end
  end
end
function showBattleResult(command)
  local message = ""
  local totalBattle = riftBattle + loseCount + winCount
  local totalArenaBattle = arenaWinCount + arenaLoseCount
  local totalRuneCount = runeSave + r6Count + r6Sold + r5Count + r5Sold + runeSold
  local totalRuneSold = r6Sold + r5Sold + runeSold
  if runNum then
    message = "Remaining runs: " .. runLmt .. ""
  elseif stopMaxLevel then
    message = "Stop at Max Level"
  else
    message = "Infinite runs"
  end
  if runLiveArena then
    message = message .. [[

Live Arena:]] .. totalArenaBattle .. [[
  
W:]] .. arenaWinCount .. "  L:" .. arenaLoseCount
  else
    message = message .. [[

Battles:]] .. totalBattle .. "  W:" .. winCount .. "  L:" .. loseCount
    message = message .. [[

Arena:]] .. totalArenaBattle .. "  W:" .. arenaWinCount .. "  L:" .. arenaLoseCount
    message = message .. [[

Rune 6*:]] .. r6Count .. "  5*:" .. r5Count .. "  s:" .. totalRuneSold
  end
  resultRegion:highlightOff()
  resultRegion:highlight(message)
end
function hideBattleResult()
  resultRegion:highlightOff()
end
function showCommand(command)
  commandRegion:highlightOff()
  commandRegion:highlight(command)
end
function hideCommand()
  commandRegion:highlightOff()
end
function dialogBox()
  dialogInit()
  spinnerFarmLoc = {
    "Current Battle",
    "------------------------------------------",
    "Giant's Keep",
    "Dragon's Lair",
    "Necropolis",
    "Hall of Magic",
    "Hall of Light",
    "Hall of Dark",
    "Hall of Fire",
    "Hall of Water",
    "Hall of Wind",
    "Secret Dungeon 1st",
    "------------------------------------------",
    "Rift (Fire Beast)",
    "Rift (Ice Beast)",
    "Rift (Wind Beast)",
    "Rift (Light Beast)",
    "Rift (Dark Beast)",
    "Rift Raid",
    "------------------------------------------",
    "Chiruka Remains S1",
    "Mt. Runar S2",
    "Ferun Castle S1",
    "Aiden Forest S1",
    "Faimon Volcano S1",
    "Vrofagus Ruins S4",
    "Tamor Desert S3",
    "Hydeni Ruins S5",
    "Telain Forest S1",
    "Mt. White Ragon S2",
    "Kabir Ruins S4",
    "Mt. Siz S2",
    "Garen Forest S3",
    "------------------------------------------",
    "Toa",
    "Live Arena",
    "Speed QuickClick"
  }
  spinnerLevel = {
    "B1",
    "B2",
    "B3",
    "B4",
    "B5",
    "B6",
    "B7",
    "B8",
    "B9",
    "B10"
  }
  addTextView("Farming Mode: ")
  addSpinner("farmLoc", spinnerFarmLoc, spinnerFarmLoc[1])
  addTextView("  ")
  addTextView("Dungeon level: ")
  addSpinner("dungeonLevel", spinnerLevel, spinnerLevel[10])
  newRow()
  addTextView("Dungeon level only applies to Carios Dungeon.")
  newRow()
  addCheckBox("runRival", "Arena Rivals?", false)
  addTextView("  ")
  addCheckBox("runMatchUp", "Arena Match-Up?", false)
  newRow()
  addCheckBox("runMagicShop", "Check Magic Shop for scrolls:", false)
  newRow()
  spinnerBattleLimit = {
    "Infinite Runs",
    "Custom Runs",
    "4 Runs: Max level 1* fodder",
    "10 Runs: Max level 2* fodder",
    "22 Runs: Max level 3* fodder",
    "49 Runs: Max level 4* fodder",
    "Stop at Max Level: Slot 2, 3 or 4",
    "Auto-switch Max Level: Slot 2, 3 and 4  "
  }
  addSpinner("runLmtOption", spinnerBattleLimit, spinnerBattleLimit[1])
  addTextView("  ")
  addEditNumber("customRunLmt", 10)
  addTextView("(Must select Custom Runs)")
  newRow()
  spinnerRefillOption = {
    "NO Refills",
    "Refill Energy with Crystals  "
  }
  addSpinner("refillOption", spinnerRefillOption, spinnerRefillOption[1])
  addTextView("  (refill options)")
  addEditNumber("storageMonsters", 0)
  addTextView("(# of monsters in storage)")
  newRow()
  addCheckBox("dim", "Dim Screen", false)
  addTextView("  ")
  addCheckBox("stopDefeat", "Stop when defeated", false)
  addTextView("  ")
  addCheckBox("nextArea", "Next stage", false)
  newRow()
  addTextView("-------------------- Rune Options --------------------")
  newRow()
  addTextView("Disable both will enable rune filter. Don't enable both.")
  newRow()
  addCheckBox("sellAllRune", "Sell all runes?", false)
  addTextView("  ")
  addCheckBox("keepAll", "Keep all runes?", false)
  newRow()
  addTextView("-------------------- Advanced Options --------------------")
  newRow()
  spinnerResolution = {
    "Auto Detect",
    "2560x1440 (16:9)",
    "1920x1080 (16:9)",
    "1600x900 (16:9)",
    "1366x768 (16:9)",
    "1280x720 (16:9)",
    "1152x648  (16:9)",
    "1024x576 (16:9)",
    "2560x1600 (16:10)",
    "1920x1200 (16:10)",
    "1680x1050 (16:10)",
    "1440x900 (16:10)",
    "1280x800 (16:10)",
    "2392x1440",
    "1809x1080",
    "1024x600"
  }
  spinnerScanSpeed = {
    "Fast",
    "Medium  ",
    "Slow"
  }
  spinnerImgDetectPct = {
    "60",
    "65",
    "70",
    "75",
    "80",
    "85",
    "90",
    "95",
    "99"
  }
  spinnerRuneDetectPct = {
    "60",
    "65",
    "70",
    "75",
    "80",
    "85",
    "90",
    "95",
    "99"
  }
  spinnerMaxDetectPct = {
    "60",
    "65",
    "70",
    "75",
    "80",
    "85",
    "90",
    "95",
    "99"
  }
  spinnerTextSize = {
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
    "18"
  }
  spinnerConnectionTimeout = {
    "10",
    "20",
    "30",
    "40",
    "50",
    "60",
    "OFF"
  }
  spinnerNoActivityTimeout = {
    "10",
    "20",
    "30",
    "40",
    "50",
    "60",
    "OFF"
  }
  addTextView("Resolution: ")
  addSpinner("screenRes", spinnerResolution, spinnerResolution[1])
  addTextView("  ")
  addCheckBox("navBar", "side nav bar", false)
  newRow()
  addCheckBox("immersiveMode", "Immersive Mode (fullscreen)", false)
  newRow()
  addTextView("Scan Speed: ")
  addSpinner("scanSpeed", spinnerScanSpeed, spinnerScanSpeed[2])
  newRow()
  addSpinner("imgDetectPct", spinnerImgDetectPct, spinnerImgDetectPct[3])
  addTextView("% image accuracy")
  addTextView("    ")
  addSpinner("runeDetectPct", spinnerRuneDetectPct, spinnerRuneDetectPct[5])
  addTextView("% Rune Accuracy")
  addTextView("    ")
  addSpinner("maxDetectPct", spinnerMaxDetectPct, spinnerMaxDetectPct[7])
  addTextView("% Maxlevel accuracy")
  newRow()
  addSpinner("textSize", spinnerTextSize, spinnerTextSize[5])
  addTextView("Text Size    ")
  addCheckBox("playSound", "Play Sound    ", true)
  addCheckBox("playVibrate", "Vibrate    ", false)
  addCheckBox("autoUpdate", "Auto Update    ", true)
  newRow()
  addSpinner("noActivityTimeout", spinnerNoActivityTimeout, spinnerNoActivityTimeout[3])
  addTextView("minutes.  No Script Activity Warning")
  newRow()
  addSpinner("connectionTimeout", spinnerConnectionTimeout, spinnerConnectionTimeout[3])
  addTextView("minutes.  Network Connection Warning")
  dialogShowFullScreen("QuickClick Summoners War")
end
function runeDialogBox()
  dialogInit()
  addTextView("Set keep rarity based on star grade.")
  newRow()
  spinnerRuneRarity6 = {
    "None",
    "Normal",
    "Magic",
    "Rare",
    "Hero",
    "Legendary"
  }
  spinnerRuneRarity5 = {
    "None",
    "Normal",
    "Magic",
    "Rare",
    "Hero",
    "Legendary"
  }
  spinnerRuneRarity4 = {
    "None",
    "Normal",
    "Magic",
    "Rare",
    "Hero",
    "Legendary"
  }
  spinnerRuneRarity3 = {
    "None",
    "Normal",
    "Magic",
    "Rare",
    "Hero",
    "Legendary"
  }
  spinnerRuneRarity2 = {
    "None",
    "Normal",
    "Magic",
    "Rare",
    "Hero",
    "Legendary"
  }
  spinnerRuneRarity1 = {
    "None",
    "Normal",
    "Magic",
    "Rare",
    "Hero",
    "Legendary"
  }
  addTextView("6*: ")
  addSpinner("runeRaritySelect6", spinnerRuneRarity6, spinnerRuneRarity6[1])
  addTextView("5*: ")
  addSpinner("runeRaritySelect5", spinnerRuneRarity5, spinnerRuneRarity5[1])
  addTextView("4*: ")
  addSpinner("runeRaritySelect4", spinnerRuneRarity4, spinnerRuneRarity4[1])
  newRow()
  addTextView("3*: ")
  addSpinner("runeRaritySelect3", spinnerRuneRarity3, spinnerRuneRarity3[1])
  addTextView("2*: ")
  addSpinner("runeRaritySelect2", spinnerRuneRarity2, spinnerRuneRarity2[1])
  addTextView("1*: ")
  addSpinner("runeRaritySelect1", spinnerRuneRarity1, spinnerRuneRarity1[1])
  newRow()
  addCheckBox("keepSpdMain", "Always Keep SPD(2)", false)
  newRow()
  spinnerSubPerc = {
    "0%",
    "25%",
    "33%",
    "50%",
    "66%",
    "75%",
    "100%"
  }
  addTextView("Non-flat subs %: ")
  addSpinner("nonFlatSubSelect", spinnerSubPerc, spinnerSubPerc[1])
  newRow()
  addTextView("Screenshot Runes: ")
  addCheckBox("screenshotKeep", "Kept Runes?", false)
  addTextView("  ")
  addCheckBox("screenshotSell", "Sold Runes?", false)
  newRow()
  addTextView("Screen shots will be saved in the Runes folder.")
  newRow()
  addTextView("Advised to empty Runes folder after reviewing.")
  dialogShowFullScreen("Rune Filter")
end
function advancedOptionsDialog()
  dialogInit()
  addTextView("Resolution: ")
  addSpinner("screenRes", spinnerResolution, spinnerResolution[2])
  newRow()
  addTextView("    Scan Speed: ")
  addSpinner("scanSpeed", spinnerScanSpeed, spinnerScanSpeed[2])
  newRow()
  addSpinner("imgDetectPct", spinnerImgDetectPct, spinnerImgDetectPct[3])
  addTextView("% Image Accuracy")
  addTextView("    ")
  addSpinner("runeDetectPct", spinnerRuneDetectPct, spinnerRuneDetectPct[5])
  addTextView("% Rune Accuracy")
  newRow()
  addSpinner("textSize", spinnerTextSize, spinnerTextSize[5])
  addTextView("Text Size")
  dialogShow("Advanced Options")
end
function setDialogOptions()
  if farmLoc == spinnerFarmLoc[1] then
  elseif farmLoc == spinnerFarmLoc[2] then
  elseif farmLoc == spinnerFarmLoc[3] then
    runGiant = true
  elseif farmLoc == spinnerFarmLoc[4] then
    runDragon = true
  elseif farmLoc == spinnerFarmLoc[5] then
    runNecro = true
  elseif farmLoc == spinnerFarmLoc[6] then
    runHallMagic = true
  elseif farmLoc == spinnerFarmLoc[7] then
    runHallLight = true
  elseif farmLoc == spinnerFarmLoc[8] then
    runHallDark = true
  elseif farmLoc == spinnerFarmLoc[9] then
    runHallFire = true
  elseif farmLoc == spinnerFarmLoc[10] then
    runHallWater = true
  elseif farmLoc == spinnerFarmLoc[11] then
    runHallWind = true
  elseif farmLoc == spinnerFarmLoc[12] then
    runSD = true
  elseif farmLoc == spinnerFarmLoc[13] then
  elseif farmLoc == spinnerFarmLoc[14] then
    runRiftFire = true
  elseif farmLoc == spinnerFarmLoc[15] then
    runRiftIce = true
  elseif farmLoc == spinnerFarmLoc[16] then
    runRiftWind = true
  elseif farmLoc == spinnerFarmLoc[17] then
    runRiftLight = true
  elseif farmLoc == spinnerFarmLoc[18] then
    runRiftDark = true
  elseif farmLoc == spinnerFarmLoc[19] then
    runRiftRaid = true
  elseif farmLoc == spinnerFarmLoc[20] then
  elseif farmLoc == spinnerFarmLoc[21] then
    runChiruka = true
  elseif farmLoc == spinnerFarmLoc[22] then
    runRunar = true
  elseif farmLoc == spinnerFarmLoc[23] then
    runFerun = true
  elseif farmLoc == spinnerFarmLoc[24] then
    runAiden = true
  elseif farmLoc == spinnerFarmLoc[25] then
    runFaimon = true
  elseif farmLoc == spinnerFarmLoc[26] then
    runVrofagus = true
  elseif farmLoc == spinnerFarmLoc[27] then
    runTamor = true
  elseif farmLoc == spinnerFarmLoc[28] then
    runHydeni = true
  elseif farmLoc == spinnerFarmLoc[29] then
    runTelain = true
  elseif farmLoc == spinnerFarmLoc[30] then
    runWhiteRagon = true
  elseif farmLoc == spinnerFarmLoc[31] then
    runKabir = true
  elseif farmLoc == spinnerFarmLoc[32] then
    runSiz = true
  elseif farmLoc == spinnerFarmLoc[33] then
    runGaren = true
  elseif farmLoc == spinnerFarmLoc[34] then
  elseif farmLoc == spinnerFarmLoc[35] then
    runTOA = true
  elseif farmLoc == spinnerFarmLoc[36] then
    runLiveArena = true
  elseif farmLoc == spinnerFarmLoc[37] then
    runQuickClick = true
  end
  if dungeonLevel == spinnerLevel[1] then
    bNum = 1
  elseif dungeonLevel == spinnerLevel[2] then
    bNum = 2
  elseif dungeonLevel == spinnerLevel[3] then
    bNum = 3
  elseif dungeonLevel == spinnerLevel[4] then
    bNum = 4
  elseif dungeonLevel == spinnerLevel[5] then
    bNum = 5
  elseif dungeonLevel == spinnerLevel[6] then
    bNum = 6
  elseif dungeonLevel == spinnerLevel[7] then
    bNum = 7
  elseif dungeonLevel == spinnerLevel[8] then
    bNum = 8
  elseif dungeonLevel == spinnerLevel[9] then
    bNum = 9
  elseif dungeonLevel == spinnerLevel[10] then
    bNum = 10
  end
  if runLmtOption == spinnerBattleLimit[1] then
    runNum = false
  elseif runLmtOption == spinnerBattleLimit[2] then
    runNum = true
    runLmt = customRunLmt
  elseif runLmtOption == spinnerBattleLimit[3] then
    runNum = true
    runLmt = 4
  elseif runLmtOption == spinnerBattleLimit[4] then
    runNum = true
    runLmt = 10
  elseif runLmtOption == spinnerBattleLimit[5] then
    runNum = true
    runLmt = 22
  elseif runLmtOption == spinnerBattleLimit[6] then
    runNum = true
    runLmt = 48
  elseif runLmtOption == spinnerBattleLimit[7] then
    stopMaxLevel = true
  elseif runLmtOption == spinnerBattleLimit[8] then
    runAutoSwitchFodder = true
  end
  if sellAllRune == false and keepAll == false then
    if runeRaritySelect6 == spinnerRuneRarity6[1] then
      runeRarity6 = 0
    elseif runeRaritySelect6 == spinnerRuneRarity6[2] then
      runeRarity6 = 1
    elseif runeRaritySelect6 == spinnerRuneRarity6[3] then
      runeRarity6 = 2
    elseif runeRaritySelect6 == spinnerRuneRarity6[4] then
      runeRarity6 = 3
    elseif runeRaritySelect6 == spinnerRuneRarity6[5] then
      runeRarity6 = 4
    elseif runeRaritySelect6 == spinnerRuneRarity6[6] then
      runeRarity6 = 5
    end
    if runeRaritySelect5 == spinnerRuneRarity5[1] then
      runeRarity5 = 0
    elseif runeRaritySelect5 == spinnerRuneRarity5[2] then
      runeRarity5 = 1
    elseif runeRaritySelect5 == spinnerRuneRarity5[3] then
      runeRarity5 = 2
    elseif runeRaritySelect5 == spinnerRuneRarity5[4] then
      runeRarity5 = 3
    elseif runeRaritySelect5 == spinnerRuneRarity5[5] then
      runeRarity5 = 4
    elseif runeRaritySelect5 == spinnerRuneRarity5[6] then
      runeRarity5 = 5
    end
    if runeRaritySelect4 == spinnerRuneRarity4[1] then
      runeRarity4 = 0
    elseif runeRaritySelect4 == spinnerRuneRarity4[2] then
      runeRarity4 = 1
    elseif runeRaritySelect4 == spinnerRuneRarity4[3] then
      runeRarity4 = 2
    elseif runeRaritySelect4 == spinnerRuneRarity4[4] then
      runeRarity4 = 3
    elseif runeRaritySelect4 == spinnerRuneRarity4[5] then
      runeRarity4 = 4
    elseif runeRaritySelect4 == spinnerRuneRarity4[6] then
      runeRarity4 = 5
    end
    if runeRaritySelect3 == spinnerRuneRarity3[1] then
      runeRarity3 = 0
    elseif runeRaritySelect3 == spinnerRuneRarity3[2] then
      runeRarity3 = 1
    elseif runeRaritySelect3 == spinnerRuneRarity3[3] then
      runeRarity3 = 2
    elseif runeRaritySelect3 == spinnerRuneRarity3[4] then
      runeRarity3 = 3
    elseif runeRaritySelect3 == spinnerRuneRarity3[5] then
      runeRarity3 = 4
    elseif runeRaritySelect3 == spinnerRuneRarity3[6] then
      runeRarity3 = 5
    end
    if runeRaritySelect2 == spinnerRuneRarity2[1] then
      runeRarity2 = 0
    elseif runeRaritySelect2 == spinnerRuneRarity2[2] then
      runeRarity2 = 1
    elseif runeRaritySelect2 == spinnerRuneRarity2[3] then
      runeRarity2 = 2
    elseif runeRaritySelect2 == spinnerRuneRarity2[4] then
      runeRarity2 = 3
    elseif runeRaritySelect2 == spinnerRuneRarity2[5] then
      runeRarity2 = 4
    elseif runeRaritySelect2 == spinnerRuneRarity2[6] then
      runeRarity2 = 5
    end
    if runeRaritySelect1 == spinnerRuneRarity1[1] then
      runeRarity1 = 0
    elseif runeRaritySelect1 == spinnerRuneRarity1[2] then
      runeRarity1 = 1
    elseif runeRaritySelect1 == spinnerRuneRarity1[3] then
      runeRarity1 = 2
    elseif runeRaritySelect1 == spinnerRuneRarity1[4] then
      runeRarity1 = 3
    elseif runeRaritySelect1 == spinnerRuneRarity1[5] then
      runeRarity1 = 4
    elseif runeRaritySelect1 == spinnerRuneRarity1[6] then
      runeRarity1 = 5
    end
    if nonFlatSubSelect == spinnerSubPerc[1] then
      nonFlatSub = 0
    elseif nonFlatSubSelect == spinnerSubPerc[2] then
      nonFlatSub = 25
    elseif nonFlatSubSelect == spinnerSubPerc[3] then
      nonFlatSub = 33
    elseif nonFlatSubSelect == spinnerSubPerc[4] then
      nonFlatSub = 50
    elseif nonFlatSubSelect == spinnerSubPerc[5] then
      nonFlatSub = 66
    elseif nonFlatSubSelect == spinnerSubPerc[6] then
      nonFlatSub = 75
    elseif nonFlatSubSelect == spinnerSubPerc[7] then
      nonFlatSub = 100
    end
    if runeDetectPct == spinnerRuneDetectPct[1] then
      runeDetect = 0.6
    elseif runeDetectPct == spinnerRuneDetectPct[2] then
      runeDetect = 0.65
    elseif runeDetectPct == spinnerRuneDetectPct[3] then
      runeDetect = 0.7
    elseif runeDetectPct == spinnerRuneDetectPct[4] then
      runeDetect = 0.75
    elseif runeDetectPct == spinnerRuneDetectPct[5] then
      runeDetect = 0.8
    elseif runeDetectPct == spinnerRuneDetectPct[6] then
      runeDetect = 0.85
    elseif runeDetectPct == spinnerRuneDetectPct[7] then
      runeDetect = 0.9
    elseif runeDetectPct == spinnerRuneDetectPct[8] then
      runeDetect = 0.95
    elseif runeDetectPct == spinnerRuneDetectPct[9] then
      runeDetect = 0.99
    end
    if maxDetectPct == spinnerMaxDetectPct[1] then
      maxDetect = 0.6
    elseif maxDetectPct == spinnerMaxDetectPct[2] then
      maxDetect = 0.65
    elseif maxDetectPct == spinnerMaxDetectPct[3] then
      maxDetect = 0.70
    elseif maxDetectPct == spinnerMaxDetectPct[4] then
      maxDetect = 0.75
    elseif maxDetectPct == spinnerMaxDetectPct[5] then
      maxDetect = 0.80
    elseif maxDetectPct == spinnerMaxDetectPct[6] then
      maxDetect = 0.85
    elseif maxDetectPct == spinnerMaxDetectPct[7] then
      maxDetect = 0.90
    elseif maxDetectPct == spinnerMaxDetectPct[8] then
      maxDetect = 0.95
    elseif maxDetectPct == spinnerMaxDetectPct[9] then
      maxDetect = 0.99
    end
  end
  if runRival == false and runMatchUp == false then
    runArena = false
  else
    runArena = true
  end
  if refillOption == spinnerRefillOption[1] then
    refillEnergy = false
  elseif refillOption == spinnerRefillOption[2] then
    refillEnergy = true
  end
  if isPro() and dim then
    setBrightness(1)
  end
end
function setAdvancedOptions()
  local screen = getAppUsableScreenSize()
  screenW = screen:getX()
  screenH = screen:getY()
  if screenRes == spinnerResolution[1] then
    toast("AutoDetect:  " .. screenW .. "x" .. screenH .. "")
    if screenW == 2560 then
      if screenH == 1440 then
        setImagePath(localPath .. "2560x1440")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 2560)
        compareW = 2560
        compareH = 1440
        is16by9 = true
        scriptExit ("This bot is no longer compatible with your version")
      elseif screenH == 1600 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      elseif screenH > 1440 and screenH < 1600 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 1920 then
      if screenH == 1080 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by9 = true
      elseif screenH == 1200 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      elseif screenH > 1080 and screenH < 1200 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 1680 then
      if screenH == 1050 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by9 = true
        scriptExit ("This bot is no longer compatible with your version")
      elseif screenH > 900 and screenH < 1050 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 1600 then
      if screenH == 900 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 1440 then
      if screenH == 900 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by9 = true
        scriptExit ("This bot is no longer compatible with your version")
      elseif screenH > 800 and screenH < 900 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 1366 then
      if screenH == 768 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 1280 then
      if screenH == 720 then
        setImagePath(localPath .. "1280x720")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1280)
        compareW = 1280
        compareH = 720
        is16by9 = true
        scriptExit ("This bot is no longer compatible with your version")
      elseif screenH == 800 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      elseif screenH > 720 and screenH < 800 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 1152 then
      if screenH == 648 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by9 = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 1024 then
      if screenH == 576 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by9 = true
        scriptExit ("This bot is no longer compatible with your version")
      elseif screenH == 600 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        is16by10 = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 2392 then
      if screenH == 1440 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        isNavBar = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    elseif screenW == 1809 then
      if screenH == 1080 then
        setImagePath(localPath .. "1920x1080")
        Settings:setScriptDimension(true, 1920)
        Settings:setCompareDimension(true, 1920)
        compareW = 1920
        compareH = 1080
        isNavBar = true
        scriptExit ("This bot is no longer compatible with your version")
      end
    else
      toast("Cannot Find Screen Resolution.  Set to 1280x720")
      setImagePath(localPath .. "1920x1080")
      Settings:setScriptDimension(true, 1920)
      Settings:setCompareDimension(true, 1920)
      compareW = 1920
      compareH = 1080
      is16by9 = true
      scriptExit ("This bot is no longer compatible with your version")
    end
  elseif screenRes == "2560x1440 (16:9)" then
    setImagePath(localPath .. "2560x1440")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 2560)
    compareW = 2560
    compareH = 1440
    is16by9 = true
    scriptExit ("This bot is no longer compatible with your version")
  elseif screenRes == "1920x1080 (16:9)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by9 = true
  elseif screenRes == "1600x900 (16:9)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by9 = true
  elseif screenRes == "1366x768 (16:9)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by9 = true
  elseif screenRes == "1280x720 (16:9)" then
    setImagePath(localPath .. "1280x720")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1280)
    compareW = 1280
    compareH = 720
    is16by9 = true
    scriptExit ("This bot is no longer compatible with your version")
  elseif screenRes == "1152x648 (16:9)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by9 = true
  elseif screenRes == "1024x576 (16:9)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by9 = true
  elseif screenRes == "2560x1600 (16:10)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by10 = true
    scriptExit ("This bot is no longer compatible with your version")
  elseif screenRes == "1920x1200 (16:10)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by10 = true
    scriptExit ("This bot is no longer compatible with your version")
  elseif screenRes == "1680x1050 (16:10)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by10 = true
    scriptExit ("This bot is no longer compatible with your version")
  elseif screenRes == "1440x900 (16:10)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by10 = true
    scriptExit ("This bot is no longer compatible with your version")
  elseif screenRes == "1280x800 (16:10)" then
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by10 = true
    scriptExit ("This bot is no longer compatible with your version")
  elseif screenRes == "2392x1440" then
    setImagePath(localPath .. "1920x1080N")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    isNavBar = true
    scriptExit ("This bot is no longer compatible with your version")
  elseif screenRes == "1809x1080" then
    setImagePath(localPath .. "1920x1080N")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    isNavBar = true
    scriptExit ("This bot is no longer compatible with your version")
  elseif screenRes == "1024x600" then
    setImagePath(localPath .. "1920x1080N")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    isNavBar = true
    scriptExit ("This bot is no longer compatible with your version")
  else
    setImagePath(localPath .. "1920x1080")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    is16by9 = true
  end
  setScriptMovement()
  if navBar then
    setImagePath(localPath .. "1920x1080N")
    Settings:setScriptDimension(true, 1920)
    Settings:setCompareDimension(true, 1920)
    compareW = 1920
    compareH = 1080
    isNavBar = true
    scriptExit ("This bot is no longer compatible with your version")
  end
  if immersiveMode then
    setImmersiveMode(true)
  end
  if scanSpeed == spinnerScanSpeed[1] then
    scanDelay = 0
  elseif scanSpeed == spinnerScanSpeed[2] then
    scanDelay = 4
  elseif scanSpeed == spinnerScanSpeed[3] then
    scanDelay = 10
  end
  imgAccuracy = imgDetectPct * 0.01
  Settings:set("MinSimilarity", imgAccuracy)
  runeAccuracy = runeDetectPct * 0.01
  textSizeNum = textSize * 1
  setHighlightTextStyle(16777215, 4294967295, textSizeNum)
  if noActivityTimeout == "OFF" then
    maxNoActivityTimeout = 99999999
  else
    maxNoActivityTimeout = noActivityTimeout * 60
  end
  if connectionTimeout == "OFF" then
    maxConnectionTimeout = 99999999
  else
    maxConnectionTimeout = connectionTimeout * 1
  end
  connectionTimeout = connectionTimeout * 4
end
function setDimension16by9()
  local screen = getAppUsableScreenSize()
  screenW = screen:getX()
  screenH = screen:getY()
  compareW = 1920
  compareH = 1080
  Settings:setScriptDimension(true, screenW)
  Settings:setCompareDimension(true, compareW)
end
function setDimension16by10()
  local screen = getAppUsableScreenSize()
  screenW = screen:getX()
  screenH = screen:getY()
  compareW = 1920
  compareH = 1080
  Settings:setScriptDimension(true, screenW)
  Settings:setCompareDimension(true, compareW)
end
function start()
  if startRegion:exists(Pattern("start.png"):similar(imgAccuracy), 2) then
    takeSnapshot()
    if not startDialogRegion:exists(Pattern("startArenaBattle.png"), 0.1) and not startDialogRegion:exists(Pattern("startGiant.png"), 0.1) and not startDialogRegion:exists(Pattern("startDragon.png"), 0.1) and not startDialogRegion:exists(Pattern("startNecro.png"), 0.1) and not startDialogRegion:exists(Pattern("startSD.png"), 0.1) and not startDialogRegion:exists(Pattern("startHall.png"), 0.1) and not startDialogRegion:exists(Pattern("startRaid.png"), 0.1) and not startDialogRegion:exists(Pattern("startRift.png"), 0.1) and not startDialogRegion:exists(Pattern("startToa.png"), 0.1) then
      checkMaxLevel()
      autoSwitchFodder()
    end
    startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
    clearSnapshot()
    if noLeaderSkillRegion:exists(Pattern("noLeaderSkill.png"):similar(imgAccuracy), 2) then
      noLeaderSkillYesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy), 0.1)
    end
  end
  clearSnapshot()
end
function replayOrNext()
  if nextArea then
    nextRegion:existsClick(Pattern("next.png"), 5)
    toaNextStageRegion:existsClick(Pattern("next.png"), 0.1)
  elseif not replayRegion:existsClick(Pattern("replay.png"), 5) then
    toaNextStageRegion:existsClick(Pattern("next.png"), 0.1)
  end
end
function refill()
  if refillEnergy then
    toast("Refilling Energy")
    refillYesRegion:existsClick(Pattern("yesRecharge.png"):similar(imgAccuracy * 0.9), 3)
    rechargeFlashRegion:existsClick(Pattern("rechargeFlash.png"):similar(imgAccuracy), 3)
    yesPurchaseRegion:existsClick(Pattern("yesPurchase.png"):similar(imgAccuracy), 3)
    okPurchaseRegion:existsClick(Pattern("okPurchase.png"):similar(imgAccuracy), 3)
    refillClosePurchaseRegion:existsClick(Pattern("closeX.png"):similar(imgAccuracy), 3)
  else
    refillNoRegion:existsClick(Pattern("noPurchase.png"):similar(imgAccuracy), 3)
    while waitTimer > 0 do
      showCommand("Out of Energy.  Waiting " .. waitTimer .. " minutes.")
      wait(60)
      waitTimer = waitTimer - 1
      checkMagicShop()
    end
    waitTimer = 30
    hideCommand()
    resetTimerNoActivity()
    wait(1)
    resetTimerNoActivity()
  end
end
function defeated()
  reviveNoRegion:existsClick(Pattern("noRevive.png"):similar(.7), 3)
  if runAutoSwitchFodder == true or stopMaxLevel == true then
    isBattleSlotMax()
  end
  victoryDiamondRegion:existsClick(Pattern("victoryDiamond.png"):similar(.7), 3)
  replayRegion:existsClick(Pattern("replay.png"):similar(.7), 3)
end
function victory()
  victoryDiamondRegion:existsClick(Pattern("victoryDiamond.png"):similar(imgAccuracy), 3)
  victoryDiamondRegion:existsClick(Pattern("victoryDiamond.png"):similar(imgAccuracy), 1)
  victoryDiamondRegion:existsClick(Pattern("victoryDiamond.png"):similar(imgAccuracy), 2)
  if not okRegion:existsClick(Pattern("ok.png"):similar(imgAccuracy), 1.5) then
    sellGetRune()
  end
end
function takeSnapshot()
  usePreviousSnap(false)
  startRegion:exists(Pattern("start.png"), 0.1)
  usePreviousSnap(true)
end
function clearSnapshot()
  usePreviousSnap(false)
end
function setAsDungeon()
  isDungeon = true
  isScenario = false
end
function setAsScenario()
  isDungeon = false
  isScenario = true
end
function runLmtCheck()
  if runLmt <= 0 and runNum then
    printBattleMessage()
    soundVibrate("victory.mp3", false)
    return true
  else
    return false
  end
end
function autoSwitchFodder()
  if runAutoSwitchFodder then
    if startRegion:exists(Pattern("start.png"):similar(imgAccuracy), 0.1) then
      clearBattleSlotMax()
      fillEmptySlot()
      return true
    else
      return false
    end
  end
end
function clearBattleSlotMax()
  usePreviousSnap(false)
---  if slot1Max == true then
---   click(battleSlot1Region)
---  end
  if slot2Max == true then
    click(battleSlot2Region)
    slot2Max = false
  end
  if slot3Max == true then
    click(battleSlot3Region)
    slot3Max = false
  end
  if slot4Max == true then
    click(battleSlot4Region)
    slot4Max = false
  end
end
function clickFriend()
  if friendSlot1Region:exists(Pattern("stopFriend.png"), 0.1) then
    isUsedAllFriend = true
    return false
  elseif not friendSlot1Region:exists(Pattern("checkMons.png"), 0.1) then
    click(friendSlot1Region)
    isClickFriend = true
    return true
  else
    return false
  end
  isClickFriend = true
end
function fodderPicker()

end
function StorageFodderEvaluater()
  while storageScrollY > 0 do
    storageScrollY = storageScrollY - 1 
      dragDrop(Location(574, 273), Location(574, 582))      
      wait (.1)
      dragDrop(Location(574, 273), Location(574, 583))
      wait(.1)
  end

  evaluateStorage = true
  while evaluateStorage do    
    if fodderInfoRegion:exists(Pattern("userLevel.png"):similar(.75), 0.1) then
      click(fodderCloseLocation)
    end
    if fodderFill < 1 then
      fodderStorageOkRegion:click(Pattern("ok.png"):similar(.80))
      evaluateStorage = false
    end
    if monX > 7 then 
      monX = 0 
      monY = monY+1
    end
    if monY > 3 then monY = 0
      storageScrollY = storageScrollY + 1 
      dragDrop(Location(574, 273), Location(574, 582))      
      wait (.1)
      dragDrop(Location(574, 273), Location(574, 583))
      wait(.1)
    end
    monLevelSpot = Region(1436 - monX*156, 830 - monY*156, 150, 55)
    monLevelSpot:highlight(1)
    checkMonsRegion = Region(1491 - monX*156, 725 - monY*156, 90, 60)
    checkMonsRegion:highlight(1)
    emptyFodderRegion = Region(1450 - monX*156, 750 - monY*156, 120, 110)
    emptyFodderRegion:highlight(1)
    if  monLevelSpot:exists(Pattern("maxFodder.png"):similar(.65), 0.1) then
      if monLevelSpot:exists(Pattern("maxFodder40.png"):similar(.90), 0.1) then
        scriptExit("No more monsters to max!")
      end
    elseif emptyFodderRegion:exists(Pattern("emptyFodder.png"):similar(.7), 0.1) then
    elseif checkMonsRegion:exists(Pattern("checkMons.png"):similar(.70), 0.1) then
    else
      if fodderFill > 0 then
        click(Location (1511 - monX*156, 830 - monY*156))
        fodderFill = fodderFill - 1        
        if fodderFill < 1 then
          monX = 0 
          monY = 0
          fodderStorageOkRegion:click(Pattern("ok.png"):similar(.80))
          if fodderInfoRegion:exists(Pattern("userLevel.png"):similar(.75), 0.1) then
            click(fodderCloseLocation)
          else
            evaluateStorage = false
          end
        end
      end
    end
    monX = monX+1
  end
end
function FodderScrollRight()  
    swipe(Location(110, 741), Location(1100, 741))
end
function StorageFodderScrollBottom()
  local a = (storageMonsters / 32)
  while a > 0 do
    swipe(Location(741, 741), Location(741, 122))
    a = a - 1
  end
end
function FindEmptyFodderSlots()
  bestMatchIndex = existsMultiMax(FodderSlotImages, FindEmptyFodderSlotsRegion)
  if (bestMatchIndex == 1) then
    fodderFill = 0
  elseif (bestMatchIndex == 2) then
    fodderFill = 1
  elseif (bestMatchIndex == 3) then
    fodderFill = 2
  elseif (bestMatchIndex == 4) then
    fodderFill = 3
  elseif (bestMatchIndex == 5) then
    fodderFill = 4
  else
    fodderFill = 1
  end
  bestMatchIndex = existsMultiMax(FodderSlotImages, FindFillFodderSlotsRegion)
  if (bestMatchIndex == 1) then
    fodderFill = fodderFill - 0
  elseif (bestMatchIndex == 2) then
    fodderFill = fodderFill - 1
  elseif (bestMatchIndex == 3) then
    fodderFill = fodderFill - 2
  elseif (bestMatchIndex == 4) then
    fodderFill = fodderFill - 3
  elseif (bestMatchIndex == 5) then
    fodderFill = fodderFill - 4
  else
    fodderFill = 1
  end
end
function fillEmptySlot()
  if battleSlot2Region:exists(Pattern("emptySlot.png"):similar(.7), 0.1) or battleSlot3Region:exists(Pattern("emptySlot.png"):similar(.7), 0.1) or battleSlot4Region:exists(Pattern("emptySlot.png"):similar(.7), 0.1) then
    storageIconRegion:existsClick(Pattern("endOfFodderSlot.png"):similar(.7), 0.1)
    fodderStorageOkRegion:exists(Pattern("ok.png"):similar(.7), 2)
    FindEmptyFodderSlots()
    StorageFodderScrollBottom()
    wait(.5)
    StorageFodderEvaluater()
  end
end
function isBattleSlotMax()
  slot2MaxRegion:highlight(1)
  if slot2MaxRegion:exists(Pattern("levelDone.png"):similar(maxDetect), 0.1) then
    slot2Max = true
    toast("Slot2Max")
  end
  slot3MaxRegion:highlight(1)
  if slot3MaxRegion:exists(Pattern("levelDone.png"):similar(maxDetect), 0.1) then
    slot3Max = true
    toast("Slot3Max")
  end
  slot4MaxRegion:highlight(1)
  if slot4MaxRegion:exists(Pattern("levelDone.png"):similar(maxDetect), 0.1) then
    slot4Max = true
    toast("Slot4Max")
  end
end
function replaceEmptyBattleSlot()
  if slot1BattleRegion:exists(Pattern("emptySlot.png"), 2) and not slot1FriendRegion:exists(Pattern("friendUsed.png"), 2) then
    click(friend1Location)
  end
  if slot2BattleRegion:exists(Pattern("emptySlot.png"), 2) then
    local a = 10
    while a > 0 do
      moveRightMonsterList()
      a = a - 1
    end
    usePreviousSnap(true)
    if monsterListRegion:exists(Pattern("level1mons.png"), 0.1) then
      click()
    end
    usePreviousSnap(false)
  end
end
function checkMaxLevel()
  if stopMaxLevel then
    usePreviousSnap(false)
    if slot2Max == true then
      isMaxLevel = true
    elseif slot3Max == true then
      isMaxLevel = true
    elseif slot4Max == true then
      isMaxLevel = true
    end
  end
end
function dialogTrialTimeout()
  dialogInit()
  addTextView("1 hour reach in Trial Version.  Closing.", 14)
  dialogShow("Trial Version")
end
function resetTimerNoActivity()
  timerNoActivity:set()
end
function checkTimerNoActivity()
  if timerNoActivity:check() > maxNoActivityTimeout then
    soundVibrate("alarm.mp3", true)
    dialogInit()
    addTextView("No Script Activity.", 14)
    dialogShow("Warning")
    stopSoundVibrate()
    return true
  else
    return false
  end
end
function checkMagicShop()
  local onehour = 3600
  if onehour < timerMagicShop:check() or firstCheckMagicShop then
    firstCheckMagicShop = false
    timerMagicShop:set()
    findMagicShop()
    return true
  else
    return false
  end
end
function soundVibrate(music, isForever)
  if playSound then
    playMusic(music, isForever)
  end
  local a = 4
  if playVibrate then
    while a > 0 do
      vibrate(1)
      wait(2)
      a = a - 1
    end
  end
end
function stopSoundVibrate()
  if playSound then
    stopMusic()
  end
end
function findRuneRarity()
  runeRarityRegion:highlight()
  local bestMatchIndex = existsMultiMax(runeRarityImages, runeRarityRegion)
  if (bestMatchIndex == 1) then
    runeRarity = "Legendary"
    rareNum = 5
    runeSubCnt = 4
  elseif (bestMatchIndex == 2) then
    runeRarity = "Hero"
    rareNum = 4
    runeSubCnt = 3
  elseif (bestMatchIndex == 3) then
    runeRarity = "Rare"
    rareNum = 3
    runeSubCnt = 2
  elseif (bestMatchIndex == 4) then
    runeRarity = "Magic"
    rareNum = 2
    runeSubCnt = 1
  elseif (bestMatchIndex == 5) then
    runeRarity = "Normal"
    rareNum = 1
    runeSubCnt = 0
  else
    runeRarity = "Legendary"
    rareNum = 5
    runeSubCnt = 1
  end
  runeRarityRegion:highlight()
end
function findRuneRank()
  runeRankRegion:highlight()
  local loc = Location(732, 364)
  local r, g, b = getColor(loc)
  if (r > 200 and g > 200 and b > 200) then
    runeRank = 6
  else
    local loc = Location(715, 364)
    local r, g, b = getColor(loc)
    if (r > 200 and g > 200 and b > 200) then
      runeRank = 5
    else
      local loc = Location(698, 364)
      local r, g, b = getColor(loc)
      if (r > 200 and g > 200 and b > 200) then
        runeRank = 4
      else
        local loc = Location(681, 364)
        local r, g, b = getColor(loc)
        if (r > 200 and g > 200 and b > 200) then
          runeRank = 3
        else
          local loc = Location(664, 364)
          local r, g, b = getColor(loc)
          if (r > 200 and g > 200 and b > 200) then
            runeRank = 2
          else
            local loc = Location(647, 364)
            local r, g, b = getColor(loc)
            if (r > 200 and g > 200 and b > 200) then
              runeRank = 1
            else
              runeRank = 6
            end
          end
        end
      end
    end
  end
  runeRankRegion:highlight()
end
function findRuneSlot()
  runeSlotRegion:highlight()
  if(runeSlotRegion:exists(Pattern("slotOne.png"):similar(.9), .5)) then
    runeSlot = 1
    slotString = "1"
  elseif(runeSlotRegion:exists(Pattern("slotTwo.png"):similar(.9), .5)) then
    runeSlot = 2
    slotString = "2"
  elseif(runeSlotRegion:exists(Pattern("slotThree.png"):similar(.9), .5)) then
    runeSlot = 3
    slotString = "3"
  elseif (runeSlotRegion:exists(Pattern("slotFour.png"):similar(.9), .5)) then
    runeSlot = 4
    slotString = "4"
  elseif(runeSlotRegion:exists(Pattern("slotFive.png"):similar(.9), .5)) then
    runeSlot = 5
    slotString = "5"
  elseif (runeSlotRegion:exists(Pattern("slotSix.png"):similar(.9), .5)) then
    runeSlot = 6
    slotString = "6"
  else
    runeSlot = 1
    slotString = "1/3/5"
  end
  runeSlotRegion:highlight()
end
function findMainStat()
  mainStatRegion:highlight()
  local bestMatchIndex = existsMultiMax(mainStatImages, mainStatRegion)
  if (bestMatchIndex == 1) then
    if  mainStatRegion:exists(Pattern("percentMain.png"):similar(.70)) then
      mainStat = ("HP%")
    else
      mainStat = ("HP")
    end
  elseif (bestMatchIndex == 2) then
    if  mainStatRegion:exists(Pattern("percentMain.png"):similar(.70)) then
      mainStat = ("DEF%")
    else
      mainStat = ("DEF")
    end
  elseif (bestMatchIndex == 3) then
    if  mainStatRegion:exists(Pattern("percentMain.png"):similar(.70)) then
      mainStat = ("ATK%")
    else
      mainStat = ("ATK")
    end
  elseif (bestMatchIndex == 4) then
    mainStat = ("SPD")
  elseif (bestMatchIndex == 5) then
    mainStat = ("CRI Rate")
  elseif (bestMatchIndex == 6) then
    mainStat = ("CRI DMG")
  elseif (bestMatchIndex == 7) then
    mainStat = ("RES")
  elseif (bestMatchIndex == 8) then
    mainStat = ("ACC")
  else mainStat = ("NONE")
    scriptExit ( "This rune's main stat cannot be determined")
  end
  mainStatRegion:highlight()
end
function subEval()
  if runeSubRegion:exists(Pattern("runeSubPercentage.png"):similar(0.8)) then
    subTable = listToTable(runeSubRegion:findAll(Pattern("runeSubPercentage.png"):similar(0.8)))
    runeSubPercCnt = tableLength(subTable)
  else
    runeSubPercCnt = 0
  end
  if runeSubRegion:exists((Pattern("runeSubSPD.png"):similar(0.8)), 3) then
    runeSubPercCnt = runeSubPercCnt + 1
  end
  subMatch = math.floor(runeSubPercCnt / runeSubCnt * 100)
end
function sellRune()
  if screenshotSell == true then
    captureScreenshot()
  end
  sellRegion:existsClick(Pattern("sell.png"):similar(.6))
  runeYesRegion:existsClick(Pattern("yes.png"):similar(.6))
  if runeRank == 6 then r6Sold = r6Sold + 1
  elseif runeRank == 5 then r5Sold = r5Sold + 1
  else runeSold = runeSold + 1
  end
end
function getRune()
  if screenshotKeep == true then
    captureScreenshot()
  end
  getRegion:existsClick(Pattern("get.png"):similar(.6))
  if runeRank == 6 then r6Count = r6Count + 1
  elseif runeRank == 5 then r5Count = r5Count + 1
  else r6Count = r6Count + 1
  end
end
function runeKeep1 ()
  if runeRank == 6 and rareNum >= runeRarity6 then
    runeKeep3 ()
  elseif runeRank == 5 and rareNum >= runeRarity5 then
    runeKeep3 ()
  elseif runeRank == 4 and rareNum >= runeRarity4 then
    runeKeep3 ()
  elseif runeRank == 3 and rareNum >= runeRarity3 then
    runeKeep3 ()
  elseif runeRank == 2 and rareNum >= runeRarity2 then
    runeKeep3 ()
  elseif runeRank == 1 and rareNum >= runeRarity1 then
    runeKeep3 ()
  else
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  end
end
function runeKeep3 ()
  if runeSlot == 2 and mainStat == ("HP") then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  elseif runeSlot == 2 and mainStat == ("ATK") then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  elseif runeSlot == 2 and mainStat == ("DEF") then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  elseif runeSlot == 4 and mainStat == ("HP") then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  elseif runeSlot == 4 and mainStat == ("ATK") then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  elseif runeSlot == 4 and mainStat == ("DEF") then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  elseif runeSlot == 6 and mainStat == ("HP") then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  elseif runeSlot == 6 and mainStat == ("ATK") then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  elseif runeSlot == 6 and mainStat == ("DEF") then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  else
    runeKeep4 ()
  end
end
function tableLength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end
function runeKeep4 ()
  if keepSpdMain == true and mainStat == ("SPD") then
    sellingRune = false
    keepSell = "Keeping Rune"
    runeKeep5 ()
  elseif subMatch < nonFlatSub then
    sellingRune = true
    keepSell = "Selling Rune"
    runeKeep5 ()
  else
    sellingRune = false
    keepSell = "Keeping Rune"
    runeKeep5 ()
  end
end
function runeKeep5 ()
  setHighlightTextStyle(16777215, 4294967295, textSizeNum)
  runeStatString = " " .. runeRank .. " star \n" .. runeRarity .. "(" .. slotString .. ") rune \n Main Stat: " .. mainStat .. "\n Matching subs: " .. subMatch .. "% \n" .. keepSell .. " "
  runeStatRegion:highlight(runeStatString)
  if sellingRune == true then
    sellRune()
  else
    getRune()
  end
  runeStatRegion:highlight(runeStatString)
end
function sellGetRune ()
  if grindstoneRegion:exists(Pattern("grindTilde.png"):similar(imgAccuracy), 0.1) then
    getRune()
  elseif enchantedGemRegion:exists(Pattern("enchantedGem.png"):similar(.6), 0.1) then
    getRune()
  elseif sellAllRune == true then
    sellRune()
  elseif keepAll == true then
    getRune()
  else
    findRuneRarity()
    findRuneRank()
    findRuneSlot()
    findMainStat()
    subEval()
    runeKeep1()
  end
end
function setLocation(a, b)
  return Location(a, b)
end
function setZoom(a, b, c, d, e, f, g, h, s)
  return zoom(a, b, c, d, e, f, g, h, s)
end
function setScriptMovement()
  function moveRightLittle()
    swipe(Location(1200, 600), Location(600, 600))
  end
  function moveLeftLittle()
    swipe(Location(600, 600), Location(1200, 600))
  end
  function moveDownLittle()
    swipe(Location(1050, 650), Location(1050, 450))
  end
  function moveUpLittle()
    swipe(Location(1050, 450), Location(1050, 650))
  end
  function moveRight()
    swipe(Location(1600, 600), Location(200, 600))
  end
  function moveLeft()
    swipe(Location(200, 600), Location(1600, 600))
  end
  function moveDown()
    swipe(Location(1050, 800), Location(1050, 350))
  end
  function moveUp()
    swipe(Location(1050, 350), Location(1050, 800))
  end
  function moveUpList()
    swipe(Location(500, 400), Location(500, 800))
  end
  function moveDownList()
    swipe(Location(500, 800), Location(500, 400))
  end
  function moveRightSelectList()
    swipe(Location(1160, 675), Location(75, 675))
  end
  function moveLeftSelectList()
    swipe(Location(75, 675), Location(1160, 675))
  end
  function moveScenarioDown()
    swipe(Location(1500, 800), Location(1500, 350))
  end
  function moveRightFodderList()
    swipe(Location(1215, 740), Location(100, 740))
  end
  function moveLeftFodderList()
    setDragDropTiming(200, 200)
    setDragDropStepCount(500)
    dragDrop(Location(127, 740), Location(1271, 740))
  end
  function zoomOut()
    zoom(300, 500, 900, 500, 1600, 500, 1000, 500, 1)
  end
  function tinySwipe()
    swipe(setLocation(550, 800), setLocation(550, 790))
  end
end
function arenaVictory()
  toast("Arena victory")
  victoryDefeatRegion:existsClick(Pattern("victory.png"):similar(imgAccuracy), 2)
  victoryDefeatRegion:existsClick(Pattern("victory.png"):similar(imgAccuracy), 2)
  arenaRivalDialogRegion:existsClick(Pattern("arenaRivalDialog.png"), 2)
end
function arenaDefeat()
  toast("Arena defeated")
  victoryDefeatRegion:existsClick(Pattern("defeat.png"):similar(imgAccuracy), 2)
  victoryDefeatRegion:existsClick(Pattern("defeat.png"):similar(imgAccuracy), 2)
  arenaRivalDialogRegion:existsClick(Pattern("arenaRivalDialog.png"), 2)
end
function refreshList()
  toast("Refreshing list")
  refreshListRegion:existsClick(Pattern("refreshList.png"), 2)
  refreshList2Region:existsClick(Pattern("refreshList2.png"):similar(imgAccuracy * 0.8), 2)
end
function existsArenaRival()
  if runRival == true then
    if arenaRivalNumberRegion:exists(Pattern("arenaRivalNumber.png"):similar(imgAccuracy), 3) then
      arenaRivalRegion:existsClick(Pattern("arenaRivalNumber.png"), 3)
      isArenaRival = true
        toast("Finding a Rival")
    end
  elseif runMatchUp == true then
    arenaMatchupRegion:existsClick(Pattern("matchUp.png"), 0.1)
    isArenaRival = false
      toast("Finding a Matchup")
  end
end
function waitClickArenaRival()
  if isArenaRival then
    arenaRivalDialogRegion:existsClick(Pattern("arenaRivalDialog.png"), 10)
    playRegion:existsClick(Pattern("play.png"):similar(0.9), 1)
  else
    playRegion:existsClick(Pattern("play.png"):similar(0.9), 10)
  end
end
function arenaBattle()
  wait(2)
  if runRival == true and runMatchUp == false then
    click(Location (325, 370))
    isArenaRival = true
  end
  existsArenaRival()
  if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
    arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
    wait(1)
    startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
    waitClickArenaRival()
  elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
    refreshList()
    arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
    wait(1)
    startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
    waitClickArenaRival()
  else
    moveDown()
    if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
      arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
      wait(1)
      startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
      waitClickArenaRival()
    elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
      refreshList()
      arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
      wait(1)
      startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
      waitClickArenaRival()
    else
      moveDown()
      if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
        arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
        wait(1)
        startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
        waitClickArenaRival()
      elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
        refreshList()
        arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
        wait(1)
        startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
        waitClickArenaRival()
      elseif runMatchUp == true then
        arenaMatchupRegion:existsClick(Pattern("matchUp.png"), 0.1)
        if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
          arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
          wait(1)
          startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
          waitClickArenaRival()
        elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
          refreshList()
          arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
          wait(1)
          startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
          waitClickArenaRival()
        else
          moveDown()
          if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
            arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
            wait(1)
            startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
            waitClickArenaRival()
          elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
            refreshList()
            arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
            wait(1)
            startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
            waitClickArenaRival()
          else
            moveDown()
            if arenaWingRegion:exists(Pattern("wing.png"):similar(imgAccuracy), 2) then
              arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
              wait(1)
              startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 3)
              waitClickArenaRival()
            elseif arenaBottomRegion:exists(Pattern("arenaBottom.png"):similar(imgAccuracy), 2) then
              refreshList()
              arenaWingRegion:existsClick(Pattern("wing.png"):similar(imgAccuracy), 2)
              wait(1)
              startRegion:existsClick(Pattern("start.png"):similar(imgAccuracy), 2)
              waitClickArenaRival()
            end
          end
        end
      elseif runMatchUp == false then
        if farmLoc == spinnerFarmLoc[19] then
          runRiftRaid = true
          arenaCheck = false
          closeArenaDialogBox()
          runScenarioDungeon()
          runRiftRaidStart()
        else
          arenaCheck = false
          closeArenaDialogBox()
          runScenarioDungeon()
          start()
        end
      end
    end
  end
end
function liveArenaSelectMon(choice)
  if not slot2Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot2Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(60, 905))
  elseif not slot3Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot3Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(225, 750))
  elseif not slot4Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot4Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(225, 905))
  elseif not slot5Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot5Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(390, 750))
  elseif not slot6Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot6Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(390, 905))
  elseif not slot7Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot7Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(555, 750))
  elseif not slot8Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot8Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(555, 905))
  elseif not slot9Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot9Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(715, 750))
  elseif not slot10Region:exists(Pattern("liveArenaNotSelectable.png"):similar(0.5), 0.1) and not slot10Region:exists(Pattern("liveArenaCheck.png"), 0.1) then
    click(Location(715, 905))
  end
end
function liveArenaBattle()
  toast("Live Arena Battle")
  liveArenaBattleRegion:existsClick(Pattern("liveArenaBattle.png"), 0.1)
  local a = 0
  toast("Waiting for Opponent")
  while true do
    if a < 20 and not liveArenaTopRegion:exists(Pattern("liveArenaSelect.png"), 0.1) then
      a = a + 1
      wait(3)
      break
    end
  end
  local b = 0
  local d = 0
  while b < 3 do
    if liveArenaTopRegion:exists(Pattern("liveArenaSelect.png"), 0.1) then
      liveArenaSelectMon()
      if liveArenaSameMonOkRegion:existsClick(Pattern("liveArenaSameMonOk.png"), 0.1) then
        liveArenaSameMonOkRegion:existsClick(Pattern("ok.png"), 0.1)
        liveArenaSelectMon()
      end
      liveArenaSelectMon()
      if liveArenaSameMonOkRegion:existsClick(Pattern("liveArenaSameMonOk.png"), 0.1) then
        liveArenaSelectMon()
      end
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"):similar(runeAccuracy), 1)
      b = b + 1
    else
      while d < 10 do
        wait(3)
        if not liveArenaTopRegion:exists(Pattern("liveArenaOppSelect.png"), 0.1) then
          break
        end
        d = d + 1
      end
    end
  end
  local c = 0
  while c < 10 do
    if liveArenaTopRegion:exists(Pattern("liveArenaBanOpp.png"), 3) then
      toast("Banning Opponent Monster")
      click(Location(1155, 405))
      click(Location(1155, 320))
      click(Location(1155, 215))
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"):similar(runeAccuracy), 0.1)
      break
    else
      wait(3)
      c = c + 1
    end
  end
  local e = 0
  while e < 10 do
    if liveArenaTopRegion:exists(Pattern("liveArenaLeader.png"), 3) then
      toast("Selecting Leader")
      click(Location(435, 405))
      click(Location(435, 215))
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"):similar(runeAccuracy), 0.1)
      break
    else
      wait(3)
      e = e + 1
    end
  end
end
function closeArenaDialogBox()
  toast("Close Arena Dialog Box")
  arenaXRegion:highlight(2)
  arenaXRegion:existsClick(Pattern("closeX.png"), 2)
  toast("Exit Arena Screen")
  backButtonRegion:highlight(2)
  existsClick(Pattern("back2Button.png"):similar(.6), 3)
end
function closeCairoDungeonDialogBox()
  closeXCairoDungeonRegion:highlight(2)
  closeXCairoDungeonRegion:existsClick(Pattern("closeX.png"), 2)
end
function closeScenarioDialogBox()
  closeXScenarioRegion:existsClick(Pattern("closeX.png"), 2)
end
function closeMagicShopDialogBox()
  closeXMagicShopRegion:existsClick(Pattern("closeX.png"), 2)
end
function closeRiftDialogBox()
  closeXRiftRegion:existsClick(Pattern("closeX.png"), 2)
end
function closeToaDialogBox()
  closeXToaRegion:existsClick(Pattern("closeX.png"), 2)
end
function clickRiftBack()
  riftBackRegion:existsClick(Pattern("back2Button.png"), 2)
end
function clickMatchupArena()
  existsClick(Pattern("mapArena.png"):similar(.5))
  existsClick(Pattern("startArenaSelect.png"):similar(.5))
  existsClick(Pattern("startArenaBattle.png"):similar(.5))
  existsArenaRival()
end
function findArena()
  toast("Finding Arena")
  closeXStartDialog:existsClick(Pattern("closeX.png"), 0.1)
  if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
    clickMatchupArena()
  elseif dialogCairoDungeonRegion:exists(Pattern("cairoDungeon.png"):similar(imgAccuracy), 0.1) then
    closeCairoDungeonDialogBox()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      else
        moveLeft()
        clickMatchupArena()
      end
    end
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeScenarioDialogBox()
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      end
    end
  elseif dialogToaRegion:exists(Pattern("dialogToa.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      else
        moveLeft()
        clickMatchupArena()
      end
    end
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      end
    end
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      end
    end
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 2) then
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickMatchupArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickMatchupArena()
      end
    end
  end
end
function clickLiveArena()
  existsClick(Pattern("mapArena.png"), 0.1)
  existsClick(Pattern("worldArena.png"):similar(.6), 3)
end
function findLiveArena()
  toast("Finding Live Arena")
  if liveArenaMapRegion:exists(Pattern("mapLiveArena.png"), 0.1) then
    clickLiveArena()
  elseif exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
    clickLiveArena()
  elseif dialogCairoDungeonRegion:exists(Pattern("cairoDungeon.png"):similar(imgAccuracy), 0.1) then
    closeCairoDungeonDialogBox()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      else
        moveLeft()
        clickLiveArena()
      end
    end
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeScenarioDialogBox()
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      end
    end
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      end
    end
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      end
    end
  elseif exists(Pattern("dialogTOA.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      else
        moveLeft()
        clickLiveArena()
      end
    end
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 2) then
    moveLeft()
    if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
      clickLiveArena()
    else
      moveLeft()
      if exists(Pattern("mapArena.png"):similar(imgAccuracy), 0.1) then
        clickLiveArena()
      end
    end
  end
end
function clickGiantB10()
  if dungeonListRegion:existsClick(Pattern("mapGiantsKeep.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if bNum < 7 then
      wait(1)
      dragDrop(Location(1200, 320), Location(1200, 835))
      if bNum < 4 then
        wait(1)
        dragDrop(Location(1200, 320), Location(1200, 835))
      end
    end
    if dungeonBattleRegion:exists(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0))) then
        dungeonBattleRegion:existsClick(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
    elseif dungeonListRegion:exists(Pattern("mapGiantsKeep.png"):similar(imgAccuracy), 1) then
        keyevent(4)
        toast("Couldn't find B"..bNum..", going back")
        findDungeon()
    end
  end
end
function clickDragonB10()
  if dungeonListRegion:existsClick(Pattern("mapDragonsLair.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if bNum < 7 then
      wait(1)
      dragDrop(Location(1200, 320), Location(1200, 835))
      if bNum < 4 then
        wait(1)
        dragDrop(Location(1200, 320), Location(1200, 835))
      end
    end
    if dungeonBattleRegion:exists(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0))) then
        dungeonBattleRegion:existsClick(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
    elseif dungeonListRegion:exists(Pattern("mapDragonsLair.png"):similar(imgAccuracy), 1) then
        keyevent(4)
        toast("Couldn't find B"..bNum..", going back")
        findDungeon()
    end
  end
end
function clickNecroB10()
  if dungeonListRegion:existsClick(Pattern("mapNecropolis.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if bNum < 7 then
      wait(1)
      dragDrop(Location(1200, 320), Location(1200, 835))
      if bNum < 4 then
        wait(1)
        dragDrop(Location(1200, 320), Location(1200, 835))
      end
    end
    if dungeonBattleRegion:exists(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0))) then
        dungeonBattleRegion:existsClick(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
    elseif dungeonListRegion:exists(Pattern("mapNecropolis.png"):similar(imgAccuracy), 1) then
        keyevent(4)
        toast("Couldn't find B"..bNum..", going back")
        findDungeon()
    end
  end
end
function clickSD()
  if dungeonListRegion:existsClick(Pattern("mapSD.png"):similar(imgAccuracy), 1) then
    wait(2)
    if sdChargeRegion:exists(Pattern("sdCharge.png"), 1) then
        sdChargeRegion:existsClick(Pattern("sdCharge.png"), 1)
    elseif dungeonListRegion:exists(Pattern("mapSD.png"):similar(imgAccuracy), 1) then
        keyevent(4)
        toast("Couldn't find B"..bNum..", going back")
        findDungeon()
    end
  end
end
function clickDungeon()
  if runGiant then
    clickGiantB10()
  elseif runDragon then
    clickDragonB10()
  elseif runNecro then
    clickNecroB10()
  elseif runSD then
    clickSD()
  end
end
function existsDungeon()
  if runGiant then
    if dungeonListRegion:exists(Pattern("mapGiantsKeep.png"), 0.1) then
      return true
    end
  elseif runDragon then
    if dungeonListRegion:exists(Pattern("mapDragonsLair.png"), 0.1) then
      return true
    end
  elseif runNecro then
    if dungeonListRegion:exists(Pattern("mapNecropolis.png"), 0.1) then
      return true
    end
  elseif runSD then
    if dungeonListRegion:exists(Pattern("mapSD.png"), 0.1) then
      return true
    end
  else
    return false
  end
end
function findDungeon()
  if runGiant then
    toast("Finding Giant's Keep")
  elseif runDragon then
    toast("Finding Dragon's Lair")
  elseif runNecro then
    toast("Finding Necropolis")
  elseif runSD then
    toast("Finding Secret Dungeon")
  else
    return
  end
  if existsDungeon() then
    clickDungeon()
  elseif dungeonListRegion:exists(Pattern("mapHallofMagic.png"):similar(imgAccuracy), 0.1) then
    moveUpList()
    clickDungeon()
  elseif dungeonListRegion:exists(Pattern("mapHallofWater.png"):similar(imgAccuracy), 0.1) then
    moveUpList()
    wait(1)
    moveUpList()
    clickDungeon()
  elseif arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
    closeArenaDialogBox()
    existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
    clickDungeon()
  elseif exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
    existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
    clickDungeon()
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeDialogScenarioRegion:existsClick(Pattern("closeX.png"):similar(imgAccuracy), 2)
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
        clickDungeon()
      end
    end
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickDungeon()
      end
    end
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickDungeon()
      end
    end
  elseif exists(Pattern("dialogTOA.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickDungeon()
      else
        moveLeft()
        clickDungeon()
      end
    end
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) then
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
      clickDungeon()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
        clickDungeon()
      end
    end
  end
end
function clickHallofMagicB10()
  if dungeonListRegion:existsClick(Pattern("mapHallofMagic.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if bNum < 7 then
      wait(1)
      dragDrop(Location(1200, 320), Location(1200, 835))
      if bNum < 4 then
        wait(1)
        dragDrop(Location(1200, 320), Location(1200, 835))
      end
    end
    dungeonBattleRegion:click(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
  end
end
function clickHallofLightB10()
  if dungeonListRegion:existsClick(Pattern("mapHallofLight.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if bNum < 7 then
      wait(1)
      dragDrop(Location(1200, 320), Location(1200, 835))
      if bNum < 4 then
        wait(1)
        dragDrop(Location(1200, 320), Location(1200, 835))
      end
    end
    dungeonBattleRegion:click(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
  end
end
function clickHallofDarkB10()
  if dungeonListRegion:existsClick(Pattern("mapHallofDark.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if bNum < 7 then
      wait(1)
      dragDrop(Location(1200, 320), Location(1200, 835))
      if bNum < 4 then
        wait(1)
        dragDrop(Location(1200, 320), Location(1200, 835))
      end
    end
    dungeonBattleRegion:click(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
  end
end
function clickHallofFireB10()
  if dungeonListRegion:existsClick(Pattern("mapHallofFire.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if bNum < 7 then
      wait(1)
      dragDrop(Location(1200, 320), Location(1200, 835))
      if bNum < 4 then
        wait(1)
        dragDrop(Location(1200, 320), Location(1200, 835))
      end
    end
    dungeonBattleRegion:click(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
  end
end
function clickHallofWaterB10()
  if dungeonListRegion:existsClick(Pattern("mapHallofWater.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if bNum < 7 then
      wait(1)
      dragDrop(Location(1200, 320), Location(1200, 835))
      if bNum < 4 then
        wait(1)
        dragDrop(Location(1200, 320), Location(1200, 835))
      end
    end
    dungeonBattleRegion:click(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
  end
end
function clickHallofWindB10()
  if dungeonListRegion:existsClick(Pattern("mapHallofWind.png"):similar(imgAccuracy), 1) then
    wait(2)
    dragDrop(Location(1200, 835), Location(1200, 320))
    wait(1)
    dragDrop(Location(1200, 835), Location(1200, 320))
    if bNum < 7 then
      wait(1)
      dragDrop(Location(1200, 320), Location(1200, 835))
      if bNum < 4 then
        wait(1)
        dragDrop(Location(1200, 320), Location(1200, 835))
      end
    end
    dungeonBattleRegion:click(Pattern("mapB"..bNum..".png"):targetOffset(setLocation(453, 0)))
  end
end
function clickHallB10()
  if runHallMagic then
    clickHallofMagicB10()
  elseif runHallLight then
    clickHallofLightB10()
  elseif runHallDark then
    clickHallofDarkB10()
  elseif runHallFire then
    clickHallofFireB10()
  elseif runHallWater then
    clickHallofWaterB10()
  elseif runHallWind then
    clickHallofWindB10()
  end
end
function existsHallB10()
  if runHallMagic then
    if dungeonListRegion:exists(Pattern("mapHallofMagic.png"), 0.1) then
      return true
    end
  elseif runHallLight then
    if dungeonListRegion:exists(Pattern("mapHallofLight.png"), 0.1) then
      return true
    end
  elseif runHallDark then
    if dungeonListRegion:exists(Pattern("mapHallofDark.png"), 0.1) then
      return true
    end
  elseif runHallFire then
    if dungeonListRegion:exists(Pattern("mapHallofFire.png"), 0.1) then
      return true
    end
  elseif runHallWater then
    if dungeonListRegion:exists(Pattern("mapHallofWater.png"), 0.1) then
      return true
    end
  elseif runHallWind then
    if dungeonListRegion:exists(Pattern("mapHallofWind.png"), 0.1) then
      return true
    end
  else
    return false
  end
end
function findHallB10()
  if runHallMagic then
    toast("Finding Halls of Magic")
  elseif runHallLight then
    toast("Finding Halls of Light")
  elseif runHallDark then
    toast("Finding Halls of Dark")
  elseif runHallFire then
    toast("Finding Halls of Fire")
  elseif runHallWater then
    toast("Finding Halls of Water")
  elseif runHallWind then
    toast("Finding Halls of Wind")
  else
    return
  end
  if existsHallB10() then
    clickHallB10()
  elseif dungeonListRegion:exists(Pattern("mapDragonsLair.png"):similar(imgAccuracy), 0.1) then
    moveDownList()
    clickHallB10()
  elseif dungeonListRegion:exists(Pattern("mapHallOfWind.png"):similar(imgAccuracy), 0.1) then
    moveUpList()
    clickHallB10()
  elseif arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
    closeArenaDialogBox()
    existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
    wait(1)
    moveDownList()
    clickHallB10()
  elseif exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
    existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
    wait(1)
    moveDownList()
    clickHallB10()
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeScenarioDialogBox()
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
      wait(1)
      moveDownList()
      clickHallB10()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
        wait(1)
        moveDownList()
        clickHallB10()
      end
    end
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickHallB10()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickHallB10()
      end
    end
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickHallB10()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickHallB10()
      end
    end
  elseif dialogToaRegion:exists(Pattern("dialogTOA.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      clickHallB10()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        clickHallB10()
      else
        moveLeft()
        clickHallB10()
      end
    end
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) then
    moveLeft()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
      wait(1)
      moveDownList()
      clickHallB10()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 1)
        wait(1)
        moveDownList()
        clickHallB10()
      end
    end
  end
end
function enterRift()
  existsClick(Pattern("mapRiftOfWorlds.png"), 3)
  riftYesRegion:existsClick(Pattern("riftYes.png"), 3)
end
function clickRiftFire()
  if existsClick(Pattern("riftFire.png"), 3) then
    riftBattleRegion:existsClick(Pattern("battle.png"), 3)
    start()
  end
end
function clickRiftIce()
  if existsClick(Pattern("riftIce.png"), 3) then
    riftBattleRegion:existsClick(Pattern("battle.png"), 3)
    start()
  end
end
function clickRiftWind()
  if existsClick(Pattern("riftWind.png"), 3) then
    riftBattleRegion:existsClick(Pattern("battle.png"), 3)
    start()
  end
end
function clickRiftLight()
  if existsClick(Pattern("riftLight.png"), 3) then
    riftBattleRegion:existsClick(Pattern("battle.png"), 3)
    start()
  end
end
function clickRiftDark()
  if existsClick(Pattern("riftDark.png"), 3) then
    riftBattleRegion:existsClick(Pattern("battle.png"), 3)
    start()
  end
end
function clickRiftRaid()
  if existsClick(Pattern("riftRaid.png"), 3) then
    riftBattleRegion:existsClick(Pattern("battle.png"), 3)
    start()
  end
end
function clickRift()
  if runRiftFire then
    clickRiftFire()
  elseif runRiftIce then
    clickRiftIce()
  elseif runRiftWind then
    clickRiftWind()
  elseif runRiftLight then
    clickRiftLight()
  elseif runRiftDark then
    clickRiftDark()
  elseif runRiftRaid then
    clickRiftRaid()
  end
end
function existsRift()
  if runRiftFire then
    if exists(Pattern("riftFire.png"), 3) then
      return true
    end
  elseif runRiftIce then
    if exists(Pattern("riftIce.png"), 3) then
      return true
    end
  elseif runRiftWind then
    if exists(Pattern("riftWind.png"), 3) then
      return true
    end
  elseif runRiftLight then
    if exists(Pattern("riftLight.png"), 3) then
      return true
    end
  elseif runRiftDark then
    if exists(Pattern("riftDark.png"), 3) then
      return true
    end
  elseif runRiftRaid then
    if exists(Pattern("riftRaid.png"), 3) then
      return true
    end
  else
    return false
  end
end
function findRift()
  if runRiftFire then
    toast("Finding Rift (Fire Beast)")
  elseif runRiftIce then
    toast("Finding Rift (Ice Beast)")
  elseif runRiftWind then
    toast("Finding Rift (Wind Beast)")
  elseif runRiftLight then
    toast("Finding Rift (Light Beast)")
  elseif runRiftDark then
    toast("Finding Rift (Dark Beast)")
  elseif runRiftRaid then
    toast("Finding Rift (Raid)")
  else
    return
  end
  if existsRift() then
    clickRift()
  elseif exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
    enterRift()
    clickRift()
  elseif arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
    closeArenaDialogBox()
    enterRift()
    clickRift()
  elseif dialogCairoDungeonRegion:exists(Pattern("cairoDungeon.png"):similar(imgAccuracy), 0.1) then
    closeCairoDungeonDialogBox()
    if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
      enterRift()
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
        enterRift()
        clickRift()
      else
        moveLeft()
        enterRift()
        clickRift()
      end
    end
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeScenarioDialogBox()
    moveLeft()
    if exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
      enterRift()
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
        enterRift()
        clickRift()
      end
    end
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    moveLeft()
    if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
      enterRift()
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
        enterRift()
        clickRift()
      end
    end
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    moveLeft()
    if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
      enterRift()
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"):similar(imgAccuracy), 0.1) then
        enterRift()
        clickRift()
      end
    end
  elseif dialogToaRegion:exists(Pattern("dialogTOA.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
      enterRift()
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapCairoDungeon.png"):similar(imgAccuracy), 0.1) then
        enterRift()
        clickRift()
      else
        moveLeft()
        enterRift()
        clickRift()
      end
    end
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) then
    moveLeft()
    if exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
      enterRift()
      clickRift()
    else
      moveLeft()
      if exists(Pattern("mapRiftOfWorlds.png"), 0.1) then
        enterRift()
        clickRift()
      end
    end
  end
end
function clickScenarioStage()
  local x = 705
  local y = 42
  if runChiruka then
    if dialogScenarioRegion:existsClick(Pattern("dialogChiruka.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage1.png"):targetOffset(x, y))
    end
  elseif runRunar then
    if dialogScenarioRegion:existsClick(Pattern("dialogRunar.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage2.png"):targetOffset(x, y))
    end
  elseif runFerun then
    if dialogScenarioRegion:existsClick(Pattern("dialogFerun.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage1.png"):targetOffset(x, y))
    end
  elseif runAiden then
    if dialogScenarioRegion:existsClick(Pattern("dialogAiden.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage1.png"):targetOffset(x, y))
    end
  elseif runFaimon then
    if dialogScenarioRegion:existsClick(Pattern("dialogFaimon.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage1.png"):targetOffset(x, y))
    end
  elseif runVrofagus then
    if dialogScenarioRegion:existsClick(Pattern("dialogVrofagus.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage4.png"):targetOffset(x, y))
    end
  elseif runTamor then
    if dialogScenarioRegion:existsClick(Pattern("dialogTamor.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage3.png"):targetOffset(x, y))
    end
  elseif runHydeni then
    if dialogScenarioRegion:existsClick(Pattern("dialogHydeni.png"):similar(imgAccuracy), 1) then
      wait(1)
      moveScenarioDown()
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage5.png"):targetOffset(x, y))
    end
  elseif runTelain then
    if dialogScenarioRegion:existsClick(Pattern("dialogTelain.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage1.png"):targetOffset(x, y))
    end
  elseif runWhiteRagon then
    if dialogScenarioRegion:existsClick(Pattern("dialogWhiteRagon.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage2.png"):targetOffset(x, y))
    end
  elseif runKabir then
    if dialogScenarioRegion:existsClick(Pattern("dialogKabir.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage4.png"):targetOffset(x, y))
    end
  elseif runSiz then
    if dialogScenarioRegion:existsClick(Pattern("dialogSiz.png"):similar(imgAccuracy), 1) then
      wait(2)
      dungeonBattleRegion:existsClick(Pattern("mapStage2.png"):targetOffset(x, y))
    end
  elseif runGaren and dialogScenarioRegion:existsClick(Pattern("dialogGaren.png"):similar(imgAccuracy), 1) then
    wait(2)
    dungeonBattleRegion:existsClick(Pattern("mapStage3.png"):targetOffset(x, y))
  end
end
function existsScenario()
  if runChiruka then
    if exists(Pattern("mapChiruka.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runRunar then
    if exists(Pattern("mapRunar.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runFerun then
    if exists(Pattern("mapFerun.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runAiden then
    if exists(Pattern("mapAiden.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runFaimon then
    if exists(Pattern("mapFaimon.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runVrofagus then
    if exists(Pattern("mapVrofagus.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runTamor then
    if exists(Pattern("mapTamor.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runHydeni then
    if exists(Pattern("mapHydeni.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runTelain then
    if exists(Pattern("mapTelain.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runWhiteRagon then
    if exists(Pattern("mapWhiteRagon.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runKabir then
    if exists(Pattern("mapKabir.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runSiz then
    if exists(Pattern("mapSiz.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runGaren then
    if exists(Pattern("mapGaren.png"):similar(imgAccuracy), 1) then
      return true
    end
  else
    return false
  end
end
function existsDialogScenario()
  if runChiruka then
    if dialogScenarioRegion:exists(Pattern("dialogChiruka.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runRunar then
    if dialogScenarioRegion:exists(Pattern("dialogRunar.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runFerun then
    if dialogScenarioRegion:exists(Pattern("dialogFerun.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runAiden then
    if dialogScenarioRegion:exists(Pattern("dialogAiden.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runFaimon then
    if dialogScenarioRegion:exists(Pattern("dialogFaimon.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runVrofagus then
    if dialogScenarioRegion:exists(Pattern("dialogVrofagus.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runTamor then
    if dialogScenarioRegion:exists(Pattern("dialogTamor.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runHydeni then
    if dialogScenarioRegion:exists(Pattern("dialogHydeni.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runTelain then
    if dialogScenarioRegion:exists(Pattern("dialogTelain.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runWhiteRagon then
    if dialogScenarioRegion:exists(Pattern("dialogWhiteRagon.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runKabir then
    if dialogScenarioRegion:exists(Pattern("dialogKabir.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runSiz then
    if dialogScenarioRegion:exists(Pattern("dialogSiz.png"):similar(imgAccuracy), 1) then
      return true
    end
  elseif runGaren then
    if dialogScenarioRegion:exists(Pattern("dialogGaren.png"):similar(imgAccuracy), 1) then
      return true
    end
  else
    return false
  end
end
function clickScenario()
  if runChiruka then
    if exists(Pattern("mapChiruka.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapChiruka.png"):similar(imgAccuracy), 0.1)
    else
      moveRight()
      wait(1)
      if exists(Pattern("mapChiruka.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapChiruka.png"):similar(imgAccuracy), 0.1)
      else
        moveRight()
        wait(1)
        if exists(Pattern("mapChiruka.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapChiruka.png"):similar(imgAccuracy), 0.1)
        else
          moveRight()
          wait(1)
          existsClick(Pattern("mapChiruka.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runRunar then
    if exists(Pattern("mapRunar.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapRunar.png"):similar(imgAccuracy), 0.1)
    else
      moveRight()
      wait(1)
      if exists(Pattern("mapRunar.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapRunar.png"):similar(imgAccuracy), 0.1)
      else
        moveRight()
        wait(1)
        if exists(Pattern("mapRunar.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapRunar.png"):similar(imgAccuracy), 0.1)
        else
          moveRight()
          wait(1)
          existsClick(Pattern("mapRunar.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runFerun then
    if exists(Pattern("mapFerun.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapFerun.png"):similar(imgAccuracy), 0.1)
    else
      moveRight()
      wait(1)
      if exists(Pattern("mapFerun.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapFerun.png"):similar(imgAccuracy), 0.1)
      else
        moveRight()
        wait(1)
        if exists(Pattern("mapFerun.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapFerun.png"):similar(imgAccuracy), 0.1)
        else
          moveRight()
          wait(1)
          existsClick(Pattern("mapFerun.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runAiden then
    if exists(Pattern("mapAiden.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapAiden.png"):similar(imgAccuracy), 0.1)
    else
      moveRight()
      wait(1)
      if exists(Pattern("mapAiden.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapAiden.png"):similar(imgAccuracy), 0.1)
      else
        moveRight()
        wait(1)
        if exists(Pattern("mapAiden.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapAiden.png"):similar(imgAccuracy), 0.1)
        else
          moveRight()
          wait(1)
          existsClick(Pattern("mapAiden.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runFaimon then
    if exists(Pattern("mapFaimon.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapFaimon.png"):similar(imgAccuracy), 0.1)
    else
      moveRight()
      wait(1)
      if exists(Pattern("mapFaimon.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapFaimon.png"):similar(imgAccuracy), 0.1)
      else
        moveRight()
        wait(1)
        if exists(Pattern("mapFaimon.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapFaimon.png"):similar(imgAccuracy), 0.1)
        else
          moveLeft()
          wait(1)
          existsClick(Pattern("mapFaimon.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runVrofagus then
    if exists(Pattern("mapVrofagus.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapVrofagus.png"):similar(imgAccuracy), 0.1)
    else
      moveRight()
      wait(1)
      if exists(Pattern("mapVrofagus.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapVrofagus.png"):similar(imgAccuracy), 0.1)
      else
        moveRight()
        wait(1)
        if exists(Pattern("mapVrofagus.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapVrofagus.png"):similar(imgAccuracy), 0.1)
        else
          moveLeft()
          wait(1)
          existsClick(Pattern("mapVrofagus.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runTamor then
    if exists(Pattern("mapTamor.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapTamor.png"):similar(imgAccuracy), 0.1)
    else
      moveRight()
      wait(1)
      if exists(Pattern("mapTamor.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapTamor.png"):similar(imgAccuracy), 0.1)
      else
        moveRight()
        wait(1)
        if exists(Pattern("mapTamor.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapTamor.png"):similar(imgAccuracy), 0.1)
        else
          moveLeft()
          wait(1)
          existsClick(Pattern("mapTamor.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runHydeni then
    if exists(Pattern("mapHydeni.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapHydeni.png"):similar(imgAccuracy), 0.1)
    else
      moveLeft()
      wait(1)
      if exists(Pattern("mapHydeni.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapHydeni.png"):similar(imgAccuracy), 0.1)
      else
        moveLeft()
        wait(1)
        if exists(Pattern("mapHydeni.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapHydeni.png"):similar(imgAccuracy), 0.1)
        else
          moveLeft()
          wait(1)
          existsClick(Pattern("mapHydeni.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runTelain then
    if exists(Pattern("mapTelain.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapTelain.png"):similar(imgAccuracy), 0.1)
    else
      moveLeft()
      wait(1)
      if exists(Pattern("mapTelain.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapTelain.png"):similar(imgAccuracy), 0.1)
      else
        moveLeft()
        wait(1)
        if exists(Pattern("mapTelain.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapTelain.png"):similar(imgAccuracy), 0.1)
        else
          moveLeft()
          wait(1)
          existsClick(Pattern("mapTelain.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runWhiteRagon then
    if exists(Pattern("mapWhiteRagon.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapWhiteRagon.png"):similar(imgAccuracy), 0.1)
    else
      moveLeft()
      wait(1)
      if exists(Pattern("mapWhiteRagon.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapWhiteRagon.png"):similar(imgAccuracy), 0.1)
      else
        moveLeft()
        wait(1)
        if exists(Pattern("mapWhiteRagon.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapWhiteRagon.png"):similar(imgAccuracy), 0.1)
        else
          moveLeft()
          wait(1)
          existsClick(Pattern("mapWhiteRagon.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runKabir then
    if exists(Pattern("mapKabir.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapKabir.png"):similar(imgAccuracy), 0.1)
    else
      moveLeft()
      wait(1)
      if exists(Pattern("mapKabir.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapKabir.png"):similar(imgAccuracy), 0.1)
      else
        moveLeft()
        wait(1)
        if exists(Pattern("mapKabir.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapKabir.png"):similar(imgAccuracy), 0.1)
        else
          moveLeft()
          wait(1)
          existsClick(Pattern("mapKabir.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runSiz then
    if exists(Pattern("mapSiz.png"), 1) then
      existsClick(Pattern("mapSiz.png"):similar(imgAccuracy), 0.1)
    else
      moveLeft()
      wait(1)
      if exists(Pattern("mapSiz.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapSiz.png"):similar(imgAccuracy), 0.1)
      else
        moveLeft()
        wait(1)
        if exists(Pattern("mapSiz.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapSiz.png"):similar(imgAccuracy), 0.1)
        else
          moveLeft()
          wait(1)
          existsClick(Pattern("mapSiz.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  elseif runGaren then
    if exists(Pattern("mapGaren.png"):similar(imgAccuracy), 1) then
      existsClick(Pattern("mapGaren.png"):similar(imgAccuracy), 0.1)
    else
      moveLeft()
      wait(1)
      if exists(Pattern("mapGaren.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapGaren.png"):similar(imgAccuracy), 0.1)
      else
        moveLeft()
        wait(1)
        if exists(Pattern("mapGaren.png"):similar(imgAccuracy), 0.1) then
          existsClick(Pattern("mapGaren.png"):similar(imgAccuracy), 0.1)
        else
          moveLeft()
          wait(1)
          existsClick(Pattern("mapGaren.png"):similar(imgAccuracy), 0.1)
        end
      end
    end
  end
end
function findScenario()
  if runChiruka then
    toast("Finding Chiruka Remains")
  elseif runRunar then
    toast("Finding Mt. Runar")
  elseif runFerun then
    toast("Finding Ferun Castle")
  elseif runAiden then
    toast("Finding Aiden Forest")
  elseif runFaimon then
    toast("Finding Faimon Volcano")
  elseif runVrofagus then
    toast("Finding Vrofagus Ruins")
  elseif runTamor then
    toast("Finding Tamor Desert")
  elseif runHydeni then
    toast("Finding Hydeni Runis")
  elseif runTelain then
    toast("Finding Telain Forest")
  elseif runWhiteRagon then
    toast("Finding Mt. White Ragon")
  elseif runKabir then
    toast("Finding Kabir Ruins")
  elseif runSiz then
    toast("Finding Mt. Siz")
  elseif runGaren then
    toast("Finding Garen Forest")
  else
    return
  end
  if existsDialogScenario() then
    clickScenarioStage()
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
  	toast("Drop info close")
    closeDialogScenarioRegion:existsClick(Pattern("closeX.png"):similar(imgAccuracy), 2)
    clickScenario()
    clickScenarioStage()
  elseif arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
	closeArenaDialogBox()
    clickScenario()
    clickScenarioStage()
  elseif existsScenario() then
    clickScenario()
    clickScenarioStage()
  elseif dialogCairoDungeonRegion:exists(Pattern("cairoDungeon.png"):similar(imgAccuracy), 0.1) then
    closeCairoDungeonDialogBox()
    clickScenario()
    clickScenarioStage()
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    clickScenario()
    clickScenarioStage()
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    clickScenario()
    clickScenarioStage()
  elseif dialogToaRegion:existsClick(Pattern("dialogTOA.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    clickScenario()
    clickScenarioStage()
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) then
    clickScenario()
    clickScenarioStage()
  end
end
function clickTOAStage()
  if dialogToaRegion:exists(Pattern("dialogTOA.png"):similar(0.7), 1) then
    existsClick(Pattern("toaReady.png"):similar(imgAccuracy * 0.4), 2)
  end
end
function enterTOA()
  if exists(Pattern("mapTOA.png"):similar(imgAccuracy), 1) then
    existsClick(Pattern("mapTOA.png"):similar(imgAccuracy), 0.1)
  else
    moveLeft()
    wait(1)
    if exists(Pattern("mapTOA.png"):similar(imgAccuracy), 0.1) then
      existsClick(Pattern("mapTOA.png"):similar(imgAccuracy), 0.1)
    else
      moveLeft()
      wait(1)
      if exists(Pattern("mapTOA.png"):similar(imgAccuracy), 0.1) then
        existsClick(Pattern("mapTOA.png"):similar(imgAccuracy), 0.1)
      else
        moveLeft()
        wait(1)
        existsClick(Pattern("mapTOA.png"):similar(imgAccuracy), 0.1)
      end
    end
  end
end
function findTOA()
  if runTOA then
    toast("Finding Tower of Ascension")
  else
    return
  end
  if dialogToaRegion:exists(Pattern("dialogTOA.png"):similar(imgAccuracy * 0.9), 0.1) then
    clickTOAStage()
  elseif exists(Pattern("mapTOA.png"):similar(imgAccuracy), 1) then
    enterTOA()
    clickTOAStage()
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeScenarioDialogBox()
    enterTOA()
    clickTOAStage()
  elseif arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
    closeArenaDialogBox()
    enterTOA()
    clickTOAStage()
  elseif dialogCairoDungeonRegion:exists(Pattern("cairoDungeon.png"):similar(imgAccuracy), 0.1) then
    closeCairoDungeonDialogBox()
    enterTOA()
    clickTOAStage()
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    enterTOA()
    clickTOAStage()
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 3) then
    enterTOA()
    clickTOAStage()
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) then
    enterTOA()
    clickTOAStage()
  end
end
function getIslandStuff()
  closeXRegion:existsClick(Pattern("close.png"), 2)
  local a = 4
  if not exists(Pattern("islandMana.png"), 0.1) then
    while a > 0 do
      zoomOut()
      wait(1.7)
      a = a - 1
    end
  end
  a = 3
  while a > 0 and exists(Pattern("islandMana.png"), 0.1) do
    clickIslandMana()
    do break end
    do break end
    a = a - 1
  end
  a = 6
  while a > 0 and exists(Pattern("manaCrystalMax.png"), 0.1) do
    clickIslandMax()
    do break end
    do break end
    a = a - 1
  end
  a = 3
  while a > 0 and exists(Pattern("islandCrystal.png"), 0.1) do
    clickIslandCrystal()
    do break end
    do break end
    a = a - 1
  end
  a = 15
  while a > 0 and exists(Pattern("islandLevelUp.png"), 0.1) do
    clickIslandLevelUp()
    wait(2)
    do break end
    do break end
    a = a - 1
  end
  clickMagicShop()
end
function clickMagicShop()
  local a = 1
  local shopString = "magicShopChest"
  shopString = shopString .. ".png"
  while a < 7 do
    if existsClick(Pattern(shopString), 1) then
      iconPurchaseRegion:existsClick(Pattern("iconPurchase.png"), 3)
      purchaseMagicShopScroll()
      break
    else
      a = a + 1
      shopString = "magicShopChest" .. a .. ".png"
    end
  end
  battleIconRegion:existsClick(Pattern("iconBattle.png"), 2)
  wait(1)
end
function clickIslandMana()
  if not existsClick(Pattern("islandMana.png"), 1) then
    existsClick(Pattern("islandManaMax.png"), 1)
  end
end
function clickIslandCrystal()
  if not existsClick(Pattern("islandCrystal.png"), 1) then
    existsClick(Pattern("islandCrystalMax.png"), 1)
  end
end
function clickIslandLevelUp()
  existsClick(Pattern("islandLevelUp.png"), 1)
end
function clickIslandMax()
  existsClick(Pattern("manaCrystalMax.png"), 1)
end
function findMap()
  closeXMagicShopRegion:existsClick(Pattern("closeX.png"), 2)
  if moveIconRegion:exists(Pattern("iconMove.png"), 2) then
    tinySwipe()
  end
  battleIconRegion:existsClick(Pattern("iconBattle.png"), 2)
  wait(1.5)
end
function purchaseMagicShopScroll()
  searchMagicShopCount = searchMagicShopCount + 1
  magicShopTimeRegion:exists(Pattern("magicShopTime59.png"), 7)
  local a = 5
  while a > 0 do
    if magicShopItemRegion:exists(Pattern("mysticalScroll.png"), 1) then
      magicShopItemRegion:existsClick(Pattern("mysticalScroll.png"), 1)
      existsClick(Pattern("buyMagicShop.png"), 1)
      existsClick(Pattern("yesMagicShop.png"), 1)
      mysticalCount = mysticalCount + 1
    end
    if magicShopItemRegion:exists(Pattern("ldScroll.png"), 1) then
      magicShopItemRegion:existsClick(Pattern("ldScroll.png"), 1)
      existsClick(Pattern("buyMagicShop.png"), 1)
      existsClick(Pattern("yesMagicShop.png"), 1)
      lightDarkCount = lightDarkCount + 1
    end
    if magicShopItemRegion:exists(Pattern("legendaryScroll.png"), 1) then
      magicShopItemRegion:existsClick(Pattern("legendaryScroll.png"), 1)
      existsClick(Pattern("buyMagicShop.png"), 1)
      existsClick(Pattern("yesMagicShop.png"), 1)
      legendaryCount = legendaryCount + 1
    end
    wait(1)
    moveScenarioDown()
    wait(1)
    a = a - 1
  end
  timerMagicShop:set()
  findMap()
end
function findIslandFirst()
  if not exists(Pattern("islandFirst.png"), 0.1) then
    moveUp()
    moveUp()
    moveDownLittle()
    if not exists(Pattern("islandFirst.png"), 0.1) then
      moveRight()
      if not exists(Pattern("islandFirst.png"), 0.1) then
        moveLeft()
        if exists(Pattern("islandFirst.png"), 0.1) then
        end
      end
    end
  end
end
function findMagicShop()
  if runMagicShop then
    toast("Finding Magic Shop")
    hideCommand()
  else
    return
  end
  if arenaRankRegion:exists(Pattern("arenaRank.png"), 0.1) then
    closeArenaDialogBox()
    backButtonRegion:existsClick(Pattern("backButton.png"):similar(0.8), 2)
    getIslandStuff()
  elseif dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) then
    closeScenarioDialogBox()
    backButtonRegion:existsClick(Pattern("backButton.png"):similar(0.8), 2)
    getIslandStuff()
  elseif dialogCairoDungeonRegion:exists(Pattern("cairoDungeon.png"):similar(imgAccuracy), 0.1) then
    closeCairoDungeonDialogBox()
    backButtonRegion:existsClick(Pattern("backButton.png"):similar(0.8), 2)
    getIslandStuff()
  elseif riftStrategyRegion:exists(Pattern("riftStrategy.png"), 0.1) then
    closeRiftDialogBox()
    clickRiftBack()
    wait(1)
    backButtonRegion:existsClick(Pattern("backButton.png"):similar(0.8), 2)
    getIslandStuff()
  elseif riftBackRegion:existsClick(Pattern("back2Button.png"), 0.1) then
    backButtonRegion:existsClick(Pattern("backButton.png"):similar(0.8), 2)
    clickMagicShop()
  elseif exists(Pattern("dialogTOA.png"):similar(imgAccuracy), 0.1) then
    closeToaDialogBox()
    backButtonRegion:existsClick(Pattern("backButton.png"):similar(0.8), 2)
    getIslandStuff()
  elseif backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) then
    backButtonRegion:existsClick(Pattern("backButton.png"):similar(0.8), 2)
    getIslandStuff()
  elseif exists(Pattern("dialogMagicShop.png"), 2) then
    purchaseMagicShopScroll()
  end
end
function findPlayerIsland()
  touchStartRegion:existsClick(Pattern("touchStart.png"), 3)
  dontShowRegion:existsClick(Pattern("dontShow.png"), 3)
  wait(1)
  dontShowRegion:existsClick(Pattern("dontShow.png"), 3)
  wait(1)
  dontShowRegion:existsClick(Pattern("dontShow.png"), 3)
  wait(1)
  dontShowRegion:existsClick(Pattern("dontShow.png"), 3)
  touchStartRegion:existsClick(Pattern("touchStart.png"), 3)
  monthlyEventXRegion:existsClick(Pattern("closeX.png"), 3)
  mailboxXRegion:existsClick(Pattern("closeX.png"), 3)
  findMap()
end
function runScenarioDungeon()
  checkMagicShop()
  findDungeon()
  findHallB10()
  findRift()
  findScenario()
  findTOA()
end
function runLiveArenaStart()
  while runLiveArena do
    if liveArenaBattleRegion:exists(Pattern("liveArenaBattle.png"), 0.1) then
      liveArenaBattleRegion:existsClick(Pattern("liveArenaBattle.png"), 0.1)
    end
    if liveArenaTopRegion:exists(Pattern("liveArenaSelect.png"), 0.1) then
      liveArenaSelectMon()
      liveArenaSelectMon()
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"), 1)
    end
    if liveArenaTopRegion:exists(Pattern("liveArenaBanOpp.png"), 0.1) then
      toast("Banning Opponent Monster")
      click(setLocation(1155, 405))
      click(setLocation(1155, 320))
      click(setLocation(1155, 215))
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"), 0.1)
    end
    if liveArenaTopRegion:exists(Pattern("liveArenaLeader.png"), 0.1) then
      toast("Selecting Leader")
      click(setLocation(435, 405))
      click(setLocation(435, 215))
      liveArenaTopRegion:existsClick(Pattern("liveArenaOk.png"), 0.1)
    end
    if liveArenaSameMonOkRegion:existsClick(Pattern("liveArenaSameMonOk.png"), 0.1) then
      liveArenaSameMonOkRegion:existsClick(Pattern("ok.png"), 0.1)
      liveArenaSelectMon()
    end
    if exists(Pattern("victory.png"):similar(.7), 0.1) then
      arenaWinCount = arenaWinCount + 1
      runLmt = runLmt - 1
      resetTimerNoActivity()
      if runLmtCheck() then
        break
      end
      showBattleResult("Live Arena Start")
      printBattleMessage()
      existsClick(Pattern("victory.png"):similar(.7), 0.1)
    end
    if exists(Pattern("defeat.png"):similar(.7), 0.1) then
      arenaLoseCount = arenaLoseCount + 1
      runLmt = runLmt - 1
      resetTimerNoActivity()
      if runLmtCheck() then
        break
      end
      showBattleResult("Live Arena Defeated")
      printBattleMessage()
      existsClick(Pattern("defeat.png"):similar(.7), 0.1)
    end
    if exists(Pattern("play.png"):similar(0.9), 0.1) then
      existsClick(Pattern("play.png"):similar(0.9), 1)
    end
    if (backButtonRegion:exists(Pattern("backButton.png"):similar(0.8), 0.1) or dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1)) and not liveArenaDialogRegion:exists(Pattern("dialogLiveArena.png"):similar(imgAccuracy), 0.1) then
      findLiveArena()
    end
  end
end
function runQuickClickStart()
  while runQuickClick do
    if startRegion:exists(Pattern("start.png"):similar(imgAccuracy), 0.1) then
      start()
    end
    if reviveNoRegion:exists(Pattern("noRevive.png"):similar(imgAccuracy), 0.1) then
      loseCount = loseCount + 1
      runLmt = runLmt - 1
      resetTimerNoActivity()
      if not stopDefeat then
        defeated()
        if isMaxLevel then
          playMusic("victory.mp3", false)
          printBattleMessage()
          print("Max Level Reach!")
          break
        end
        start()
        showBattleResult("Battle Start")
        printBattleMessage()
      else
        printBattleMessage()
        playMusic("defeat.mp3", true)
        break
      end
    end
    if victoryDiamondRegion:exists(Pattern("victoryDiamond.png"):similar(imgAccuracy * 1.1), 0.1) then
      winCount = winCount + 1
      runLmt = runLmt - 1
      resetTimerNoActivity()
      victory()
      if runLmtCheck() then
        break
      end
      if isMaxLevel then
        playMusic("victory.mp3", false)
        printBattleMessage()
        print("Max Level Reach!")
        break
      end
      replayOrNext()
      start()
      showBattleResult("Rift Battle Start")
      printBattleMessage()
    end
    if sellGetRegion:exists(Pattern("sell.png"):similar(.6)) then
      sellGetRune()
      start()
    end
    if replayRegion:exists(Pattern("replay.png"):similar(imgAccuracy), 0.1) then
      replayOrNext()
      start()
    end
    if notEnoughEnergyRegion:exists(Pattern("notEnoughEnergy.png"):similar(imgAccuracy), 0.1) then
      refill()
      replayOrNext()
      start()
    end
    if playRegion:exists(Pattern("play.png"):similar(0.9), 0.1) then
      playRegion:existsClick(Pattern("play.png"):similar(0.9), 1)
    end
    if isTrial and timerTrial:check() > maxTrialTimeout then
      dialogTrialTimeout()
      break
    end
  end
end
function checkNoRaidActivity()
  if timerNoRaidActivity:check() > maxNoRaidActivity then
    return true
  else
    return false
  end
end
function resetNoRaidActivity()
  timerNoRaidActivity:set()
end
function runRiftRaidStart ()
  while runRiftRaid do
    raidJoinRegion:highlight()
    raidJoinRegion:existsClick(Pattern("raidJoinParty.png"):similar(0.6), 0.1)
    raidJoinRegion:highlight()
    raidAcceptRegion:highlight()
    raidAcceptRegion:existsClick(Pattern("riftRaidAccept.png"):similar(0.6), 0.1)
    raidAcceptRegion:highlight()
    raidReadyRegion:highlight()
    raidReadyRegion:existsClick(Pattern("raidReady.png"):similar(0.6), 0.1)
    if raidReadyRegion:existsClick(Pattern("raidStart.png"):similar(0.6), 0.1) then
      refillYesRegion:existsClick(Pattern("yes.png"):similar(0.6), 0.1)
    end
    raidReadyRegion:highlight()
    noLeaderSkillRegion:highlight()
    if noLeaderSkillRegion:exists(Pattern("noLeaderSkill.png"):similar(0.6), 0.1) then
      noLeaderSkillYesRegion:existsClick(Pattern("yes.png"):similar(0.6), 0.1)
    end
    noLeaderSkillRegion:highlight()
    raidVictoryTotalRegion:highlight()
    if raidVictoryTotalRegion:exists(Pattern("raidVictoryTotal.png"):similar(0.6), 0.1) then
      wait(4)
      raidVictoryTotalRegion:existsClick(Pattern("raidVictoryTotal.png"):similar(0.6), 0.1)
      winCount = winCount + 1
      runLmt = runLmt - 1
      showBattleResult("Start Battle")
      resetTimerNoActivity()
      showBattleResult("Battle Start")
      printBattleMessage()
    end
    raidVictoryTotalRegion:highlight()
    raidLossTotalRegion:highlight()
    if raidLossTotalRegion:exists(Pattern("raidVictoryTotal.png"):similar(0.6), 0.1) then
      raidLossTotalRegion:existsClick(Pattern("raidVictoryTotal.png"):similar(0.6), 0.1)
      loseCount = loseCount + 1
      runLmt = runLmt - 1
      showBattleResult("Battle Start")
      printBattleMessage()
      resetTimerNoActivity()
      if stopDefeat == true then
        scriptExit ("Defeated, stopping as requested!")
      end
      wait(3)
    end
    raidLossTotalRegion:highlight()
    raidOkRegion:highlight()
    raidOkRegion:existsClick(Pattern("ok.png"):similar(0.6), 0.1)
    raidOkRegion:highlight()
    notEnoughEnergyRegion:highlight()
    if notEnoughEnergyRegion:exists(Pattern("notEnoughEnergy.png"):similar(0.6), 0.1) then
      if not arenaCheck and runArena then
        arenaCheck = true
        runRiftRaid = false
        refillNoRegion:existsClick(Pattern("noPurchase.png"):similar(.6), 3)
        raidVictoryTotalRegion:existsClick(Pattern("raidVictoryTotal.png"):similar(0.6), 0.1)
        if sameSessionRegion:exists(Pattern("sameSession.png"):similar(0.6), 0.1) then
          refillNoRegion:existsClick(Pattern("noPurchase.png"):similar(0.6), 0.1)
        end
        existsClick(Pattern("closeX.png"):similar(.6), 3)
        existsClick(Pattern("back2Button.png"):similar(.6), 3)
        findArena()
      else
        arenaCheck = false
        refill()
        replayOrNext()
        start()
      end
    end
    notEnoughEnergyRegion:highlight()
    raidGetRegion:highlight()
    raidGetRegion:existsClick(Pattern("get.png"):similar(0.6), 0.1)
    raidGetRegion:highlight()
    sameSessionRegion:highlight()
    if sameSessionRegion:exists(Pattern("sameSession.png"):similar(0.6), 0.1) then
      refillYesRegion:existsClick(Pattern("yes.png"):similar(0.6), 2)
    end
    sameSessionRegion:highlight()
    if checkNoRaidActivity == true then
      keyevent(4)
    end
  end
end
defaultValues ()
defaultTrueFalse ()
defaultRegionLocation ()
dialogBox()
if sellAllRune == false and keepAll == false then
  runeDialogBox()
end
setDialogOptions()
setAdvancedOptions()
automaticUpdates ()
showBattleResult("Begin")
timerNoActivity = Timer()
timerTrial = Timer()
timerMagicShop = Timer()
local miniBossFound = false
while true do  
  if runRiftRaid == true then
    findRift ()
    clickRiftRaid()
    runRiftRaidStart()
  elseif runQuickClick == true then
    runQuickClickStart()
  elseif runTestHighlight == true then
    testHighlight()
  elseif runLiveArena == true then
    runLiveArenaStart()
  else
    if startRegion:exists(Pattern("start.png"):similar(imgAccuracy), 0.1) then
      start()
    end 
    if runNecro and not miniBossFound then      
      toast("searching miniBossBuff")
      bossBuffRegion:highlight(1)
      if bossBuffRegion:exists(Pattern("nb10MiniBossBuff.png"):similar(imgAccuracy), 0.1) then
        toast("Mini boss buff found.")
        click(miniBossLocation)
        miniBossFound = true
      else
        toast("Mini boss buff not found.")
      end
      bossBuffRegion:highlight(0)
    end       
    if victoryDiamondRegion:exists(Pattern("victoryDiamond.png"):similar(.7), 0.1) and not victoryDefeatStageRegion:exists(Pattern("arena.png"):similar(.7), 0.3) then
      winCount = winCount + 1
      runLmt = runLmt - 1
      miniBossFound = false
      showBattleResult("Start Battle")
      resetTimerNoActivity()
      if runAutoSwitchFodder == true or stopMaxLevel == true then
        isBattleSlotMax()
      end
      victory()
      showBattleResult("Battle Start")
      printBattleMessage()
      if runLmtCheck() then
        break
      end
      if isMaxLevel then
        soundVibrate("victory.mp3", false)
        printBattleMessage()
        print("Max Level Reach!")
        break
      end
      replayOrNext()
      start()
    end
    if reviveNoRegion:exists(Pattern("noRevive.png"):similar(imgAccuracy), 0.1) then
      loseCount = loseCount + 1
      runLmt = runLmt - 1
      miniBossFound = false
      showBattleResult("Battle Start")
      printBattleMessage()
      resetTimerNoActivity()
      if not stopDefeat then
        defeated()
        if isMaxLevel then
          playMusic("victory.mp3", false)
          printBattleMessage()
          print("Max Level Reach!")
          break
        end
        start()
      else
        printBattleMessage()
        soundVibrate("defeat.mp3", true)
        break
      end
    end
    if sellRegion:exists(Pattern("sell.png"):similar(.6)) then
      sellGetRune()
      start()
    end
    if runeSellTextRegion:existsClick(Pattern("runeSellText.png"), 0.1) then
      runeYesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy * 0.9), 0.1)
    end
    if nextArea and nextRegion:exists(Pattern("next.png"), 0.1) then
      replayOrNext()
      start()
    end
    if toaNextStageRegion:exists(Pattern("next.png"):similar(imgAccuracy), 0.1) then
      replayOrNext()
    end
    if replayRegion:exists(Pattern("replay.png"), 0.1) then
      replayOrNext()
      start()
    end
    if arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
      arenaBattle()
    end
    if refreshList2Region:exists(Pattern("refreshList2.png"):similar(imgAccuracy * 0.8), 0.1) then
      refreshList()
      arenaBattle()
    end
    if notEnoughWingRegion:exists(Pattern("arenaNotReady.png"):similar(imgAccuracy), 0.1) then
      toast("Arena Not Ready")
      arenaBattle()
      start()
    end
    if victoryDefeatStageRegion:exists(Pattern("arena.png"):similar(imgAccuracy), 0.1) and victoryDefeatRegion:exists(Pattern("victory.png"):similar(imgAccuracy * 1.1), 0.3) then
      arenaWinCount = arenaWinCount + 1
      runLmt = runLmt - 1
      showBattleResult("Arena Start")
      printBattleMessage()
      resetTimerNoActivity()
      arenaVictory()
      if runLmtCheck() then
        break
      end
      arenaBattle()
    end
    if victoryDefeatStageRegion:exists(Pattern("arena.png"):similar(imgAccuracy), 0.1) and victoryDefeatRegion:exists(Pattern("defeat.png"):similar(imgAccuracy * 1.1), 0.3) then
      arenaLoseCount = arenaLoseCount + 1
      runLmt = runLmt - 1
      showBattleResult("Arena Start")
      printBattleMessage()
      resetTimerNoActivity()
      if runLmtCheck() then
        break
      end
      if not stopDefeat then
        arenaDefeat()
        refreshList()
        arenaBattle()
      else
        playMusic("defeat.mp3", true)
        break
      end
    end
    if arenaRivalDialogRegion:existsClick(Pattern("arenaRivalDialog.png"), 0.1) then
      playRegion:existsClick(Pattern("play.png"):similar(0.9), 1)
    end
    if arenaFailLoadRegion:exists(Pattern("arenaFailedLoad.png"), 0.1) then
      arenaOkRegion:existsClick(Pattern("arenaOk.png"), 0.1)
    end
    if riftBattleRegion:exists(Pattern("riftDungeon.png"):similar(imgAccuracy), 0.1) then
      riftBattleRegion:existsClick(Pattern("battle.png"):similar(imgAccuracy), 1)
    end
    if riftRankRegion:exists(Pattern("riftRank.png"):similar(imgAccuracy), 0.1) then
      riftBattle = riftBattle + 1
      showBattleResult("Rift Battle Start")
      printBattleMessage()
      resetTimerNoActivity()
      riftRankRegion:existsClick(Pattern("riftRank.png"):similar(imgAccuracy), 0.1)
      riftRankRegion:existsClick(Pattern("riftRank.png"):similar(imgAccuracy), 0.1)
      riftRankRegion:existsClick(Pattern("riftRank.png"):similar(imgAccuracy), 0.1)
      if not okRegion:existsClick(Pattern("ok.png"):similar(imgAccuracy), 1.5) then
        sellGetRune()
      end
      replayOrNext()
      start()
    end
    if dialogToaRegion:exists(Pattern("dialogTOA.png"):similar(imgAccuracy * 0.8), 0.1) then
      clickTOAStage()
      start()
    end
    if notEnoughWingRegion:exists(Pattern("notEnoughWing.png"):similar(.6), 0.1) then
      refillNoRegion:existsClick(Pattern("noPurchase.png"):similar(0.6), 3)
      if farmLoc == spinnerFarmLoc[19] then
        runRiftRaid = true
        existsClick(Pattern("closeX.png"):similar(.6), 3)
        existsClick(Pattern("back2Button.png"):similar(.6), 3)
        runScenarioDungeon()
        runRiftRaidStart()
      else
        runScenarioDungeon()
        start()
      end
    end
    if notEnoughEnergyRegion:exists(Pattern("notEnoughEnergy.png"):similar(imgAccuracy * 0.9), 0.1) or notEnoughEnergyRegion:exists(Pattern("notEnoughEnergy2.png"):similar(imgAccuracy * 0.9), 0.1) then
      if not arenaCheck and runArena then
        arenaCheck = true
        refillNoRegion:existsClick(Pattern("noPurchase.png"):similar(imgAccuracy), 3)
        existsClick(Pattern("worldMap.png"):similar(imgAccuracy), 3)
        findArena()
      else
        arenaCheck = false
        refill()
        replayOrNext()
        start()
      end
    end
    if okPurchaseRegion:existsClick(Pattern("okPurchase.png"):similar(imgAccuracy), 0.1) then
    end
    if closePurchaseRegion:existsClick(Pattern("closePurchase.png"):similar(imgAccuracy), 0.1) then
    end
    if dialogTextCenterRegion:exists(Pattern("purchaseItem.png"):similar(imgAccuracy), 0.1) then
      hideBattleResult()
      closeXPurchaseRegion:existsClick(Pattern("closeX.png"):similar(imgAccuracy), 3)
      existsClick(Pattern("close.png"), 0.1)
      yesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy * 0.9), 3)
      showBattleResult()
    end
    if (backButtonRegion:exists(Pattern("backButton.png"):similar(runeAccuracy * 0.8), 0.1) or dropInfoRegion:exists(Pattern("dropInfo.png"):similar(imgAccuracy), 0.1) or riftBackRegion:exists(Pattern("back2Button.png"), 0.1)) and not arenaRankRegion:exists(Pattern("arenaRank.png"):similar(imgAccuracy), 0.1) then
      runScenarioDungeon()
      start()
    end
    if connectionDelayRegion:exists(Pattern("connectionDelay.png"):similar(imgAccuracy), 0.1) then
      delayAmt = 0
      while delayAmt < connectionTimeout do
        toast("Connection Issues.  Rechecking in 15 sec")
        if connectionDelayRegion:exists(Pattern("connectionDelay.png"):similar(imgAccuracy), 2) then
          yesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy * 0.9), 2)
          delayAmt = delayAmt + 1
          if delayAmt > connectionTimeout then
            soundVibrate("alarm.mp3", true)
            break
          end
          wait(15)
        else
          delayAmt = 0
          break
        end
      end
      if closeNowRegion:exists(Pattern("closeNow.png"):similar(imgAccuracy), 0.1) then
          closeNowYesRegion:existsClick(Pattern("yes.png"):similar(imgAccuracy), 0.1)
      end
    end
    if samsungSearchRegion:exists(Pattern("samsungSearch.png"), 0.1) then
      keyevent(4)
      keyevent(4)
    end
    Settings:setCompareDimension(true, compareH)
    if exists(Pattern("swApp.png"), 0.1) then
      existsClick(Pattern("swApp.png"), 0.1)
    end
    Settings:setCompareDimension(true, compareW)
    if pauseRegion:exists(Pattern("pause.png"):similar(imgAccuracy * 0.8), 0.1) then
      toast("Unpause")
      pauseRegion:existsClick(Pattern("pause.png"):similar(imgAccuracy * 0.8), 0.3)
    end
    if playRegion:exists(Pattern("play.png"):similar(imgAccuracy), 0.1) then
      playRegion:existsClick(Pattern("play.png"):similar(0.8), 1)
    end
    if checkTimerNoActivity() then
      break
    end
    if touchStartRegion:exists(Pattern("touchStart.png"), 0.1) then
      findPlayerIsland()
    end
    if dontShowRegion:exists(Pattern("dontShow.png"), 0.1) then
      findPlayerIsland()
    end
    if battleIconRegion:existsClick(Pattern("iconBattle.png"), 0.1) then
      findMap()
    end
    if isTrial and timerTrial:check() > maxTrialTimeout then
      dialogTrialTimeout()
      break
    end
  end
  wait(scanDelay)
end
