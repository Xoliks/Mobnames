
# scoreboard to keep track of what biome a mob is from
scoreboard objectives add mobnames.biome dummy
scoreboard objectives add mobnames.dimension dummy

scoreboard objectives add mobnames.temp dummy

#summon invisible text display at 0, 0, 0 with UUID 0985c140-c76a-0eff-0b9f-7cd90b2c792c, this is used for name concatenation
summon text_display 0 -100 0 {text:"{\"text\":\"\"}",UUID:[I;159760704,-949350657,195001561,187463980],view_range:0f,shadow_radius:0f,shadow_strength:0f,width:0f,height:0f,billboard:"fixed",line_width:0,text_opacity:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}