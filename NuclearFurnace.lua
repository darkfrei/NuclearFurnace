local mod_name = "__NuclearFurnace__"
local element_name = "nuclear-furnace-1"
local tint = {r = 0.7, g = 1, b = 0.7, a = 1}
local size = 6
local shift = {0.6875, 0} -- use 'Shift Tool' for this correction

  -- burner = {
    -- burnt_inventory_size = 1,
    -- effectivity = 1,
    -- fuel_category = "nuclear",
    -- fuel_inventory_size = 1
  -- },


data:extend({
  {
    flags = {
      "goes-to-quickbar"
    },
    icons = {{icon = mod_name .. "/graphics/icon_32.png", tint = tint}},
    icon_size = 32,
    name = element_name,
    order = "b[steel-furnace]",
    place_result = element_name,
    stack_size = 50,
    subgroup = "smelting-machine",
    type = "item"
  },
  
  {
    enabled = false,
    energy_required = 3,
    ingredients = {
      {"concrete",500},
      {"steel-plate",500},
      {"advanced-circuit",500},
      {"copper-plate", 500}
    },
    name = element_name,
    result = element_name,
    type = "recipe"
  },
  
  {
    type = "furnace",
    name = element_name,
    icons = {{icon = mod_name .. "/graphics/icon_32.png", tint = tint}},
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 5, result = element_name},
    max_health = 1000,
    corpse = "big-remnants",
    -- dying_explosion = "medium-explosion",
    -- dying_explosion = "uranium-cannon-explosion",
    dying_explosion = "uranium-cannon-shell-explosion",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound = {sound = { filename = "__base__/sound/furnace.ogg" }},
    resistances = {{type = "fire",percent = 100}},
    collision_box = {{-size/2+0.3, -size/2+0.3},{size/2-0.3, size/2-0.3}},
    selection_box = {{-size/2, -size/2}, {size/2, size/2}},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    -- energy_usage = "180kW",
    energy_usage = "26000kW",
    -- crafting_speed = 2,
    crafting_speed = 140,
    source_inventory_size = 1,
    energy_source = {
      type = "burner",
      -- burner = {
        -- burnt_inventory_size = 1,
        -- effectivity = 1,
        -- fuel_category = "nuclear",
        -- fuel_inventory_size = 1
      -- },
      -- fuel_category = "chemical",
      fuel_category = "nuclear",
      effectivity = 0.25,
      emissions = 0.02,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1
      -- smoke = -- i can't see smoke, too old laptop
      -- {
        -- {
          -- name = "smoke",
          -- frequency = 10,
          -- position = {0.7, -1.2},
          -- starting_vertical_speed = 0.08,
          -- starting_frame_deviation = 60
        -- }
      -- }
    },
    animation = -- no animation, just one static picture
    {
      layers = {
        {
          filename = mod_name .. "/graphics/entity.png",
          priority = "high",
          width = 208,
          height = 166,
          frame_count = 1,
          shift = shift,
          tint = tint
          -- hr_version = {
            -- filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace.png",
            -- priority = "high",
            -- width = 171,
            -- height = 174,
            -- frame_count = 1,
            -- shift = util.by_pixel(-1.25, 2),
            -- scale = 0.5
          -- }
        }
      },
    },
    -- working_visualisations =
    -- {
      -- {
        -- north_position = {0.0, 0.0},
        -- east_position = {0.0, 0.0},
        -- south_position = {0.0, 0.0},
        -- west_position = {0.0, 0.0},
        -- animation =
        -- {
          -- filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
          -- priority = "high",
          -- line_length = 8,
          -- width = 29,
          -- height = 40,
          -- frame_count = 48,
          -- axially_symmetrical = false,
          -- direction_count = 1,
          -- shift = util.by_pixel(-0.5, 6),
          -- hr_version = {
            -- filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-fire.png",
            -- priority = "high",
            -- line_length = 8,
            -- width = 57,
            -- height = 81,
            -- frame_count = 48,
            -- axially_symmetrical = false,
            -- direction_count = 1,
            -- shift = util.by_pixel(-0.75, 5.75),
            -- scale = 0.5
          -- }
        -- },
        -- light = {intensity = 1, size = 1, color = {r = 1.0, g = 1.0, b = 1.0}}
      -- },
      -- {
        -- north_position = {0.0, 0.0},
        -- east_position = {0.0, 0.0},
        -- south_position = {0.0, 0.0},
        -- west_position = {0.0, 0.0},
        -- effect = "flicker", -- changes alpha based on energy source light intensity
        -- animation =
        -- {
          -- filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
          -- priority = "high",
          -- width = 60,
          -- height = 43,
          -- frame_count = 1,
          -- shift = {0.03125, 0.640625},
          -- blend_mode = "additive"
        -- }
      -- },
      -- {
        -- north_position = {0.0, 0.0},
        -- east_position = {0.0, 0.0},
        -- south_position = {0.0, 0.0},
        -- west_position = {0.0, 0.0},
        -- effect = "flicker", -- changes alpha based on energy source light intensity
        -- animation =
        -- {
          -- filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
          -- priority = "high",
          -- line_length = 8,
          -- width = 64,
          -- height = 75,
          -- frame_count = 1,
          -- axially_symmetrical = false,
          -- direction_count = 1,
          -- shift = util.by_pixel(0, -4.5),
          -- blend_mode = "additive",
          -- hr_version = {
            -- filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-working.png",
            -- priority = "high",
            -- line_length = 8,
            -- width = 130,
            -- height = 149,
            -- frame_count = 1,
            -- axially_symmetrical = false,
            -- direction_count = 1,
            -- shift = util.by_pixel(0, -4.25),
            -- blend_mode = "additive",
            -- scale = 0.5
          -- }
        -- }
      -- },
    -- },
    
    fast_replaceable_group = "furnace"
  }

})

local tech_effects = data.raw["technology"]["nuclear-power"].effects
tech_effects[#tech_effects+1] =     
  {
    recipe = element_name,
    type = "unlock-recipe"
  }