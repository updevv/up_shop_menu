Config = {}

Config.LB_Tablet = false

Config.Shops = {
    {
        name = "ammunation",
        label = "Ammunation",
        type = "ammunation",
        posShop = vec3(809.7742, -2157.7380, 29.6190),
        ped = {
            active = true,
            pos = vec4(808.9395, -2159.1868, 29.6190, 344.1995),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {}
    },
    {
        name = "ltd_ballas",
        label = "magasin ballas",
        type = "ltd",
        posShop = vec3(-49.0113, -1754.1106, 29.4216),
        ped = {
            active = true,
            pos = vec4(-47.6108, -1752.6841, 29.4254, 139.7001),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            sprite = 52,
            color = 2
        },
        content = {}
    },
    {
        name = "247_strawberry",
        label = "247 Strawberry",
        type = "247",
        posShop = vec3(26.0044, -1347.3347, 29.4968),
        ped = {
            active = true,
            pos = vec4(24.1603, -1347.3606, 29.4968, 269.5883),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {
            {categorie = "food", name = "bread", price = 0, label = "Bread"}
        }
    },
    {
        name = "el_rancho",
        label = "Robs El Rancho",
        type = "robs",
        posShop = vec3(1135.8693, -982.1882, 46.4158),
        ped = {
            active = true,
            pos = vec4(1134.1055, -982.5098, 46.4159, 276.3974),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            color = 2,
            active = true,
            sprite = 52
        },
        content = {
            {label = "Discord", categorie = "item", name = "test", price = 1000}
        }
    },
    {
        name = "messa",
        label = "AmmuNation Messa",
        type = "ammunation",
        posShop = vec3(842.0289, -1033.9913, 28.1949),
        ped = {
            active = true,
            pos = vec4(841.0795, -1035.3591, 28.1949, 1.9414),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {}
    },
    {
        name = "elgin",
        label = "AmmuNation Elgin",
        type = "ammunation",
        posShop = vec3(22.6441, -1106.9624, 29.7970),
        ped = {
            active = true,
            pos = vec4(23.8664, -1105.8572, 29.7970, 154.4311),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {
            {categorie = "firearm", name = "weapon_pistol", price = 10, ppa = true, label = "Pistolet"}
        }
    },
    {
        name = "vespucci",
        label = "Ammunation Vespucci",
        type = "ammunation",
        posShop = vec3(-661.7493, -934.9908, 21.8292),
        ped = {
            active = true,
            pos = vec4(-660.9899, -933.5237, 21.8292, 179.5202),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {}
    },
    {
        name = "ltd_job",
        label = "LTD Jobs",
        type = "ltd",
        posShop = vec3(-710.3431, -911.9531, 19.2185),
        ped = {
            active = true,
            pos = vec4(-710.1647, -910.1547, 19.2200, 180.0596),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "san_andreas",
        label = "Robs San Andreas",
        type = "robs",
        posShop = vec3(-1222.7142, -907.1329, 12.3264),
        ped = {
            active = true,
            pos = vec4(-1222.0121, -908.3811, 12.3264, 28.0767),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "247_prosperity",
        label = "247 Prosperity",
        type = "robs",
        posShop = vec3(-1487.3447, -379.1233, 40.1634),
        ped = {
            active = true,
            pos = vec4(-1486.2661, -377.9860, 40.1634, 127.8761),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "power",
        label = "Ammu Power",
        type = "ammunation",
        posShop = vec3(252.4255, -50.6694, 69.9410),
        ped = {
            active = true,
            pos = vec4(253.3749, -51.7552, 69.9410, 65.6780),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {}
    },
    {
        name = "mirror_park",
        label = "Mirror Park",
        type = "ltd",
        posShop = vec3(1160.2159, -321.8185, 69.2081),
        ped = {
            active = true,
            pos = vec4(1160.0895, -319.9914, 69.2095, 191.8830),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "palomino",
        label = "Palomino",
        type = "ammunation",
        posShop = vec3(2567.2683, 293.8842, 108.7348),
        ped = {
            active = true,
            pos = vec4(2566.6479, 292.6130, 108.7349, 350.1033),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {}
    },
    {
        name = "power_st",
        label = "Power St",
        type = "247",
        posShop = vec3(374.0309, 325.9995, 103.5661),
        ped = {
            active = true,
            pos = vec4(372.6114, 326.3839, 103.5661, 249.7154),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "mountain_v",
        label = "Mountain V",
        type = "ammunation",
        posShop = vec3(1693.6221, 3760.4067, 34.7053),
        ped = {
            active = true,
            pos = vec4(1693.2131, 3761.9880, 34.7053, 230.4643),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {}
    },
    {
        name = "route_66",
        label = "Route 66",
        type = "ammunation",
        posShop = vec3(-1117.7067, 2699.1455, 18.5542),
        ped = {
            active = true,
            pos = vec4(-1118.0140, 2700.6965, 18.5541, 220.8490),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {}
    },
    {
        name = "great_ocean",
        label = "Great Ocean",
        type = "ammunation",
        posShop = vec3(-330.2749, 6084.4639, 31.4548),
        ped = {
            active = true,
            pos = vec4(-330.6636, 6085.9082, 31.4548, 220.3899),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {}
    },
    {
        name = "banham_c",
        label = "Banham_c",
        type = "ltd",
        posShop = vec3(-1824.0740, 792.7587, 138.1698),
        ped = {
            active = true,
            pos = vec4(-1825.5428, 794.0931, 138.1838, 229.6415),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "robs",
        label = "Robs",
        type = "robs",
        posShop = vec3(-2967.8440, 390.9164, 15.0433),
        ped = {
            active = true,
            pos = vec4(-2966.4312, 390.8613, 15.0433, 73.9045),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "ineseno",
        label = "Ineseno",
        type = "247",
        posShop = vec3(-3039.5410, 585.9446, 7.9087),
        ped = {
            active = true,
            pos = vec4(-3038.9819, 584.5000, 7.9087, 13.1209),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "barbareno",
        label = "Barbareno",
        type = "247",
        posShop = vec3(-3242.2319, 1001.4442, 12.8305),
        ped = {
            active = true,
            pos = vec4(-3242.2666, 999.9949, 12.8305, 359.0739),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "harmony",
        label = "Harmony",
        type = "247",
        posShop = vec3(547.6152, 2671.0281, 42.1563),
        ped = {
            active = true,
            pos = vec4(549.0276, 2671.3447, 42.1563, 100.0414),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "route_68",
        label = "Route 68",
        type = "robs",
        posShop = vec3(1166.0620, 2709.3499, 38.1577),
        ped = {
            active = true,
            pos = vec4(1165.8721, 2710.8013, 38.1577, 176.8969),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "route_13",
        label = "Route 13",
        type = "247",
        posShop = vec3(2678.7458, 3280.7605, 55.2409),
        ped = {
            active = true,
            pos = vec4(2678.1255, 3279.4045, 55.2409, 329.7255),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "alhambra",
        label = "Alhanbra",
        type = "247",
        posShop = vec3(1961.3433, 3740.7454, 32.3435),
        ped = {
            active = true,
            pos = vec4(1960.1075, 3740.0537, 32.3435, 296.4886),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "grapeseed",
        label = "Grapeseed",
        type = "ltd",
        posShop = vec3(1701.7686, 4925.2690, 42.0667),
        ped = {
            active = true,
            pos = vec4(1703.2715, 4924.2349, 42.0681, 61.4446),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "ocean_hwy",
        label = "Ocean Hwy",
        type = "247",
        posShop = vec3(1729.2169, 6414.5488, 35.0370),
        ped = {
            active = true,
            pos = vec4(1727.8361, 6415.2046, 35.0370, 245.6260),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "algonquin",
        label = "Algonquin",
        type = "robs",
        posShop = vec3(1393.2804, 3605.2466, 34.9809),
        ped = {
            active = true,
            pos = vec4(1392.6552, 3606.4629, 34.9809, 200.6469),
            pedName = "mp_m_shopkeep_01"
        },
        blip = {
            active = true,
            color = 2,
            sprite = 52
        },
        content = {}
    },
    {
        name = "great_ocean_hvy",
        label = "Great Ocean Hvy",
        type = "ammunation",
        posShop = vec3(-3172.0615, 1088.2994, 20.8387),
        ped = {
            active = true,
            pos = vec4(-3173.1174, 1089.5873, 20.8387, 245.8763),
            pedName = "s_m_y_ammucity_01"
        },
        blip = {
            active = true,
            color = 75,
            sprite = 313
        },
        content = {}
    }
}
