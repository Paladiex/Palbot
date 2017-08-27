--
-- Created by IntelliJ IDEA.
-- User: Zack
-- Date: 8/23/2017
-- Time: 4:25 PM
-- To change this template use File | Settings | File Templates.
--
--- This scans the pixels at the location to determine the rarity of the rune based on background color ---
runeRarityRegion = Region(725, 445, 20, 20)
function findRuneRarity()
    runeRarityRegion:highlight()
    local loc = Location(735, 455)
    local r,g,b = getColor(loc)
    if (r > 40 and b < 40 and g < 40) then
        runeRarity = "Legendary"
    elseif (r > 40 and b > 40 and g < 40) then
        runeRarity = "Hero"
    elseif (r < 40 and b > 40 and g > 40) then
        runeRarity = "Rare"
    elseif (r < 40 and b < 40 and g > 40) then
        runeRarity = "Magic"
    elseif (r > 40 and b < 40 and g > 40) then
        runeRarity = "Normal"
    else
        runeRarity = "NONE"
        scriptExit ( "This rune's rarity cannot be determined")
    end
    runeRarityRegion:highlight()
end
--- This scans a pixel starting at the 6th star, then moves to the left to determine the rank/stars of the rune ---
runeRankRegion = Region(630, 350, 130, 30)
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
                            runeRank = "NONE"
                        end
                    end
                end
            end
        end
    end
    runeRankRegion:highlight()
end
--- This scans the corner of the rune to find out if it is a 2/4/6 rune ---
runeSlotRegion = Region(630, 340, 435, 135)
function findRuneSlot()
    runeSlotRegion:highlight()
    local loc = Location(731, 384)
    local r, g, b = getColor(loc)
    if (r > 70 and r < 150 and g > 70 and g < 150 and b > 70 and b < 150) then
        runeSlot = 2
    else
        local loc = Location(697, 447)
        local r, g, b = getColor(loc)
        if (r > 70 and r < 150 and g > 70 and g < 150 and b > 70 and b < 150) then
            runeSlot = 4
        else
            local loc = Location(660, 387)
            local r, g, b = getColor(loc)
            if (r > 70 and r < 150 and g > 70 and g < 150 and b > 70 and b < 150) then
                runeSlot = 6
            else
                runeSlot = 0
            end
        end
    end
    runeRankRegion:highlight()
end
--- These are the possible Mainstat Images ---
mainStatImages = {  "hpMain.png", "defMain.png", "atkMain.png", "spdMain.png", "criRateMain.png",
    "criDmgMain.png", "resMain.png", "accMain.png"}
--- These scan each region for a stat, then the stat value area to determine if a percent sign is present ---
mainStatRegion = Region(760, 350, 200, 50)
function findMainStat()
    mainStatRegion:highlight()
    local bestMatchIndex = existsMultiMax(mainStatImages, mainStatRegion)
    if (bestMatchIndex == 1) then
        if  mainStatValueRegion:exists(Pattern("percentMain.png"):similar(.70)) then
            mainStat = ("HP%")
        else
            mainStat = ("HP")
        end
    elseif (bestMatchIndex == 2) then
        if  mainStatValueRegion:exists(Pattern("percentMain.png"):similar(.70)) then
            mainStat = ("DEF%")
        else
            mainStat = ("DEF")
        end
    elseif (bestMatchIndex == 3) then
        if  mainStatValueRegion:exists(Pattern("percentMain.png"):similar(.70)) then
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
    end
    mainStatRegion:highlight()
end
--- Dialog for keeping runes based on rarity
keepLegendary = false
keepHero = false
keepRare = false
keepMagic = false
keepNormal = false
spinnerRuneRarity = {
    "Legendary",
    "Hero",
    "Rare",
    "Magic",
    "Normal"
}
addTextView("Min Rarity: ")
addSpinner("runeRaritySelect", spinnerRuneRarity, spinnerRuneRarity[1])
function setRuneKeepOptions ()
    if runeRaritySelect == spinnerRuneRarity[1] then
        keepLegendary = true
    elseif runeRaritySelect == spinnerRuneRarity[2] then
        keepLegendary = true
        keepHero = true
    elseif runeRaritySelect == spinnerRuneRarity[3] then
        keepLegendary = true
        keepHero = true
        keepRare = true
    elseif runeRaritySelect == spinnerRuneRarity[4] then
        keepLegendary = true
        keepHero = true
        keepRare = true
        keepMagic = true
    elseif runeRaritySelect == spinnerRuneRarity[5] then
        keepLegendary = true
        keepHero = true
        keepRare = true
        keepMagic = true
        keepNormal = true
    end
end
addTextView("  ")
--- Dialog for keeping runes based on stars
keep6Star = false
keep5Star = false
keep4Star = false
keep3Star = false
keep2Star = false
keep1Star = false
spinnerRuneRank = {
    "6*",
    "5*",
    "4*",
    "3*",
    "2*",
    "1*"
}
addTextView("Min Rank: ")
addSpinner("runeRuneRankSelect", spinnerRuneRank, spinnerRuneRank[1])
function setRuneKeepOptions ()
    if runeRuneRankSelect == spinnerRuneRank[1] then
        keep6Star = true
    elseif rruneRuneRankSelect == spinnerRuneRank[2] then
        keep6Star = true
        keep5Star = true
    elseif runeRuneRankSelect == spinnerRuneRank[3] then
        keep6Star = true
        keep5Star = true
        keep4Star = true
    elseif runeRuneRankSelect == spinnerRuneRank[4] then
        keep6Star = true
        keep5Star = true
        keep4Star = true
        keep3Star = true
    elseif runeRuneRankSelect == spinnerRuneRank[5] then
        keep6Star = true
        keep5Star = true
        keep4Star = true
        keep3Star = true
        keep2Star = true
    elseif runeRuneRankSelect == spinnerRuneRank[6] then
        keep6Star = true
        keep5Star = true
        keep4Star = true
        keep3Star = true
        keep2Star = true
        keep1Star = true
    end
end
--- Dialog for keeping runes based on stats
keepAll = false
keepPercent = false
spinnerMainStat = {
    "Save all",
    "Save %/spd 2/4/6"
}
addTextView("Main Stat: ")
addSpinner("runeMainStatSelect", spinnerMainStat, spinnerMainStat[1])
function setRuneKeepOptions ()
    if runeMainStatSelect == spinnerMainStat[1] then
        keepAll = true
    elseif runeMainStatSelect == spinnerMainStat[2] then
        keepPercent = true
    end
end
--- order of operation for determining whether to keep the rune
function runeKeep1 ()
    if runeRarity == "Legendary" and keepLegendary == true then
        runeKeep2 ()
    elseif runeRarity == "Hero" and keepHero == true then
        runeKeep2 ()
    elseif runeRarity == "Rare" and keepRare == true then
        runeKeep2 ()
    elseif runeRarity == "Magic" and keepMagic == true then
        runeKeep2 ()
    elseif runeRarity == "Normal" and keepNormal == true then
        runeKeep2 ()
    else
        sellRune()
    end
end
function runeKeep2 ()
    if runeRank == 6 and keep6Star == true then
        runeKeep3 ()
    elseif runeRank == 5 and keep5Star == true then
        runeKeep3 ()
    elseif runeRank == 4 and keep4Star == true then
        runeKeep3 ()
    elseif runeRank == 3 and keep3Star == true then
        runeKeep3 ()
    elseif runeRank == 2 and keep2Star == true then
        runeKeep3 ()
    elseif runeRank == 1 and keep1Star == true then
        runeKeep3 ()
    else
        sellRune()
    end
end
function runeKeep3 ()
    if keepAll == true then
        getRune()
        toast("Rune obtained!")
        if runeRank == 6 then r6Count = r6Count + 1
        elseif runeRank == 5 then r5Count = r5Count + 1
        end
    elseif runeSlot == 2 and keepPercent == true and mainStat == ("HP") then
        sellRune()
        toast("Flat rune Sold!")
        if runeRank == 6 then r6Sold = r6Sold + 1
        elseif runeRank == 5 then r5Sold = r5Sold + 1
        end
    elseif runeSlot == 2 and keepPercent == true and mainStat == ("ATK") then
        sellRune()
        toast("Flat rune Sold!")
        if runeRank == 6 then r6Sold = r6Sold + 1
        elseif runeRank == 5 then r5Sold = r5Sold + 1
        end
    elseif runeSlot == 2 and keepPercent == true and mainStat == ("DEF") then
        sellRune()
        toast("Flat rune Sold!")
        if runeRank == 6 then r6Sold = r6Sold + 1
        elseif runeRank == 5 then r5Sold = r5Sold + 1
        end
    elseif runeSlot == 4 and keepPercent == true and mainStat == ("HP") then
        sellRune()
        toast("Flat rune Sold!")
        if runeRank == 6 then r6Sold = r6Sold + 1
        elseif runeRank == 5 then r5Sold = r5Sold + 1
        end
    elseif runeSlot == 4 and keepPercent == true and mainStat == ("ATK") then
        sellRune()
        toast("Flat rune Sold!")
        if runeRank == 6 then r6Sold = r6Sold + 1
        elseif runeRank == 5 then r5Sold = r5Sold + 1
        end
    elseif runeSlot == 4 and keepPercent == true and mainStat == ("DEF") then
        sellRune()
        toast("Flat rune Sold!")
        if runeRank == 6 then r6Sold = r6Sold + 1
        elseif runeRank == 5 then r5Sold = r5Sold + 1
        end
    elseif runeSlot == 6 and keepPercent == true and mainStat == ("HP") then
        sellRune()
        toast("Flat rune Sold!")
        if runeRank == 6 then r6Sold = r6Sold + 1
        elseif runeRank == 5 then r5Sold = r5Sold + 1
        end
    elseif runeSlot == 6 and keepPercent == true and mainStat == ("ATK") then
        sellRune()
        toast("Flat rune Sold!")
        if runeRank == 6 then r6Sold = r6Sold + 1
        elseif runeRank == 5 then r5Sold = r5Sold + 1
        end
    elseif runeSlot == 6 and keepPercent == true and mainStat == ("DEF") then
        sellRune()
        toast("Flat rune Sold!")
        if runeRank == 6 then r6Sold = r6Sold + 1
        elseif runeRank == 5 then r5Sold = r5Sold + 1
        end
    else
        getRune ()
        toast("Rune obtained!")
        if runeRank == 6 then r6Count = r6Count + 1
        elseif runeRank == 5 then r5Count = r5Count + 1
        end
    end
end
function sellGetRune ()
    if grindstoneRegion:exists(Pattern("grindstone.png"):similar(.3), 0.1) then
        getRune()
        toast("Grindstone.  Get!")
    elseif enchantedGemRegion:exists(Pattern("enchantedGem.png"):similar(.3), 0.1) then
        getRune()
        toast("Enchanted Gem.  Get!")
    else
        findRuneRarity()
        findRuneRank()
        findRuneSlot()
        findMainStat()
        runeKeep1 ()
    end
end