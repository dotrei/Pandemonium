# ~~~~~~=====--------=====~~~~~~
#
#! SkyLife
#
#! Contributors:
#> - Drogoon
#> - Rei
#> - SilverySky?
#> -
#
#! File:
#> placeholder:island_generation/create_island_pos
#
#! Description:
#> Subfunction of create_player_islands that calculates island positions.
# ~~~~~~=====--------=====~~~~~~

# Notes:
# - Header is not set in stone, i didnt know what you guys wanted to do for that, so i just did what i normally do

#! :theta = (2PI * islandIndex)/islands
scoreboard players operation theta skyLifeMath = islandIndex skyLifeMath
scoreboard players operation theta skyLifeMath *= 10 skyLifeMath
scoreboard players operation theta skyLifeMath *= 2PI skyLifeMath
scoreboard players operation theta skyLifeMath /= islands skyLifeMath

#! :radians(theta)
execute store result storage skylife:math in.x float 0.0001 run scoreboard players get theta skyLifeMath
function skylife:math/radians with storage skylife:math in
data modify storage skylife:math in.x set from storage skylife:math out

#! :cos(theta)
function skylife:math/cosine with storage skylife:math in
execute store result score islandX skyLifeMath run data get storage skylife:math out 100

#! :sin(theta)
function skylife:math/sine with storage skylife:math in
execute store result score islandY skyLifeMath run data get storage skylife:math out 100

#! :scale(theta)
scoreboard players operation islandX skyLifeMath *= playerIslandRadius skyLifeMath
scoreboard players operation islandY skyLifeMath *= playerIslandRadius skyLifeMath
scoreboard players operation islandX skyLifeMath += translationX skyLifeMath
scoreboard players operation islandY skyLifeMath += translationY skyLifeMath
scoreboard players operation islandX skyLifeMath /= 100 skyLifeMath
scoreboard players operation islandY skyLifeMath /= 100 skyLifeMath
execute store result storage skylife:math temp.islandPosition.x float 1 run scoreboard players get islandX skyLifeMath
execute store result storage skylife:math temp.islandPosition.y float 1 run scoreboard players get islandY skyLifeMath

function skylife:island_generation/random_island with storage skylife:math temp.islandPosition

scoreboard players add islandIndex skyLifeMath 1
execute unless score islandIndex skyLifeMath >= islands skyLifeMath run function skylife:island_generation/create_island_pos
