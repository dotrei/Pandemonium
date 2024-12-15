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
#> placeholder:math/cosine
#
#! Description:
#> Calculates the cosine of X
#
#! Usage:
#> Set float of x in (skylife:math in.x) to value
#> Run (function placeholder:math/cosine with storage skylife:math in)
#> Result will be spat to (skylife:math out) as a float or double.
# ~~~~~~=====--------=====~~~~~~

# Notes:
# - Header is not set in stone, i didnt know what you guys wanted to do for that, so i just did what i normally do

$execute as 00000000-0000-0000-0000-000000000010 rotated $(x) 0 positioned 0.0 0 0.0 run tp ^ ^ ^1
data modify storage skylife:math out set from entity 00000000-0000-0000-0000-000000000010 Pos[2]