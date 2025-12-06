Citizen.CreateThread(function()
    -- Configuration for your display vehicle
    local displayVehicles = {
        {
            x = 237.05,
            y = -2026.4,
            z = 19.358051, -- precise height of your stage
            heading = 50.0,
            model = "moonbeam2",
            primaryColor = 89,
            secondaryColor = 111,
            wheelColor = 111,
            plate = "ZERON",
            windowTint = 0,
            interiorColor = 89,
            mods = {
                [0] = 2,
                [1] = 1,
                [2] = 1,
                [3] = 1,
                [4] = 1,
                [6] = 1,
                [7] = 2,
                [10] = 1,
                [23] = 6,
                [27] = 2,
                [28] = 2,
                [29] = 4,
                [30] = 4,
                [31] = 4,
                [32] = 3,
                [33] = 3,
                [34] = 4
            }
        }
    }

    -- Load the model and wait until ready
    local function LoadModel(model)
        local hash = GetHashKey(model)
        RequestModel(hash)
        while not HasModelLoaded(hash) do
            Citizen.Wait(0)
        end
        return hash
    end

    for _, vehData in ipairs(displayVehicles) do
        local modelHash = LoadModel(vehData.model)

        -- Create vehicle exactly at the XYZ
        local vehicle = CreateVehicle(
            modelHash,
            vehData.x,
            vehData.y,
            vehData.z,
            vehData.heading,
            false, -- isNetwork
            false  -- netMissionEntity
        )

        -- Move entity to precise coords (extra safe)
        SetEntityCoordsNoOffset(vehicle, vehData.x, vehData.y, vehData.z, false, false, false)

        -- Appearance settings
        SetVehicleColours(vehicle, vehData.primaryColor, vehData.secondaryColor)
        SetVehicleExtraColours(vehicle, vehData.wheelColor, 0)
        SetVehicleNumberPlateText(vehicle, vehData.plate)
        SetVehicleWindowTint(vehicle, vehData.windowTint)
        SetVehicleInteriorColour(vehicle, vehData.interiorColor)

        -- Mods
        SetVehicleModKit(vehicle, 0)
        for modType, modIndex in pairs(vehData.mods) do
            SetVehicleMod(vehicle, modType, modIndex, false)
        end

        -- Lock and freeze it
        SetVehicleDoorsLocked(vehicle, 2)
        FreezeEntityPosition(vehicle, true)
        SetEntityInvincible(vehicle, true)
        SetVehicleUndriveable(vehicle, true)

        -- Release model from memory
        SetModelAsNoLongerNeeded(modelHash)
    end
end)
