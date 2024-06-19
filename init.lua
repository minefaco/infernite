--Definicion del ore

minetest.register_craftitem("infernite:infernite_lump", {
	description = "Infernite lump",
	inventory_image = "infernite_lump.png",
})

minetest.register_craftitem("infernite:infernite_orb", {
	description = "Infernite orb",
	inventory_image = "infernite_orb.png",
})

minetest.register_craftitem("infernite:infernite_gem", {
	description = "Infernite gem",
	inventory_image = "infernite_gem.png",
})

minetest.register_node("infernite:infernite_block", {
	description = "Infernite block",
	tiles = {"infernite_block.png"},
	groups = {cracky= 1, level = 3,},
	drop = "infernite:infernite_lump",
})

minetest.register_node("infernite:infernite_ore", {
	description = "Infernite ore",
	tiles = {"nether_rack.png^infernite_ore.png"},
	groups = {cracky= 1, level = 3,},
	drop = "infernite:infernite_lump",
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "infernite:infernite_ore",
	wherein        = "nether:rack",
	clust_scarcity = 17 * 17 * 17,
	clust_num_ores = 3,
	clust_size     = 3,
	y_max          = -20000,
	y_min          = -31000,
})

--Crafts

minetest.register_craft({
			output = "infernite:infernite_orb",
			recipe = {
				{"infernite:infernite_lump", "infernite:infernite_lump", "infernite:infernite_lump"},
				{"infernite:infernite_lump", "default:gold_ingot", "infernite:infernite_lump"},
				{"infernite:infernite_lump", "infernite:infernite_lump", "infernite:infernite_lump"},
			}
		})

minetest.register_craft({
	type = "cooking",
	output = "infernite:infernite_gem",
	recipe = "infernite:infernite_orb",
	cookingtime = 15,
})

--tools

minetest.register_tool("infernite:pick", {
	description = "Infernite Pickaxe",
	inventory_image = "infernite_pick.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=5,
		groupcaps={
			cracky = {times={[1]=2.5, [2]=1.5, [3]=1.0}, uses=15000, maxlevel=5},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("infernite:shovel", {
	description = "Infernite Shovel",
	inventory_image = "infernite_shovel.png",
	wield_image = "infernite_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=3,
		groupcaps={
			crumbly = {times={[1]=1.90, [2]=1.00, [3]=0.50}, uses=10000, maxlevel=4},
		},
		damage_groups = {fleshy=6},
	},
})

minetest.register_tool("infernite:axe", {
	description = "Infernite Axe",
	inventory_image = "infernite_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.20, [3]=1.0}, uses=10000, maxlevel=3},
		},
		damage_groups = {fleshy=9},
	},
})

minetest.register_tool("infernite:sword", {
	description = "Infernite Sword",
	inventory_image = "infernite_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			snappy={times={[1]=2, [2]=1, [3]=0.50}, uses=10000, maxlevel=5},
		},
		damage_groups = {fleshy=10},
	}
})
if minetest.get_modpath("farming") then
farming.register_hoe("infernite:hoe", {
	description = "Infernite Hoe",
	inventory_image = "infernite_hoe.png",
	max_uses = 10000,
	material = "infernite:infernite_gem"
})
end

-- Multitools support
if minetest.get_modpath("multitools") then
	multitools.register_multitool("infernite", "infernite", "Infernite multitool", "infernite_multitool_infernite.png", nil,
	{
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=1.0, [3]=0.50}, uses=500, maxlevel=3},
			choppy = {times={[1]=0.5, [2]=0.60, [3]=0.60}, uses=500, maxlevel=3},
			crumbly = {times={[1]=0.5, [2]=0.50, [3]=0.30}, uses=500, maxlevel=3},
			snappy = {times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=500, maxlevel=3},
		},
		damage_groups = {fleshy=7.25}, -- Average damage from all cloud tools
	}
)
end



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



