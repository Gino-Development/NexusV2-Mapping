local carModel = "italirsx" --Vehicle Spawn Code Name
local carType = "automobile" --Vehicle types like bike, boat etc
local primaryColorCar = 143 --Get the color codes from pastebin.com/pwHci0xK
local secondaryColorCar = 143

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    print('Thanks for Purchasing the MLO , Hope you have a great day - Tanaya/Souda')
    Wait(10)
    local vehicle = CreateVehicleServerSetter(GetHashKey(carModel), carType, 1406.652, -757.654, 71.357, 18.41) --Don't Change The Coords
    SetEntityHeading(vehicle, 18.41) -- Don't change heading
    FreezeEntityPosition(vehicle, true)
    local currentRotation = GetEntityRotation(vehicle)
    SetEntityRotation(vehicle, currentRotation[1]-40, currentRotation[2], currentRotation[3], 2, false)
    SetVehicleColours(vehicle, primaryColorCar, secondaryColorCar)
end)