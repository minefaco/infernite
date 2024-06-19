--Registering all crafts
local G = "infernite:infernite_gem"

if not minetest.get_modpath("moreores") then
    local material = "default:diamond"
else
    local material = "moreores:mitrhil"
end
local items = {
    "default:axe_diamond",
    "default:pick_diamond",
    "default:shovel_diamond",
    "default:sword_diamond",
    "default:hoe_diamond",
}

for _, name in ipairs(items) do
    
    --local mod, material = unpack(material:split(":"))

    minetest.register_craft({
	    output = "infernite:pick",
	    recipe = {
				    {"G", "G", "G"},
				    {"G",items, "G"},
				    {"G", "G", "G"},
	    }
    })

end
