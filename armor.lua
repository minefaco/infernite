if minetest.get_modpath("3d_armor") then

	minetest.register_tool(":3d_armor:helmet_infernite", {
		description = "infernite Helmet",
		inventory_image = "helmet_infernite_inv.png",
        texture = "helmet_infernite.png",
		groups = {armor_head=18, armor_heal=15, armor_use=170, armor_fire=0.7},
		wear = 0,
	})
	minetest.register_tool(":3d_armor:chestplate_infernite", {
		description = "infernite Chestplate",
		inventory_image = "chestplate_infernite_inv.png",
        texture = "chestplate_infernite.png",
		groups = {armor_torso=29, armor_heal=17, armor_use=170, armor_fire=0.6},
		wear = 0,
	})
	minetest.register_tool(":3d_armor:leggings_infernite", {
		description = "infernite Leggings",
		inventory_image = "leggings_infernite_inv.png",
        texture = "leggings_infernite.png",
		groups = {armor_legs=28, armor_heal=15, armor_use=160, armor_fire=0.7},
		wear = 0,
	})
	minetest.register_tool(":3d_armor:boots_infernite", {
		description = "infernite Boots",
		inventory_image = "boots_infernite_inv.png",
        texture = "boots_infernite.png",
		groups = {armor_feet=20, armor_heal=16, armor_use=170, armor_fire=0.8},
		wear = 0,
	})
	minetest.register_tool(":shields:shield_infernite", {
		description = "infernite Shield",
		inventory_image = "shield_infernite_inv.png",
        texture = "shield_infernite.png",
		groups = {armor_shield=15, armor_heal=12, armor_use=50},
		wear = 0,
	})
end
