data.raw["item"]["nuclear-reactor"] = {
  flags = {
    "goes-to-quickbar"
  },
  icon = "__base__/graphics/icons/nuclear-reactor.png",
  icon_size = 32,
  name = "nuclear-reactor",
  order = "f[nuclear-energy]-a[reactor]",
  place_result = "nuclear-reactor",
  stack_size = 10,
  subgroup = "energy",
  type = "item"
}

data.raw["recipe"]["nuclear-reactor"] = {
  enabled = false,
  energy_required = 8,
  ingredients = {
    {
      "concrete",
      500
    },
    {
      "steel-plate",
      500
    },
    {
      "advanced-circuit",
      500
    },
    {
      "copper-plate",
      500
    }
  },
  name = "nuclear-reactor",
  requester_paste_multiplier = 1,
  result = "nuclear-reactor",
  type = "recipe"
}

data.raw["reactor"]["nuclear-reactor"] = {
  burner = {
    burnt_inventory_size = 1,
    effectivity = 1,
    fuel_category = "nuclear",
    fuel_inventory_size = 1
  },
  collision_box = {
    {
      -2.2000000000000002,
      -2.2000000000000002
    },
    {
      2.2000000000000002,
      2.2000000000000002
    }
  },
  connection_patches = {
    east = {
      filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-east.png",
      height = 160,
      shift = {
        2.265625,
        0
      },
      width = 15
    },
    north = {
      filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-north.png",
      height = 15,
      shift = {
        0,
        -2.265625
      },
      width = 160
    },
    south = {
      filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-south.png",
      height = 15,
      shift = {
        0,
        2.265625
      },
      width = 160
    },
    west = {
      filename = "__base__/graphics/entity/nuclear-reactor/connection-patch-west.png",
      height = 160,
      shift = {
        -2.265625,
        0
      },
      width = 15
    }
  },
  connection_patches_connected = {
    sheet = {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
      height = 32,
      hr_version = {
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
        height = 64,
        scale = 0.5,
        variation_count = 12,
        width = 64
      },
      variation_count = 12,
      width = 32
    }
  },
  connection_patches_disconnected = {
    sheet = {
      filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
      height = 32,
      hr_version = {
        filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-connect-patches.png",
        height = 64,
        scale = 0.5,
        variation_count = 12,
        width = 64,
        y = 64
      },
      variation_count = 12,
      width = 32,
      y = 32
    }
  },
  consumption = "40MW",
  corpse = "big-remnants",
  flags = {
    "placeable-neutral",
    "player-creation"
  },
  heat_buffer = {
    connections = {
      {
        direction = 0,
        position = {
          -2,
          -2
        }
      },
      {
        direction = 0,
        position = {
          0,
          -2
        }
      },
      {
        direction = 0,
        position = {
          2,
          -2
        }
      },
      {
        direction = 2,
        position = {
          2,
          -2
        }
      },
      {
        direction = 2,
        position = {
          2,
          0
        }
      },
      {
        direction = 2,
        position = {
          2,
          2
        }
      },
      {
        direction = 4,
        position = {
          2,
          2
        }
      },
      {
        direction = 4,
        position = {
          0,
          2
        }
      },
      {
        direction = 4,
        position = {
          -2,
          2
        }
      },
      {
        direction = 6,
        position = {
          -2,
          2
        }
      },
      {
        direction = 6,
        position = {
          -2,
          0
        }
      },
      {
        direction = 6,
        position = {
          -2,
          -2
        }
      }
    },
    max_temperature = 1000,
    max_transfer = "10GW",
    specific_heat = "10MJ"
  },
  icon = "__base__/graphics/icons/nuclear-reactor.png",
  icon_size = 32,
  light = {
    color = {
      b = 0,
      g = 1,
      r = 0
    },
    intensity = 0.6,
    shift = {
      0,
      0
    },
    size = 9.9000000000000004
  },
  lower_layer_picture = {
    filename = "__base__/graphics/entity/nuclear-reactor/reactor-pipes.png",
    height = 160,
    hr_version = {
      filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-pipes.png",
      height = 320,
      scale = 0.5,
      shift = {
        -0.03125,
        -0.1875
      },
      width = 320
    },
    shift = {
      -0.03125,
      -0.1875
    },
    width = 160
  },
  max_health = 500,
  meltdown_action = {
    action_delivery = {
      target_effects = {
        {
          offset_deviation = {
            {
              -1,
              -1
            },
            {
              1,
              1
            }
          },
          repeat_count = 100,
          slow_down_factor = 1,
          smoke_name = "nuclear-smoke",
          speed_deviation = 0.2,
          speed_from_center = 0.5,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5,
          type = "create-trivial-smoke"
        },
        {
          entity_name = "explosion",
          type = "create-entity"
        },
        {
          damage = {
            amount = 400,
            type = "explosion"
          },
          type = "damage"
        },
        {
          check_buildability = true,
          entity_name = "small-scorchmark",
          type = "create-entity"
        },
        {
          action = {
            action_delivery = {
              projectile = "atomic-bomb-wave",
              starting_speed = 0.5,
              type = "projectile"
            },
            radius = 35,
            repeat_count = 2000,
            target_entities = false,
            type = "area"
          },
          type = "nested-result"
        }
      },
      type = "instant"
    },
    type = "direct"
  },
  minable = {
    mining_time = 1.5,
    result = "nuclear-reactor"
  },
  name = "nuclear-reactor",
  neighbour_bonus = 1,
  picture = {
    layers = {
      {
        filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
        height = 160,
        hr_version = {
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor.png",
          height = 320,
          scale = 0.5,
          shift = {
            -0.03125,
            -0.1875
          },
          width = 320
        },
        shift = {
          -0.03125,
          -0.1875
        },
        width = 160
      },
      {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/nuclear-reactor/reactor-shadow.png",
        height = 162,
        hr_version = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-shadow.png",
          height = 323,
          scale = 0.5,
          shift = {
            1.625,
            0
          },
          width = 525
        },
        shift = {
          1.625,
          0
        },
        width = 263
      }
    }
  },
  selection_box = {
    {
      -2.5,
      -2.5
    },
    {
      2.5,
      2.5
    }
  },
  type = "reactor",
  vehicle_impact_sound = {
    filename = "__base__/sound/car-metal-impact.ogg",
    volume = 0.65
  },
  working_light_picture = {
    blend_mode = "additive",
    filename = "__base__/graphics/entity/nuclear-reactor/reactor-lights-color.png",
    height = 160,
    hr_version = {
      blend_mode = "additive",
      filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-lights-color.png",
      height = 320,
      scale = 0.5,
      shift = {
        -0.03125,
        -0.1875
      },
      width = 320
    },
    shift = {
      -0.03125,
      -0.1875
    },
    width = 160
  }
}

data.raw["technology"]["nuclear-power"] = {
  effects = {
    {
      recipe = "nuclear-reactor",
      type = "unlock-recipe"
    },
    {
      recipe = "centrifuge",
      type = "unlock-recipe"
    },
    {
      recipe = "uranium-processing",
      type = "unlock-recipe"
    },
    {
      recipe = "uranium-fuel-cell",
      type = "unlock-recipe"
    },
    {
      recipe = "heat-exchanger",
      type = "unlock-recipe"
    },
    {
      recipe = "heat-pipe",
      type = "unlock-recipe"
    },
    {
      recipe = "steam-turbine",
      type = "unlock-recipe"
    }
  },
  icon = "__base__/graphics/technology/nuclear-power.png",
  icon_size = 128,
  name = "nuclear-power",
  order = "e-p-b-c",
  prerequisites = {
    "advanced-electronics",
    "concrete"
  },
  type = "technology",
  unit = {
    count = 1000,
    ingredients = {
      {
        "science-pack-1",
        1
      },
      {
        "science-pack-2",
        1
      },
      {
        "science-pack-3",
        1
      }
    },
    time = 30
  }
}



data.raw["item"]["steel-furnace"] = {
  flags = {
    "goes-to-quickbar"
  },
  icon = "__base__/graphics/icons/steel-furnace.png",
  icon_size = 32,
  name = "steel-furnace",
  order = "b[steel-furnace]",
  place_result = "steel-furnace",
  stack_size = 50,
  subgroup = "smelting-machine",
  type = "item"
}

data.raw["recipe"]["steel-furnace"] = {
  enabled = false,
  energy_required = 3,
  ingredients = {
    {
      "steel-plate",
      6
    },
    {
      "stone-brick",
      10
    }
  },
  name = "steel-furnace",
  result = "steel-furnace",
  type = "recipe"
}

data.raw["furnace"]["steel-furnace"] = {
  animation = {
    layers = {
      {
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
        frame_count = 1,
        height = 87,
        hr_version = {
          filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace.png",
          frame_count = 1,
          height = 174,
          priority = "high",
          scale = 0.5,
          shift = {
            -0.0390625,
            0.0625
          },
          width = 171
        },
        priority = "high",
        shift = {
          -0.046875,
          0.046875
        },
        width = 85
      },
      {
        draw_as_shadow = true,
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-shadow.png",
        frame_count = 1,
        height = 43,
        hr_version = {
          draw_as_shadow = true,
          filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-shadow.png",
          frame_count = 1,
          height = 85,
          priority = "high",
          scale = 0.5,
          shift = {
            1.2265625,
            0.3515625
          },
          width = 277
        },
        priority = "high",
        shift = {
          1.234375,
          0.359375
        },
        width = 139
      }
    }
  },
  collision_box = {
    {
      -0.7,
      -0.7
    },
    {
      0.7,
      0.7
    }
  },
  corpse = "medium-remnants",
  crafting_categories = {
    "smelting"
  },
  crafting_speed = 2,
  energy_source = {
    effectivity = 1,
    emissions = 0.02,
    fuel_category = "chemical",
    fuel_inventory_size = 1,
    smoke = {
      {
        frequency = 10,
        name = "smoke",
        position = {
          0.7,
          -1.2
        },
        starting_frame_deviation = 60,
        starting_vertical_speed = 0.08
      }
    },
    type = "burner"
  },
  energy_usage = "180kW",
  fast_replaceable_group = "furnace",
  flags = {
    "placeable-neutral",
    "placeable-player",
    "player-creation"
  },
  icon = "__base__/graphics/icons/steel-furnace.png",
  icon_size = 32,
  max_health = 300,
  minable = {
    mining_time = 1,
    result = "steel-furnace"
  },
  name = "steel-furnace",
  resistances = {
    {
      percent = 100,
      type = "fire"
    }
  },
  result_inventory_size = 1,
  selection_box = {
    {
      -0.8,
      -1
    },
    {
      0.8,
      1
    }
  },
  source_inventory_size = 1,
  type = "furnace",
  vehicle_impact_sound = {
    filename = "__base__/sound/car-metal-impact.ogg",
    volume = 0.65
  },
  working_sound = {
    sound = {
      filename = "__base__/sound/furnace.ogg"
    }
  },
  working_visualisations = {
    {
      animation = {
        axially_symmetrical = false,
        direction_count = 1,
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
        frame_count = 48,
        height = 40,
        hr_version = {
          axially_symmetrical = false,
          direction_count = 1,
          filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-fire.png",
          frame_count = 48,
          height = 81,
          line_length = 8,
          priority = "high",
          scale = 0.5,
          shift = {
            -0.0234375,
            0.1796875
          },
          width = 57
        },
        line_length = 8,
        priority = "high",
        shift = {
          -0.015625,
          0.1875
        },
        width = 29
      },
      east_position = {
        0,
        0
      },
      light = {
        color = {
          b = 1,
          g = 1,
          r = 1
        },
        intensity = 1,
        size = 1
      },
      north_position = {
        0,
        0
      },
      south_position = {
        0,
        0
      },
      west_position = {
        0,
        0
      }
    },
    {
      animation = {
        blend_mode = "additive",
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
        frame_count = 1,
        height = 43,
        priority = "high",
        shift = {
          0.03125,
          0.640625
        },
        width = 60
      },
      east_position = {
        0,
        0
      },
      effect = "flicker",
      north_position = {
        0,
        0
      },
      south_position = {
        0,
        0
      },
      west_position = {
        0,
        0
      }
    },
    {
      animation = {
        axially_symmetrical = false,
        blend_mode = "additive",
        direction_count = 1,
        filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working.png",
        frame_count = 1,
        height = 75,
        hr_version = {
          axially_symmetrical = false,
          blend_mode = "additive",
          direction_count = 1,
          filename = "__base__/graphics/entity/steel-furnace/hr-steel-furnace-working.png",
          frame_count = 1,
          height = 149,
          line_length = 8,
          priority = "high",
          scale = 0.5,
          shift = {
            0,
            -0.1328125
          },
          width = 130
        },
        line_length = 8,
        priority = "high",
        shift = {
          0,
          -0.140625
        },
        width = 64
      },
      east_position = {
        0,
        0
      },
      effect = "flicker",
      north_position = {
        0,
        0
      },
      south_position = {
        0,
        0
      },
      west_position = {
        0,
        0
      }
    }
  }
}

data.raw["technology"]["advanced-material-processing"] = {
  effects = {
    {
      recipe = "steel-furnace",
      type = "unlock-recipe"
    }
  },
  icon = "__base__/graphics/technology/advanced-material-processing.png",
  icon_size = 128,
  name = "advanced-material-processing",
  order = "c-c-a",
  prerequisites = {
    "steel-processing"
  },
  type = "technology",
  unit = {
    count = 75,
    ingredients = {
      {
        "science-pack-1",
        1
      },
      {
        "science-pack-2",
        1
      }
    },
    time = 30
  }
}
