local Creator = loadstring(game:HttpGet(
    "https://pastebin.com/raw/0fSnvfGt"
))()

--==================================================
-- ENTITY CONFIGURATION
--==================================================

local entity = Creator.createEntity({
    CustomName = "Itzzgabb",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Itzzzgabbbb/main/ITZSGABB.rbxm",

    Speed = 550,
    DelayTime = 3,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 40,

    BreakLights = false,
    BackwardsMovement = false,

    FlickerLights = {
        false,
        1,
    },

    Cycles = {
        Min = 4,
        Max = 7,
        WaitTime = 0.3,
    },

    CamShake = {
        true,
        {17, 25, 0.3, 1.3},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://119922680512054",
            Image2 = "rbxassetid://119922680512054",
            Shake = true,

            Sound1 = {
                116282238939992,
                {Volume = 0.5},
            },

            Sound2 = {
                116282238939992,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(118, 118, 118),
            },

            Tease = {
                false,
                Min = 1,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Itzzgabb...",
    },
})

--==================================================
-- DEBUG CALLBACKS
--==================================================

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Itzzgabb spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Itzzgabb despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Itzzgabb started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Itzzgabb finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Itzzgabb entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Itzzgabb:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player died to Itzzgabb.")
end

--==================================================
-- RUN ENTITY
--==================================================

Creator.runEntity(entity)
