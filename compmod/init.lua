minetest.register_node("compmod:Silicon_Ore",{
  description = "Silicon Ore",
  tiles = {"default_stone.png^Silicon_Ore.png"},
  drop = "compmod:Silicon_Crystal",
  groups = {cracky = 2},
})

minetest.register_ore({
  ore_type = "scatter",
  ore = "compmod:Silicon_Ore",
  wherein = "group:stone",
  clust_scarcity = 100,
  clust_num_ore = 5,
  clust_size = 3,
  height_min = -31000,
  height_max = 128,
})

minetest.register_craftitem("compmod:Silicon_Crystal",{
  description = "Silicon Crystal",
  inventory_image = "Silicon_Crystal.png",
})

minetest.register_node("compmod:Electric_Ore",{
  description = "Electric Ore",
  tiles = {"default_stone.png^Electric_Ore.png"},
  drop = "compmod:Electric_Crystal",
  groups = {cracky = 2.7},
})

minetest.register_ore({
  ore_type = "scatter",
  ore = "compmod:Electric_Ore",
  wherein = "group:stone",
  clust_scarcity = 100,
  clust_num_ore = 5,
  clust_size = 3,
  height_min = -31000,
  height_max = 128,
})

minetest.register_craftitem("compmod:Electric_Crystal",{
  description = "Electric Crystal",
  inventory_image = "Electric_Crystal.png",
})

minetest.register_node("compmod:Battery",{
  description = "Battery",
  tiles = {"Battery.png"},
  groups = {cracky = 2},
})

minetest.register_craft({
  output = "compmod:Battery",
  recipe = {
          {"compmod:Electric_Crystal","compmod:Electric_Crystal","compmod:Electric_Crystal"},
          {"compmod:Electric_Crystal","compmod:Electric_Crystal","compmod:Electric_Crystal"},
          {"compmod:Electric_Crystal","compmod:Electric_Crystal","compmod:Electric_Crystal"},
  }
})

minetest.register_node("compmod:Computer_Screen",{
  description = "Computer Monitor",
  tiles = {"Comp_Screen.png"},
  groups = {oddly_breakable_by_hand = 2},
})

minetest.register_craft({
  output = "compmod:Computer_Screen",
  recipe = {
          {"default:tin_ingot","default:tin_ingot","default:tin_ingot"},
          {"default:tin_ingot","default:glass","default:tin_ingot"},
          {"default:tin_ingot","default:tin_ingot","default:tin_ingot"},
  }
})

minetest.register_node("compmod:Computer_Frame",{
  description = "Computer Frame",
  tiles = {"Comp_Frame.png"},
  groups = {cracky = 2},
})

minetest.register_craft({
  output = "compmod:Computer_Frame",
  recipe = {
          {"default:tin_ingot","default:tin_ingot","default:tin_ingot"},
          {"default:tin_ingot","","default:tin_ingot"},
          {"default:tin_ingot","default:tin_ingot","default:tin_ingot"},
  }
})

minetest.register_node("compmod:Computer_Chip",{
  description = "Computer Chip",
  tiles = {"Comp_Chip.png"},
  groups = {cracky = 2.6},
})

minetest.register_craft({
  output = "compmod:Computer_Chip",
  recipe = {
          {"default:tin_ingot","compmod:Silicon_Crystal","default:tin_ingot"},
          {"compmod:Silicon_Crystal","default:steel_ingot","compmod:Silicon_Crystal"},
          {"default:tin_ingot","compmod:Silicon_Crystal","default:tin_ingot"},
  }
})

minetest.register_node("compmod:Computer_Desktop",{
  description = "Computer Desktop",
  tiles = {"Computer_Desktop.png"},
  groups = {cracky = 3},
})

minetest.register_craft({
  output = "compmod:Computer_Desktop",
  recipe = {
          {"","",""},
          {"","compmod:Computer_Chip","compmod:Computer_Frame"},
          {"","",""},
  }
})

minetest.register_craftitem("compmod:Computer_Mouse",{
  description = "Computer Mouse",
  inventory_image = "Comp_Mouse.png",
})

minetest.register_craft({
  output = "compmod:Computer_Mouse",
  recipe = {
          {"","default:tin_ingot",""},
          {"default:tin_ingot","compmod:Silicon_Crystal","default:tin_ingot"},
          {"","default:tin_ingot",""},
  }
})

minetest.register_node("compmod:Computer",{
  description = "Computer",
  tiles = {"Computer.png"},
  groups = {cracky = 3.7},
})

minetest.register_craft({
  output = "compmod:Computer",
  recipe = {
          {"","compmod:Computer_Screen",""},
          {"","compmod:Computer_Desktop","compmod:Computer_Mouse"},
          {"","compmod:Battery",""},
  }
})

minetest.register_tool("compmod:Null_Sword",{
  description = "Null Sword",
  inventory_image = "Null_Sword.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=999, maxlevel=3},
		},
		damage_groups = {fleshy=300},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

minetest.register_craft({
  output = "compmod:Null_Sword",
  recipe = {
          {"default:steel_ingot","default:steel_ingot","default:steel_ingot"},
          {"default:steel_ingot","compmod:Computer","default:steel_ingot"},
          {"default:steelblock","default:stick","default:steelblock"},
  }
})

minetest.register_tool("compmod:Electric_Hammer",{
  description = "Electric Hammer",
  inventory_image = "Elec_Hammer.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.90, [2]=0.90, [3]=0.30}, uses=250, maxlevel=3},
		},
		damage_groups = {fleshy=25},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})

minetest.register_craft({
  output = "compmod:Electric_Hammer",
  recipe = {
          {"compmod:Electric_Crystal","compmod:Battery","compmod:Electric_Crystal"},
          {"compmod:Electric_Crystal","default:stick","compmod:Electric_Crystal"},
          {"","default:stick",""},
  }
})

minetest.register_node("compmod:Silicon_Block",{
  description = "Silicon Block",
  tiles = {"Silicon_Block.png"},
  groups = {cracky = 2},
})

minetest.register_craft({
  output = "compmod:Silicon_Block",
  recipe = {
          {"compmod:Silicon_Crystal","compmod:Silicon_Crystal","compmod:Silicon_Crystal"},
          {"compmod:Silicon_Crystal","compmod:Silicon_Crystal","compmod:Silicon_Crystal"},
          {"compmod:Silicon_Crystal","compmod:Silicon_Crystal","compmod:Silicon_Crystal"},
  }
})

minetest.register_craftitem("compmod:Smart_Phone",{
  description = "Smart Phone",
  inventory_image = "Smart_Phone.png",
})

minetest.register_craft({
  output = "compmod:Smart_Phone",
  recipe = {
          {"default:steel_ingot","default:glass","default:steel_ingot"},
          {"default:steel_ingot","compmod:Computer_Chip","default:steel_ingot"},
          {"default:steel_ingot","compmod:Battery","default:steel_ingot"},
  }
})
