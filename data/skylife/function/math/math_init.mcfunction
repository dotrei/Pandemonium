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
#> placeholder:math/math_init
#
#! Description:
#> Loads math entities, scoreboards, and data.
# ~~~~~~=====--------=====~~~~~~

summon minecraft:block_display 0.0 0 0.0 {UUID:[I; 0, 0, 0, 16], Tags:["SkyLife.mathEntity"]}
scoreboard objectives add skyLifeMath dummy
scoreboard players set radians skyLifeMath 57295
scoreboard players set 2PI skyLifeMath 6283
scoreboard players set 10 skyLifeMath 10
scoreboard players set 100 skyLifeMath 100