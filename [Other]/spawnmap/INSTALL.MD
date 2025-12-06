## Head to Multichar resource and replace the following

## from line 5

```lua
AnimationTypes = {
        Sunbathe = {
            {
                Dict = 'amb@prop_human_seat_sunlounger@male@idle_a',
                Anim = 'idle_a',
            },
            {
                Dict = 'amb@prop_human_seat_sunlounger@male@idle_a',
                Anim = 'idle_b',
            },
            {
                Dict = 'amb@prop_human_seat_sunlounger@male@idle_a',
                Anim = 'idle_c',
            },
            {
                Dict = 'amb@prop_human_seat_sunlounger@male@idle_a',
                Anim = 'idle_d',
            },
        },
        Standing = {
            {
                Dict = 'anim@amb@nightclub@peds@',
                Anim = 'rcmme_amanda1_stand_loop_cop',
            },
            --[[             {
                Dict = 'amb@world_human_leaning@male@wall@back@foot_up@idle_a',
                Anim = 'idle_a'
            }, ]]
            {
                Dict = 'amb@world_human_leaning@female@wall@back@hand_up@idle_a',
                Anim = 'idle_a',
            },
            {
                Dict = 'rcmbarry',
                Anim = 'base',
            },
        },
        Sitting = {
            {
                Dict = 'anim@amb@business@bgen@bgen_no_work@',
                Anim = 'sit_phone_phoneputdown_idle_nowork',
            },
            {
                Dict = 'rcm_barry3',
                Anim = 'barry_3_sit_loop',
            },
        },
        SitChair = {
            {
                Dict = 'timetable@reunited@ig_10',
                Anim = 'base_amanda',
            },
            {
                Dict = 'timetable@ron@ig_5_p3',
                Anim = 'ig_5_p3_base',
            },
            {
                Dict = 'timetable@ron@ig_3_couch',
                Anim = 'base',
            },
        },
        Situp = {
            {
                Dict = 'amb@world_human_sit_ups@male@idle_a',
                Anim = 'idle_a',
            },
        },
        Gardening = {
            {
                Dict = 'amb@world_human_gardener_plant@male@base',
                Anim = 'base',
            },
        },
        Leaning = {
            {
                Dict = 'amb@prop_human_bum_shopping_cart@male@idle_a',
                Anim = 'idle_a',
            },
        },
        LayingDown = {
            {
                Dict = 'amb@world_human_sunbathe@male@back@base',
                Anim = 'base',
            },
        },
        TPose = {
            {
                Dict = 'mp_sleep',
                Anim = 'bind_pose_180',
            },
        },
        Gardening = {
            {
                Dict = 'amb@world_human_gardener_plant@male@base',
                Anim = 'base',
            },
        },
    },
    Peds = {
        { -- Pool Table Lean
            Model = `mp_m_freemode_01`,
            Coords = vector4(-131.9777, -181.8936, 92.702346, 11.44804),
            AnimationType = 'Leaning',
            HoverConfig = {
                left = 30.3,
                top = 39.0,
                width = 4.0,
                height = 30.0,
            },
        },
        { -- Sitting at Desk
            Model = `mp_f_freemode_01`,
            Coords = vector4(-136.9583, -179.9976, 92.714384, 18.220962),
            AnimationType = 'SitChair',
            HoverConfig = {
                left = 50.5,
                top = 41.0,
                width = 4.0,
                height = 30.0,
            },
        },
        { -- Right Seat
            Model = `mp_m_freemode_01`,
            Coords = vector4(-141.1613, -177.9177, 92.765175, 312.8692),
            AnimationType = 'SitChair',
            HoverConfig = {
                left = 81.5, --33
                top = 47.0,
                width = 3.5,
                height = 39.0,
            },
        },
        { -- Left Seat
            Model = `mp_f_freemode_01`,
            Coords = vector4(-140.0065, -178.2564, 92.735365, 13.731354),
            AnimationType = 'SitChair',
            HoverConfig = {
                left = 70.0, --33
                top = 47.0,
                width = 3.0,
                height = 39.0,
            },
        },
    },
    PlayerPedHidden = vector4(-144.885, -162.2572, 93.702461, 31.591716),
    CamCoords = vector3(-138.1748, -168.6813, 93.702461),
    CamRotation = vector3(-3.0, 0.0, 199.0),
    Spotlight = {
        Position = vector3(-1573.655, -561.1305, 116.44842),
        Radius = 50.0,
        Brightness = 0.5,
    },
```


```lua 
Config.MulticharThemes = {
    ["default"] = {
        playerPedHidden = vector4(-144.885, -162.2572, 93.702461, 31.591716),
        camCoords = vector3(-138.1748, -168.6813, 94.702461),
        camRotation = vector3(-3.0, 0.0, 189.0),
        spotlight = {
            position = vector3(-138.1748, -168.6813, -93.702461),
            radius = 50.0,
            brightness = 0.1
        },

        timecycleModifier = "DeadlineNeon01",
        timecycleModifierStrength = 0.7,
        extraTimecycleModifier = "epsilion",
        extraTimecycleModifierStrength = 1.0,
        timeOverride = {
            22, 00, 00
        },
        iplRequired = false,
    },
    ["halloween"] = {
        playerPedHidden = vector4(-1759.578, 4492.4477, 48.451034, 259.39163),
        camCoords = vector3(-1755.666, 4492.725, 48.327453),
        camRotation = vector3(-3.0, 0.0, 255.0),

        timecycleModifier = "glasses_orange",
        extraTimecycleModifierStrength = 1.0,
        timeOverride = {
            21, 45, 00
        },
        iplRequired = "ndrp_spawn", -- ymap name or false
    },
}
```