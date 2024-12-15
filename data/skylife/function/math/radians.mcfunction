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
#> placeholder:math/radians
#
#! Description:
#> Calculates radians of X
#
#! Usage:
#> Set float of x in (skylife:math in.x) to value
#> Run (function placeholder:math/radians with storage skylife:radians in)
#> Result will be spat to (skylife:math out) as a float or double.
# ~~~~~~=====--------=====~~~~~~

# Notes:
# - Header is not set in stone, i didnt know what you guys wanted to do for that, so i just did what i normally do

execute store result score x skyLifeMath run data get storage skylife:math in.x 100
scoreboard players operation x skyLifeMath *= radians skyLifeMath
execute store result storage skylife:math out float 0.00001 run scoreboard players get x skyLifeMath