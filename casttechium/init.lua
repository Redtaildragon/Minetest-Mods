minetest.register_node("casttechium:casttechium_ore",{
  description = "Casttechium Ore",
  tiles = {"default_stone.png^casttechium_ore.png"},
  drop = "casttechium:casttechium_lump",
  groups = {cracky = 2},
})

minetest.register_ore({
  ore_type = "scatter",
  ore = "casttechium:casttechium_ore",
  wherein = "group:stone",
  clust_scarcity = 1250,
  clust_num_ore = 3,
  clust_size = 3,
  height_min = -31000,
  height_max = 128,
})

minetest.register_craft({
  type = "cooking",
  output = "casttechium:casttechium_ingot",
  recipe = "casttechium:casttechium_lump",
  cooktime = 10,
})

minetest.register_craft({
  output = "casttechium:casttechium_ingot 9",
  recipe = {
          {"","",""},
          {"","casttechium:casttechium_block",""},
          {"","",""},
  }
})

minetest.register_craft({
  output = "casttechium:casttechium_block",
  recipe = {
          {"casttechium:casttechium_ingot","casttechium:casttechium_ingot","casttechium:casttechium_ingot"},
          {"casttechium:casttechium_ingot","casttechium:casttechium_ingot","casttechium:casttechium_ingot"},
          {"casttechium:casttechium_ingot","casttechium:casttechium_ingot","casttechium:casttechium_ingot"},
  }
})

minetest.register_craftitem("casttechium:casttechium_lump",{
  description = "Casttechium Lump",
  inventory_image = "casttechium_lump.png",
})

minetest.register_craftitem("casttechium:casttechium_ingot",{
  description = "Casttechium Ingot",
  inventory_image = "casttechium_ingot.png",
})

minetest.register_node("casttechium:casttechium_block",{
  description = "Casttechium Block",
  tiles = {"casttechium_block.png"},
  groups = {cracky = 2},
})

minetest.register_tool("casttechium:CAST_Axe",{
  description = "CAST Axe",
  inventory_image = "cast_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=150, maxlevel=3},
		},
		damage_groups = {fleshy=20},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

minetest.register_craft({
  output = "casttechium:CAST_Axe",
  recipe = {
          {"casttechium:casttechium_ingot","casttechium:casttechium_ingot","casttechium:casttechium_ingot"},
          {"casttechium:casttechium_ingot","default:stick","casttechium:casttechium_ingot"},
          {"","default:stick",""},
  }
})
