AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_grenades")
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
    -- [ARC9:GetPhrase("eft_trivia_help") .. "3"] = "Mal0", 
    -- [ARC9:GetPhrase("eft_trivia_arc9") .. "4"] = "Arctic",
}

SWEP.PrintName = "Milkor M32A1 MSGL"

-- SWEP.Class = ARC9:GetPhrase("eft_class_weapon_revol")
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_grenadelauncher") or "Grenade launcher"
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Milkor (Pty) Ltd",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "40x46mm",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"]= "Revolver",
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = "South Africa",
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1983"
}

SWEP.Description = [[M32A1 MSGL 40mm six-shot grenade launcher manufactured by Milkor USA. This grenade launcher uses the well-established principle of a revolver to achieve a high rate of accurate fire that can be quickly aimed at a target.]]

SWEP.Slot = 4
SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl" -- set to something more valid
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_m32a1.mdl"
SWEP.ViewModelFOVBase = 62
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "000"

SWEP.BarrelLength = 36
------------------------- [[[           STATS            ]]] -------------------------
-- default ps12
SWEP.DamageMax = 115/2
SWEP.DamageMin = 99/2
SWEP.PhysBulletMuzzleVelocity = 285 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      28 *2.54/100/0.0254
SWEP.PenetrationDelta = 60/100
SWEP.ArmorPiercing =    60/100
SWEP.RicochetChance =   30/100
SWEP.DamageLookupTable = {
    {   10/0.0254, 
    115/2     },
}


--          Spread
SWEP.Spread = 24.06 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015

--          Recoil
-- touch these

SWEP.Recoil = 0.6 -- general multiplier of main recoil

SWEP.RecoilUp   = 7   -- up recoil
SWEP.RecoilSide = 1.1 -- sideways recoil
SWEP.RecoilRandomUp   = 0.5 -- random up/down
SWEP.RecoilRandomSide = 1   -- random left/right

SWEP.RecoilAutoControl = 3.0 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 3 -- general multiplier for it

SWEP.VisualRecoilUp                   = 3   --   when fullautoing
SWEP.VisualRecoilSide                 = 0.04   --   when fullautoing
SWEP.VisualRecoilRoll = 5 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 15 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = 0.05 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 12, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun

SWEP.RecoilKick = 0.85 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10


--          Heating

SWEP.Overheat = false


--          Firemodes

SWEP.RPM = 134
SWEP.Firemodes = {
    { Mode = 1, PrintName = "Double action", PoseParam = 1  },
    -- { Mode = 1, PrintName = "Single action", PoseParam = 2, EFTSingleAction = true, ManualAction = true, RPM = 300, TriggerDelay = false, TriggerStartFireAnim = false, Spread = 0.005, RecoilKickMult = 0.75 },
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

--          Generic stats

SWEP.Ammo = "smg1_grenade" -- What ammo type this gun uses.
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 0 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = false
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 0
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.425, -4, 0.9),
    Ang = Angle(0, 0, 0),
    ViewModelFOV = 60,
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-1, 0, 8),
        Ang = Angle(0, 0, -145),
    },
    Magnification = 1.1,
}
SWEP.ActivePos = Vector(-0.7, -3.1, -.35)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(0, 20.6,  -15.2)
SWEP.SprintPos = Vector(0.5, -5.1, -13.5)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(24, 22, 3)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(24, -4.28-0.1, -5.23)


--          Third person stuff

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-15.5, 5.5, -3.2),
    Ang = Angle(-7, 0, 180),
    -- TPIKPos = Vector(-5, 5, -4), -- rpg
    TPIKPos = Vector(-18, 3, -4), -- rewolv
    TPIKAng = Angle(-5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 1
SWEP.CamQCA_Mult_ADS = 0.1

SWEP.MuzzleParticle = "muzzleflash_pistol_deagle"
SWEP.AfterShotParticle = "barrel_smoke"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/127x55.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.NoShellEject = true
SWEP.ShellSmoke = false 
SWEP.EjectDelay = 1111111111

SWEP.BulletBones = {
    [1] = "patron_in_weapon_000",
    [2] = "patron_in_weapon_001",
    [3] = "patron_in_weapon_002",
    [4] = "patron_in_weapon_003",
    [5] = "patron_in_weapon_004",
    [6] = "patron_in_weapon_005",
}




------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/fn40/"

SWEP.ShootSound = path .. "fn40gl_fire_close.ogg"
SWEP.ShootSoundIndoor = path .. "fn40gl_fire_indoor_close.ogg"
SWEP.DistantShootSound = path .. "fn40gl_fire_distant.ogg"
SWEP.DistantShootSoundIndoor = path .. "fn40gl_fire_indoor_distant.ogg"

SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables

path = "weapons/darsu_eft/m32/"
SWEP.DryFireSound = path .. "mgl_hammer_release.ogg"

SWEP.EnterSightsSound = ARC9EFT.ADSRifle
SWEP.ExitSightsSound = ARC9EFT.ADSRifleOut



------------------------- [[[           Hooks & functions            ]]] -------------------------


------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "bullet1",
        "bullet2",
        "bullet3",
        "bullet4",
    },
}

SWEP.ShotgunReload = true
-- SWEP.TriggerDelay = true
-- SWEP.TriggerDelayTime = 0.1
-- SWEP.TriggerDelayCancellable = false
-- SWEP.TriggerStartFireAnim = true
SWEP.ShellVelocity = 0
SWEP.NoForceSetLoadedRoundsOnReload = true 
-- SWEP.ManualActionNoLastCycle = false
-- SWEP.ManualActionEjectAnyway = false

local delayedspin
local function spindelay(swep) -- setting nwint not in start of anim but while one before already started
    if delayedspin then return end
    delayedspin = true
    if true then return end
    timer.Simple(0.1, function() -- wah wah
        if IsValid(swep) then
            local getcr = swep:GetNWInt("EFTRevolverCylRot", 0) + 1
            -- if getcr==6 then getcr = 0 end
            delayedspin = nil
            if getcr==6 then return end -- no spins after full cycle
            swep:SetNWInt("EFTRevolverCylRot", getcr)
            
        end
    end)
end

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    if SERVER then print("swep.roundcount", swep.roundcount, "GetNWInt", swep:GetNWInt("EFTRevolverRoundCount","FUCK"), "Actual", swep:Clip1()) end
    local clip = swep:Clip1()
    -- local sa = swep:GetValue("EFTSingleAction")
    
    local cylrot = swep:GetNWInt("EFTRevolverCylRot", 0)
    
    if anim == "inspect" then        
        swep.EFTInspectBool = swep.EFTInspectBool or false
        if IsFirstTimePredicted() then
            swep.EFTInspectBool = !swep.EFTInspectBool
        end
        local inspect = swep.EFTInspectBool

        if !inspect then
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(true) -- accurate or not based on mag type
                net.WriteUInt(math.min(clip , swep:GetMaxClip1())+1, 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())

                return "mag_check__" .. cylrot
            end
        else
            return "look__" .. cylrot
        end
    end
    
    
    if anim == "idle" then   
        if swep.nocylrot then swep.nocylrot = nil end
        if swep.fistful then swep.fistful = nil end
    elseif anim == "ready" or anim == "draw" then   
        anim = "draw"
        timer.Simple(0.1, function() if IsValid(swep) then swep:SetLoadedRounds(swep:Clip1()) end end) -- wah wah
        -- swep:SetNWBool("EFTRevolverRound1Loaded", clip > 5)
        -- swep:SetNWBool("EFTRevolverRound2Loaded", clip > 4)
        -- swep:SetNWBool("EFTRevolverRound3Loaded", clip > 3)
        -- swep:SetNWBool("EFTRevolverRound4Loaded", clip > 2)
        -- swep:SetNWBool("EFTRevolverRound5Loaded", clip > 1)
        -- swep:SetNWBool("EFTRevolverRound6Loaded", clip > 0)
    elseif anim == "fire" then
        anim = "fire"
        spindelay(swep)
    elseif anim == "dryfire" then
        anim = "fire_dry"
        spindelay(swep)
    elseif anim == "reload_start" then  
        swep.roundcount = swep.roundcount or 6
        if clip == 0 or swep:GetValue("EFTForceFastReload") then 
            anim = "sg_reload_start_empty"

            swep:SetClip1(0) -- animation.DumpAmmo unloads LoadedRounds too
            -- swep:SetNWBool("EFTRevolverRound1Loaded", false)
            -- swep:SetNWBool("EFTRevolverRound2Loaded", false)
            -- swep:SetNWBool("EFTRevolverRound3Loaded", false)
            -- swep:SetNWBool("EFTRevolverRound4Loaded", false)
            -- swep:SetNWBool("EFTRevolverRound5Loaded", false)
            -- swep:SetNWBool("EFTRevolverRound6Loaded", false)
        else            
            -- local cunt = (6 - (swep.roundcount - clip)) -- crazy fuck
            -- if clip > 0 and swep.roundcount > 0 and swep.roundcount < 6 and clip != swep.roundcount then -- crazy fuck
            --     cunt = (5-clip) .. "_offset" .. (6 - swep.roundcount) -- crazy fuck
            -- end

            -- local cunt = clip
            -- if clip == 5 then cunt = 5 end
            -- if clip == 4 then cunt = 4 end
            -- if clip == 3 then cunt = 3 end
            -- if clip == 2 then cunt = 2 end
            -- if clip == 1 then cunt = 1 end
            -- local cunt =  6 - (swep.roundcount - clip) 
            -- if clip != swep.roundcount then cunt = clip + clip  - (swep.roundcount - 1) end
            -- anim = "sg_reload_start" .. cunt
            -- anim = "sg_reload_start" .. clip

            local cunt = (6 - (swep.roundcount - clip)) -- crazy fuck
            if clip > 0 and swep.roundcount > 0 and swep.roundcount < 5 and clip != swep.roundcount then -- crazy fuck
                cunt = (6-clip) .. "_offset" .. (6 - swep.roundcount) -- crazy fuck
            end

            anim = "sg_reload_start" .. cunt
        end

        swep.afterreloadstart = true
        -- swep.nextinsert = 0
    elseif anim == "reload_insert" then
        if swep.afterreloadstart then
            swep.roundcount = clip
            swep:SetNWInt("EFTRevolverRoundCount", swep.roundcount)
            swep.afterreloadstart = nil
        end

        -- anim = swep.fistful and "fistful_insert".. (clip+1) or "sg_reload_insert" .. clip
        -- anim = "sg_reload_insert" .. clip + 1
        -- swep.nextinsert = (swep.nextinsert or 0) + 1
        anim = "sg_reload_insert" .. clip
        
        swep:SetNWInt("EFTRevolverCylRot", 0)
        swep.nocylrot = true

        -- if !swep.fistful then
            swep.roundcount = clip + 1
            swep:SetNWInt("EFTRevolverRoundCount", clip + 1)
            swep:SetLoadedRounds(6)
        -- else
        --     swep:SetLoadedRounds(6)
        -- end
    elseif anim == "reload_finish" then
            
        -- swep.nextinsert = 0
        -- anim = swep.fistful and "fistful_end_r" .. clip or "sg_reload_end"
        anim = clip == 6 and "sg_reload_end_last" or "sg_reload_end"
        swep:SetNWInt("EFTRevolverCylRot", 0)
        swep.nocylrot = true
        swep.roundcount = clip
        swep:SetNWInt("EFTRevolverRoundCount", clip)
    end
    
    if !swep.nocylrot then
        -- print(anim .. "__" .. swep:GetNWInt("EFTRevolverCylRot", 0))
        print("want: "..anim .. "__" .. swep:GetNWInt("EFTRevolverCylRot", 0))
        return anim .. "__" .. swep:GetNWInt("EFTRevolverCylRot", 0)
    else
        -- print(anim)
        print("want: "..anim)
        return anim
    end
end


local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
local switchi = { { s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 } }

local magcheck = {
    { s = randspin, t = 0 },
    { s = path .. "rhino_drum_releasebutton.ogg", t = 0.05 },
    { s = path .. "rsh_12_reload_start.ogg", t = 4/24 },
    { s = randspin, t = 35/24 },
    { s = path .. "rsh_12_reload_end.ogg", t = 49/24 },
    { s = randspin, t = 63/24 },
}
local look = {
    { s = randspin, t = 0.05 },
    { s = randspin, t = 23/24 },
    { s = randspin, t = 37/24 },
    { s = randspin, t = 58/24 },
    { s = randspin, t = 67/24 },
}
local cock = {
    { s = randspin, t = 0 },
    { s = path .. "rsh_12_cock.ogg", t = 5/24 },
}

local sg_start1 = {
    { s = randspin, t = 0 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 2/26 },
    { s = path .. "rsh_12_reload_start.ogg", t = 4/26 },
    { s = randspin, t = 21/26 },  
    { s = path .. "rsh_12_shell_out.ogg", t = 43/26 },
    { s = path .. "rsh_12_shell_out.ogg", t = 69/26 },
    { s = path .. "rsh_12_shell_out.ogg", t = 93/26 },
    { s = path .. "rsh_12_shell_out.ogg", t = 117/26 },
    {shelleject = true, att = 2, t = 50/26},
    {shelleject = true, att = 2, t = 75/26},
    {shelleject = true, att = 2, t = 98/26},
    {shelleject = true, att = 2, t = 129/26},
}
local sg_insert1 = {
    { s = randspin, t = 0/28 },
    { s = path .. "rsh_12_ammo_in.ogg", t = 14/28 },
}
local sg_insert2 = {
    { s = path .. "rsh_12_ammo_in.ogg", t = 13/28 },
}
local sg_insert3 = {
    { s = randspin, t = 0/28 },
    { s = path .. "rsh_12_ammo_in.ogg", t = 13/28 },
}
local sg_insert4 = {
    { s = path .. "rsh_12_ammo_in.ogg", t = 12/28 },
}
local sg_end = {
    { s = randspin, t = 6/26 },
    { s = path .. "rsh_12_reload_end.ogg", t = 6/26 },
    { s = randspin, t = 22/26 },
}

local ff_start5 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rsh_12_reload_start.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rsh_12_purge_shells.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
    {shelleject = true, att = 2, t = 1.7},
    {shelleject = true, att = 2, t = 1.75},
    {shelleject = true, att = 2, t = 1.8},
}
local ff_start4 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rsh_12_reload_start.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rsh_12_purge_shells.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
    {shelleject = true, att = 2, t = 1.7},
    {shelleject = true, att = 2, t = 1.75},
}
local ff_start3 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rsh_12_reload_start.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rsh_12_purge_shells.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
    {shelleject = true, att = 2, t = 1.7},
}
local ff_start2 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rsh_12_reload_start.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rsh_12_purge_shells.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
    {shelleject = true, att = 2, t = 1.65},
}
local ff_start1 = {
    { s = randspin, t = 2/26 },  
    { s = path .. "rhino_drum_releasebutton.ogg", t = 9/26 },
    { s = path .. "rsh_12_reload_start.ogg", t = 12/26 },
    { s = randspin, t = 22/26 },  
    { s = path .. "rhino_drum_extractor.ogg", t = 18/26 },
    { s = path .. "rsh_12_purge_shells.ogg", t = 27/26 },
    { s = randspin, t = 36/26 },  
    { s = "arc9_eft_shared/weap_magin_sbrosnik.ogg", t = 49/26 },
    {shelleject = true, att = 2, t = 1.6},
}
local ff_insert1 = {
    { s = randspin, t = 0/30 },
    { s = path .. "rsh_12_ammo_in.ogg", t = 17/30 },
}
local ff_insert2 = {
    { s = path .. "rsh_12_ammo_in.ogg", t = 16/30 },
}
local ff_insert3 = {
    { s = randspin, t = 0/30 },
    { s = path .. "rsh_12_ammo_in.ogg", t = 14/30 },
}
local ff_insert4 = {
    { s = path .. "rsh_12_ammo_in.ogg", t = 13/30 },
}
local ff_insert5 = {
    { s = path .. "rsh_12_ammo_in.ogg", t = 5/30 },
    { s = randspin, t = 9/30 },
}
local ff_end1 = {
    { s = randspin, t = 3/26 },
    { s = path .. "rsh_12_reload_end.ogg", t = 24/26 },
    { s = randspin, t = 41/26 },
}
local ff_end5 = {
    { s = path .. "rsh_12_reload_end.ogg", t = 6/26 },
    { s = randspin, t = 24/26 },
}

local drawa = { { s = "arc9_eft_shared/pm_draw.ogg", t = 0 } }
local holstera = { { s = "arc9_eft_shared/pm_holster.ogg", t = 0 } }
local fireda = { { s = path .. "rhino_hammer_release.ogg", t = 0.06 } }
local firedry = { { s = path .. "rhino_hammer_release.ogg", t = 0.17 } }

SWEP.Animations = {
    ["idle"] = { Source = "idle__0" },
    ["idle__0"] = { Source = "idle__0" },
    ["idle__1"] = { Source = "idle__1" },
    ["idle__2"] = { Source = "idle__2" },
    ["idle__3"] = { Source = "idle__3" },
    ["idle__4"] = { Source = "idle__4" },
    ["idle__5"] = { Source = "idle__5" },

    ["draw"] = { Source = "draw__0", EventTable = drawa },
    ["holster"] = { Source = "holster__0", EventTable = holstera },

    ["draw__0"] = { Source = "draw__0", EventTable = drawa },
    ["draw__1"] = { Source = "draw__1", EventTable = drawa },
    ["draw__2"] = { Source = "draw__2", EventTable = drawa },
    ["draw__3"] = { Source = "draw__3", EventTable = drawa },
    ["draw__4"] = { Source = "draw__4", EventTable = drawa },
    ["draw__5"] = { Source = "draw__5", EventTable = drawa },

    ["holster__0"] = { Source = "holster__0", EventTable = holstera },
    ["holster__1"] = { Source = "holster__1", EventTable = holstera },
    ["holster__2"] = { Source = "holster__2", EventTable = holstera },
    ["holster__3"] = { Source = "holster__3", EventTable = holstera },
    ["holster__4"] = { Source = "holster__4", EventTable = holstera },
    ["holster__5"] = { Source = "holster__5", EventTable = holstera },


    ["fire__0"] = { Source = "fire__0", EventTable = fireda },
    ["fire__1"] = { Source = "fire__1", EventTable = fireda },
    ["fire__2"] = { Source = "fire__2", EventTable = fireda },
    ["fire__3"] = { Source = "fire__3", EventTable = fireda },
    ["fire__4"] = { Source = "fire__4", EventTable = fireda },
    ["fire__5"] = { Source = "fire__5", EventTable = fireda },

    ["fire_dry__0"] = { Source = "fire__0", EventTable = firedry },
    ["fire_dry__1"] = { Source = "fire__1", EventTable = firedry },
    ["fire_dry__2"] = { Source = "fire__2", EventTable = firedry },
    ["fire_dry__3"] = { Source = "fire__3", EventTable = firedry },
    ["fire_dry__4"] = { Source = "fire__4", EventTable = firedry },
    ["fire_dry__5"] = { Source = "fire__5", EventTable = firedry },

    ["sg_reload_start1__0"] = { Source = "sg_reload_start1__0", EventTable = sg_start1 },
    ["sg_reload_start1__1"] = { Source = "sg_reload_start1__1", EventTable = sg_start1 },
    ["sg_reload_start1__2"] = { Source = "sg_reload_start1__2", EventTable = sg_start1 },
    ["sg_reload_start1__3"] = { Source = "sg_reload_start1__3", EventTable = sg_start1 },
    ["sg_reload_start1__4"] = { Source = "sg_reload_start1__4", EventTable = sg_start1 },
    ["sg_reload_start1__5"] = { Source = "sg_reload_start1__5", EventTable = sg_start1 },
    ["sg_reload_start2__0"] = { Source = "sg_reload_start2__0", EventTable = sg_start1 },
    ["sg_reload_start2__1"] = { Source = "sg_reload_start2__1", EventTable = sg_start1 },
    ["sg_reload_start2__2"] = { Source = "sg_reload_start2__2", EventTable = sg_start1 },
    ["sg_reload_start2__3"] = { Source = "sg_reload_start2__3", EventTable = sg_start1 },
    ["sg_reload_start2__4"] = { Source = "sg_reload_start2__4", EventTable = sg_start1 },
    ["sg_reload_start2__5"] = { Source = "sg_reload_start2__5", EventTable = sg_start1 },
    ["sg_reload_start3__0"] = { Source = "sg_reload_start3__0", EventTable = sg_start1 },
    ["sg_reload_start3__1"] = { Source = "sg_reload_start3__1", EventTable = sg_start1 },
    ["sg_reload_start3__2"] = { Source = "sg_reload_start3__2", EventTable = sg_start1 },
    ["sg_reload_start3__3"] = { Source = "sg_reload_start3__3", EventTable = sg_start1 },
    ["sg_reload_start3__4"] = { Source = "sg_reload_start3__4", EventTable = sg_start1 },
    ["sg_reload_start3__5"] = { Source = "sg_reload_start3__5", EventTable = sg_start1 },
    ["sg_reload_start4__0"] = { Source = "sg_reload_start4__0", EventTable = sg_start1 },
    ["sg_reload_start4__1"] = { Source = "sg_reload_start4__1", EventTable = sg_start1 },
    ["sg_reload_start4__2"] = { Source = "sg_reload_start4__2", EventTable = sg_start1 },
    ["sg_reload_start4__3"] = { Source = "sg_reload_start4__3", EventTable = sg_start1 },
    ["sg_reload_start4__4"] = { Source = "sg_reload_start4__4", EventTable = sg_start1 },
    ["sg_reload_start4__5"] = { Source = "sg_reload_start4__5", EventTable = sg_start1 },
    ["sg_reload_start5__0"] = { Source = "sg_reload_start5__0", EventTable = sg_start1 },
    ["sg_reload_start5__1"] = { Source = "sg_reload_start5__1", EventTable = sg_start1 },
    ["sg_reload_start5__2"] = { Source = "sg_reload_start5__2", EventTable = sg_start1 },
    ["sg_reload_start5__3"] = { Source = "sg_reload_start5__3", EventTable = sg_start1 },
    ["sg_reload_start5__4"] = { Source = "sg_reload_start5__4", EventTable = sg_start1 },
    ["sg_reload_start5__5"] = { Source = "sg_reload_start5__5", EventTable = sg_start1 },
    ["sg_reload_start6__0"] = { Source = "sg_reload_start6__0", EventTable = sg_start1 },
    ["sg_reload_start6__1"] = { Source = "sg_reload_start6__1", EventTable = sg_start1 },
    ["sg_reload_start6__2"] = { Source = "sg_reload_start6__2", EventTable = sg_start1 },
    ["sg_reload_start6__3"] = { Source = "sg_reload_start6__3", EventTable = sg_start1 },
    ["sg_reload_start6__4"] = { Source = "sg_reload_start6__4", EventTable = sg_start1 },
    ["sg_reload_start6__5"] = { Source = "sg_reload_start6__5", EventTable = sg_start1 },
    ["sg_reload_start4_offset1__0"] = { Source = "sg_reload_start4_offset1__0", EventTable = sg_start1 },
    ["sg_reload_start4_offset1__1"] = { Source = "sg_reload_start4_offset1__1", EventTable = sg_start1 },
    ["sg_reload_start4_offset1__2"] = { Source = "sg_reload_start4_offset1__2", EventTable = sg_start1 },
    ["sg_reload_start4_offset1__3"] = { Source = "sg_reload_start4_offset1__3", EventTable = sg_start1 },
    ["sg_reload_start4_offset1__4"] = { Source = "sg_reload_start4_offset1__4", EventTable = sg_start1 },
    ["sg_reload_start4_offset1__5"] = { Source = "sg_reload_start4_offset1__5", EventTable = sg_start1 },

    ["sg_reload_start4_offset2__1"] = { Source = "sg_reload_start4_offset2__1", EventTable = sg_start1 },
    ["sg_reload_start4_offset2__2"] = { Source = "sg_reload_start4_offset2__2", EventTable = sg_start1 },
    ["sg_reload_start4_offset2__3"] = { Source = "sg_reload_start4_offset2__3", EventTable = sg_start1 },
    ["sg_reload_start4_offset2__4"] = { Source = "sg_reload_start4_offset2__4", EventTable = sg_start1 },
    ["sg_reload_start4_offset2__5"] = { Source = "sg_reload_start4_offset2__5", EventTable = sg_start1 },

    ["sg_reload_start4_offset3__0"] = { Source = "sg_reload_start4_offset3__0", EventTable = sg_start1 },
    ["sg_reload_start4_offset3__1"] = { Source = "sg_reload_start4_offset3__1", EventTable = sg_start1 },
    ["sg_reload_start4_offset3__2"] = { Source = "sg_reload_start4_offset3__2", EventTable = sg_start1 },
    ["sg_reload_start4_offset3__3"] = { Source = "sg_reload_start4_offset3__3", EventTable = sg_start1 },
    ["sg_reload_start4_offset3__4"] = { Source = "sg_reload_start4_offset3__4", EventTable = sg_start1 },
    ["sg_reload_start4_offset3__5"] = { Source = "sg_reload_start4_offset3__5", EventTable = sg_start1 },

    ["sg_reload_start4_offset4__0"] = { Source = "sg_reload_start4_offset4__0", EventTable = sg_start1 },
    ["sg_reload_start4_offset4__1"] = { Source = "sg_reload_start4_offset4__1", EventTable = sg_start1 },
    ["sg_reload_start4_offset4__2"] = { Source = "sg_reload_start4_offset4__2", EventTable = sg_start1 },
    ["sg_reload_start4_offset4__3"] = { Source = "sg_reload_start4_offset4__3", EventTable = sg_start1 },
    ["sg_reload_start4_offset4__4"] = { Source = "sg_reload_start4_offset4__4", EventTable = sg_start1 },
    ["sg_reload_start4_offset4__5"] = { Source = "sg_reload_start4_offset4__5", EventTable = sg_start1 },

    ["sg_reload_start3_offset1__0"] = { Source = "sg_reload_start3_offset1__0", EventTable = sg_start1 },
    ["sg_reload_start3_offset1__1"] = { Source = "sg_reload_start3_offset1__1", EventTable = sg_start1 },
    ["sg_reload_start3_offset1__2"] = { Source = "sg_reload_start3_offset1__2", EventTable = sg_start1 },
    ["sg_reload_start3_offset1__3"] = { Source = "sg_reload_start3_offset1__3", EventTable = sg_start1 },
    ["sg_reload_start3_offset1__4"] = { Source = "sg_reload_start3_offset1__4", EventTable = sg_start1 },
    ["sg_reload_start3_offset1__5"] = { Source = "sg_reload_start3_offset1__5", EventTable = sg_start1 },

    ["sg_reload_start3_offset2__0"] = { Source = "sg_reload_start3_offset2__0", EventTable = sg_start1 },
    ["sg_reload_start3_offset2__1"] = { Source = "sg_reload_start3_offset2__1", EventTable = sg_start1 },
    ["sg_reload_start3_offset2__2"] = { Source = "sg_reload_start3_offset2__2", EventTable = sg_start1 },
    ["sg_reload_start3_offset2__3"] = { Source = "sg_reload_start3_offset2__3", EventTable = sg_start1 },
    ["sg_reload_start3_offset2__4"] = { Source = "sg_reload_start3_offset2__4", EventTable = sg_start1 },
    ["sg_reload_start3_offset2__5"] = { Source = "sg_reload_start3_offset2__5", EventTable = sg_start1 },

    ["sg_reload_start2_offset1__0"] = { Source = "sg_reload_start2_offset1__0", EventTable = sg_start1 },
    ["sg_reload_start2_offset1__1"] = { Source = "sg_reload_start2_offset1__1", EventTable = sg_start1 },
    ["sg_reload_start2_offset1__2"] = { Source = "sg_reload_start2_offset1__2", EventTable = sg_start1 },
    ["sg_reload_start2_offset1__3"] = { Source = "sg_reload_start2_offset1__3", EventTable = sg_start1 },
    ["sg_reload_start2_offset1__4"] = { Source = "sg_reload_start2_offset1__4", EventTable = sg_start1 },
    ["sg_reload_start2_offset1__5"] = { Source = "sg_reload_start2_offset1__5", EventTable = sg_start1 },

    ["sg_reload_start2_offset2__0"] = { Source = "sg_reload_start2_offset2__0", EventTable = sg_start1 },
    ["sg_reload_start2_offset2__1"] = { Source = "sg_reload_start2_offset2__1", EventTable = sg_start1 },
    ["sg_reload_start2_offset2__2"] = { Source = "sg_reload_start2_offset2__2", EventTable = sg_start1 },
    ["sg_reload_start2_offset2__3"] = { Source = "sg_reload_start2_offset2__3", EventTable = sg_start1 },
    ["sg_reload_start2_offset2__4"] = { Source = "sg_reload_start2_offset2__4", EventTable = sg_start1 },
    ["sg_reload_start2_offset2__5"] = { Source = "sg_reload_start2_offset2__5", EventTable = sg_start1 },

    ["sg_reload_start3_offset3__0"] = { Source = "sg_reload_start3_offset3__0", EventTable = sg_start1 },
    ["sg_reload_start3_offset3__1"] = { Source = "sg_reload_start3_offset3__1", EventTable = sg_start1 },
    ["sg_reload_start3_offset3__2"] = { Source = "sg_reload_start3_offset3__2", EventTable = sg_start1 },
    ["sg_reload_start3_offset3__3"] = { Source = "sg_reload_start3_offset3__3", EventTable = sg_start1 },
    ["sg_reload_start3_offset3__4"] = { Source = "sg_reload_start3_offset3__4", EventTable = sg_start1 },
    ["sg_reload_start3_offset3__5"] = { Source = "sg_reload_start3_offset3__5", EventTable = sg_start1 },

    ["sg_reload_start1_offset2__0"] = { Source = "sg_reload_start1_offset2__0", EventTable = sg_start1 },
    ["sg_reload_start1_offset2__1"] = { Source = "sg_reload_start1_offset2__1", EventTable = sg_start1 },
    ["sg_reload_start1_offset2__2"] = { Source = "sg_reload_start1_offset2__2", EventTable = sg_start1 },
    ["sg_reload_start1_offset2__3"] = { Source = "sg_reload_start1_offset2__3", EventTable = sg_start1 },
    ["sg_reload_start1_offset2__4"] = { Source = "sg_reload_start1_offset2__4", EventTable = sg_start1 },
    ["sg_reload_start1_offset2__5"] = { Source = "sg_reload_start1_offset2__5", EventTable = sg_start1 },

    ["sg_reload_insert0"] = { Source = "sg_reload_insert1", EventTable = sg_insert1 },
    ["sg_reload_insert1"] = { Source = "sg_reload_insert2", EventTable = sg_insert2 },
    ["sg_reload_insert2"] = { Source = "sg_reload_insert3", EventTable = sg_insert3 },
    ["sg_reload_insert3"] = { Source = "sg_reload_insert4", EventTable = sg_insert4 },
    ["sg_reload_insert4"] = { Source = "sg_reload_insert5", EventTable = sg_insert4 },
    ["sg_reload_insert5"] = { Source = "sg_reload_insert6", EventTable = sg_insert4 },

    -- ["sg_reload_insert1"] = { Source = "sg_reload_insert6", EventTable = sg_insert1 },
    -- ["sg_reload_insert2"] = { Source = "sg_reload_insert1", EventTable = sg_insert2 },
    -- ["sg_reload_insert3"] = { Source = "sg_reload_insert2", EventTable = sg_insert3 },
    -- ["sg_reload_insert4"] = { Source = "sg_reload_insert3", EventTable = sg_insert4 },
    -- ["sg_reload_insert5"] = { Source = "sg_reload_insert4", EventTable = sg_insert4 },
    -- ["sg_reload_insert6"] = { Source = "sg_reload_insert5", EventTable = sg_insert4 },

    -- ["sg_reload_insert1"] = { Source = "sg_reload_insert6", EventTable = sg_insert1 },
    -- ["sg_reload_insert2"] = { Source = "sg_reload_insert5", EventTable = sg_insert2 },
    -- ["sg_reload_insert3"] = { Source = "sg_reload_insert4", EventTable = sg_insert3 },
    -- ["sg_reload_insert4"] = { Source = "sg_reload_insert3", EventTable = sg_insert4 },
    -- ["sg_reload_insert5"] = { Source = "sg_reload_insert2", EventTable = sg_insert4 },
    -- ["sg_reload_insert6"] = { Source = "sg_reload_insert1", EventTable = sg_insert4 },
    
    -- ["sg_reload_insert1"] = { Source = "sg_reload_insert6", EventTable = sg_insert1 },
    -- ["sg_reload_insert2"] = { Source = "sg_reload_insert5", EventTable = sg_insert2 },
    -- ["sg_reload_insert3"] = { Source = "sg_reload_insert4", EventTable = sg_insert3 },
    -- ["sg_reload_insert4"] = { Source = "sg_reload_insert3", EventTable = sg_insert4 },
    -- ["sg_reload_insert5"] = { Source = "sg_reload_insert2", EventTable = sg_insert4 },
    -- ["sg_reload_insert6"] = { Source = "sg_reload_insert1", EventTable = sg_insert4 },

    ["sg_reload_end"] = { Source = "sg_reload_end", EventTable = sg_end },
    ["sg_reload_end_last"] = { Source = "sg_reload_end_last", EventTable = sg_end },

    ["sg_reload_start_empty__0"] = { Source = "sg_reload_start_empty__0", EventTable = ff_start1, NoMagSwap = true },
    ["sg_reload_start_empty__1"] = { Source = "sg_reload_start_empty__1", EventTable = ff_start1, NoMagSwap = true },
    ["sg_reload_start_empty__2"] = { Source = "sg_reload_start_empty__2", EventTable = ff_start1, NoMagSwap = true },
    ["sg_reload_start_empty__3"] = { Source = "sg_reload_start_empty__3", EventTable = ff_start1, NoMagSwap = true },
    ["sg_reload_start_empty__4"] = { Source = "sg_reload_start_empty__4", EventTable = ff_start1, NoMagSwap = true },
    ["sg_reload_start_empty__5"] = { Source = "sg_reload_start_empty__5", EventTable = ff_start1, NoMagSwap = true },

    -- ["fistful_start1__0"] = { Source = "fistful_start__0", EventTable = ff_start1, NoMagSwap = true },
    -- ["fistful_start1__1"] = { Source = "fistful_start__1", EventTable = ff_start1, NoMagSwap = true },
    -- ["fistful_start1__2"] = { Source = "fistful_start__2", EventTable = ff_start1, NoMagSwap = true },
    -- ["fistful_start1__3"] = { Source = "fistful_start__3", EventTable = ff_start1, NoMagSwap = true },
    -- ["fistful_start1__4"] = { Source = "fistful_start__4", EventTable = ff_start1, NoMagSwap = true },
    -- ["fistful_start2__0"] = { Source = "fistful_start__0", EventTable = ff_start2, NoMagSwap = true },
    -- ["fistful_start2__1"] = { Source = "fistful_start__1", EventTable = ff_start2, NoMagSwap = true },
    -- ["fistful_start2__2"] = { Source = "fistful_start__2", EventTable = ff_start2, NoMagSwap = true },
    -- ["fistful_start2__3"] = { Source = "fistful_start__3", EventTable = ff_start2, NoMagSwap = true },
    -- ["fistful_start2__4"] = { Source = "fistful_start__4", EventTable = ff_start2, NoMagSwap = true },
    -- ["fistful_start3__0"] = { Source = "fistful_start__0", EventTable = ff_start3, NoMagSwap = true },
    -- ["fistful_start3__1"] = { Source = "fistful_start__1", EventTable = ff_start3, NoMagSwap = true },
    -- ["fistful_start3__2"] = { Source = "fistful_start__2", EventTable = ff_start3, NoMagSwap = true },
    -- ["fistful_start3__3"] = { Source = "fistful_start__3", EventTable = ff_start3, NoMagSwap = true },
    -- ["fistful_start3__4"] = { Source = "fistful_start__4", EventTable = ff_start3, NoMagSwap = true },
    -- ["fistful_start4__0"] = { Source = "fistful_start__0", EventTable = ff_start4, NoMagSwap = true },
    -- ["fistful_start4__1"] = { Source = "fistful_start__1", EventTable = ff_start4, NoMagSwap = true },
    -- ["fistful_start4__2"] = { Source = "fistful_start__2", EventTable = ff_start4, NoMagSwap = true },
    -- ["fistful_start4__3"] = { Source = "fistful_start__3", EventTable = ff_start4, NoMagSwap = true },
    -- ["fistful_start4__4"] = { Source = "fistful_start__4", EventTable = ff_start4, NoMagSwap = true },
    -- ["fistful_start5__0"] = { Source = "fistful_start__0", EventTable = ff_start5, NoMagSwap = true },
    -- ["fistful_start5__1"] = { Source = "fistful_start__1", EventTable = ff_start5, NoMagSwap = true },
    -- ["fistful_start5__2"] = { Source = "fistful_start__2", EventTable = ff_start5, NoMagSwap = true },
    -- ["fistful_start5__3"] = { Source = "fistful_start__3", EventTable = ff_start5, NoMagSwap = true },
    -- ["fistful_start5__4"] = { Source = "fistful_start__4", EventTable = ff_start5, NoMagSwap = true },
    -- ["fistful_insert1"] = { Source = "fistful_insert1", EventTable = ff_insert1, NoMagSwap = true },
    -- ["fistful_insert2"] = { Source = "fistful_insert2", EventTable = ff_insert2, NoMagSwap = true },
    -- ["fistful_insert3"] = { Source = "fistful_insert3", EventTable = ff_insert3, NoMagSwap = true },
    -- ["fistful_insert4"] = { Source = "fistful_insert4", EventTable = ff_insert4, NoMagSwap = true },
    -- ["fistful_insert5"] = { Source = "fistful_insert5", EventTable = ff_insert5, NoMagSwap = true },
    -- ["fistful_end_r1"] = { Source = "fistful_end_r1", EventTable = ff_end1 },
    -- ["fistful_end_r2"] = { Source = "fistful_end_r2", EventTable = ff_end1 },
    -- ["fistful_end_r3"] = { Source = "fistful_end_r3", EventTable = ff_end1 },
    -- ["fistful_end_r4"] = { Source = "fistful_end_r4", EventTable = ff_end1 },
    -- ["fistful_end_r5"] = { Source = "fistful_end_r5", EventTable = ff_end5 },

    -- ["dryfire"] = { Source = "fire_dry" },


    ["look__0"] = { Source = "look__0", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__1"] = { Source = "look__1", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__2"] = { Source = "look__2", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__3"] = { Source = "look__3", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__4"] = { Source = "look__4", MinProgress = 0.95, FireASAP = true, EventTable = look },
    ["look__5"] = { Source = "look__5", MinProgress = 0.95, FireASAP = true, EventTable = look },

    ["mag_check__0"] = { Source = "mag_check__0", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__1"] = { Source = "mag_check__1", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__2"] = { Source = "mag_check__2", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__3"] = { Source = "mag_check__3", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__4"] = { Source = "mag_check__4", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },
    ["mag_check__5"] = { Source = "mag_check__5", MinProgress = 0.95, FireASAP = true, EventTable = magcheck },

    ["toggle__0"] = {        Source = "mod_switch__0", EventTable = switchi },
    ["switchsights__0"] = {  Source = "mod_switch__0", EventTable = switchi },
    ["toggle__1"] = {        Source = "mod_switch__1", EventTable = switchi },
    ["switchsights__1"] = {  Source = "mod_switch__1", EventTable = switchi },
    ["toggle__2"] = {        Source = "mod_switch__2", EventTable = switchi },
    ["switchsights__2"] = {  Source = "mod_switch__2", EventTable = switchi },
    ["toggle__3"] = {        Source = "mod_switch__3", EventTable = switchi },
    ["switchsights__3"] = {  Source = "mod_switch__3", EventTable = switchi },
    ["toggle__4"] = {        Source = "mod_switch__4", EventTable = switchi },
    ["switchsights__4"] = {  Source = "mod_switch__4", EventTable = switchi },
    ["toggle__5"] = {        Source = "mod_switch__5", EventTable = switchi },
    ["switchsights__5"] = {  Source = "mod_switch__5", EventTable = switchi },

}

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasMag") or 
        !self:GetValue("HasGranataAmmo") then
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end
function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasMag") or 
        !self:GetValue("HasGranataAmmo") then
            return true 
    end
end

SWEP.AttachmentElements = {
    ["eft_m32a1_mag_std"] = { Bodygroups = { {1, 1} } },
}

local roundbgs = {
    ["eft_ammo_40x46_m381"]    = 1,
    ["eft_ammo_40x46_m386"]    = 2,
    ["eft_ammo_40x46_m406"]    = 3,
    ["eft_ammo_40x46_m441"]    = 4,
    ["eft_ammo_40x46_m576"]    = 5,
    ["eft_ammo_40x46_m576_nonubgl"]    = 5,
    ["eft_ammo_40x46_m716"]    = 6,
    ["eft_ammo_40x46_m433"]    = 7,
}

SWEP.Hook_ModifyBodygroups = function(swep, data)
    local eles = data.elements
    local mdl = data.model
    
    local hasmag = eles["eft_m32a1_mag_std"]
    local rc = (swep:GetNWInt("EFTRevolverRoundCount", 6) or 6)

    local ammotype = 0
    for k, v in pairs(roundbgs) do
        if eles[k] then ammotype = v break end 
    end

    -- if rc > 0 and hasmag then mdl:SetBodygroup(7, ammotype) else mdl:SetBodygroup(7, 0) end -- prob could be better but h
    -- if rc > 5 and hasmag then mdl:SetBodygroup(6, ammotype) else mdl:SetBodygroup(6, 0) end
    -- if rc > 4 and hasmag then mdl:SetBodygroup(5, ammotype) else mdl:SetBodygroup(5, 0) end
    -- if rc > 3 and hasmag then mdl:SetBodygroup(4, ammotype) else mdl:SetBodygroup(4, 0) end
    -- if rc > 2 and hasmag then mdl:SetBodygroup(3, ammotype) else mdl:SetBodygroup(3, 0) end
    -- if rc > 1 and hasmag then mdl:SetBodygroup(2, ammotype) else mdl:SetBodygroup(2, 0) end

    -- if rc > 5 and hasmag then mdl:SetBodygroup(7, ammotype) else mdl:SetBodygroup(7, 0) end -- prob could be better but h
    -- if rc > 4 and hasmag then mdl:SetBodygroup(6, ammotype) else mdl:SetBodygroup(6, 0) end
    -- if rc > 3 and hasmag then mdl:SetBodygroup(5, ammotype) else mdl:SetBodygroup(5, 0) end
    -- if rc > 2 and hasmag then mdl:SetBodygroup(4, ammotype) else mdl:SetBodygroup(4, 0) end
    -- if rc > 1 and hasmag then mdl:SetBodygroup(3, ammotype) else mdl:SetBodygroup(3, 0) end
    -- if rc > 0 and hasmag then mdl:SetBodygroup(2, ammotype) else mdl:SetBodygroup(2, 0) end

    if rc > 0 and hasmag then mdl:SetBodygroup(2, ammotype) else mdl:SetBodygroup(2, 0) end -- prob could be better but h
    if rc > 1 and hasmag then mdl:SetBodygroup(3, ammotype) else mdl:SetBodygroup(3, 0) end
    if rc > 2 and hasmag then mdl:SetBodygroup(4, ammotype) else mdl:SetBodygroup(4, 0) end
    if rc > 3 and hasmag then mdl:SetBodygroup(5, ammotype) else mdl:SetBodygroup(5, 0) end
    if rc > 4 and hasmag then mdl:SetBodygroup(6, ammotype) else mdl:SetBodygroup(6, 0) end
    if rc > 5 and hasmag then mdl:SetBodygroup(7, ammotype) else mdl:SetBodygroup(7, 0) end

    -- if rc > 0 and hasmag then mdl:SetBodygroup(2, ammotype) else mdl:SetBodygroup(2, 0) end -- prob could be better but h
    -- if rc > 5 and hasmag then mdl:SetBodygroup(3, ammotype) else mdl:SetBodygroup(3, 0) end
    -- if rc > 4 and hasmag then mdl:SetBodygroup(4, ammotype) else mdl:SetBodygroup(4, 0) end
    -- if rc > 3 and hasmag then mdl:SetBodygroup(5, ammotype) else mdl:SetBodygroup(5, 0) end
    -- if rc > 2 and hasmag then mdl:SetBodygroup(6, ammotype) else mdl:SetBodygroup(6, 0) end
    -- if rc > 1 and hasmag then mdl:SetBodygroup(7, ammotype) else mdl:SetBodygroup(7, 0) end

    -- if rc > 0 and hasmag then mdl:SetBodygroup(2, ammotype) else mdl:SetBodygroup(2, 0) end -- prob could be better but h
    -- if rc > 3 and hasmag then mdl:SetBodygroup(3, ammotype) else mdl:SetBodygroup(3, 0) end
    -- if rc > 4 and hasmag then mdl:SetBodygroup(4, ammotype) else mdl:SetBodygroup(4, 0) end
    -- if rc > 5 and hasmag then mdl:SetBodygroup(5, ammotype) else mdl:SetBodygroup(5, 0) end
    -- if rc > 4 and hasmag then mdl:SetBodygroup(6, ammotype) else mdl:SetBodygroup(6, 0) end
    -- if rc > 1 and hasmag then mdl:SetBodygroup(7, ammotype) else mdl:SetBodygroup(7, 0) end

    -- if swep:GetNWBool("EFTRevolverRound1Loaded", false) and hasmag then mdl:SetBodygroup(2, ammotype) else mdl:SetBodygroup(2, 0) end
    -- if swep:GetNWBool("EFTRevolverRound2Loaded", false) and hasmag then mdl:SetBodygroup(3, ammotype) else mdl:SetBodygroup(3, 0) end
    -- if swep:GetNWBool("EFTRevolverRound3Loaded", false) and hasmag then mdl:SetBodygroup(4, ammotype) else mdl:SetBodygroup(4, 0) end
    -- if swep:GetNWBool("EFTRevolverRound4Loaded", false) and hasmag then mdl:SetBodygroup(5, ammotype) else mdl:SetBodygroup(5, 0) end
    -- if swep:GetNWBool("EFTRevolverRound5Loaded", false) and hasmag then mdl:SetBodygroup(6, ammotype) else mdl:SetBodygroup(6, 0) end
    -- if swep:GetNWBool("EFTRevolverRound6Loaded", false) and hasmag then mdl:SetBodygroup(7, ammotype) else mdl:SetBodygroup(7, 0) end
    
    -- mdl:SetBodygroup(2, 0)
    -- mdl:SetBodygroup(3, 0)
    -- mdl:SetBodygroup(4, 0)
    -- mdl:SetBodygroup(5, 0)
    -- mdl:SetBodygroup(6, 0)
    -- mdl:SetBodygroup(7, 0)
end


SWEP.Attachments = {
    {
        PrintName = "Grenade type",
        Category = {"eft_ammo_40x46", "eft_ammo_40x46_nonubgl"},
        RejectAttachments = { ["eft_ammo_40x46_m576"] = true },
        Bone = "patron_in_weapon",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Integral = "eft_ammo_40x46_m406",
    },
    {
        PrintName = "Optic",
        Bone = "mod_scope",
        Category = {"eft_m2a1", "eft_optic_medium"},
        ExcludeElements = {"IronsBlockingSight"},
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_m32a1_mag",
        Bone = "mod_magazine",
        -- Installed = "eft_rsh12_mag_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Foregrip",
        Category = {"eft_foregrip_small", "eft_foregrip_medium"},
        Bone = "mod_foregrip",
        -- Installed = "eft_ash12_hg_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },   
    {
        PrintName = "aR Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
        Bone = "mod_tactical_000",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
        Bone = "mod_tactical_002",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        -- RejectAttachments = { ["eft_tactical_raptar"] = true },
        Bone = "mod_tactical_001",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "Pistol grip",
        Category = {"eft_ar15_pgrip"},
        -- Installed = "eft_ar_pgrip_diecsfde",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_ar_stock",
        Bone = "mod_stock",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        -- Installed = "eft_ar_buffertube_a2",
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_m32a1"},
        Bone = "weapon",
        Pos = Vector(0, 26.5, 0.2),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
        -- CosmeticOnly = true,
    },
}

SWEP.EFTErgo = 30
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.ShellsHeavy


SWEP.ShootEnt = "arc9_eft_40mm_m433_bang"
SWEP.ShootEntForce = 20000
SWEP.ShootEntHook = function(swep, old) return swep:GetValue("ShootEntUBGL") end -- bleh bleh those rounds for ubgl only

-- probably rrrealllyy bad
local aaaaaa = {
    ["eft_ammo_40x46_m381"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m381.mdl",
    ["eft_ammo_40x46_m386"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m386.mdl",
    ["eft_ammo_40x46_m406"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m406.mdl",
    ["eft_ammo_40x46_m441"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m441.mdl",
    ["eft_ammo_40x46_m576"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m576.mdl",
    ["eft_ammo_40x46_m576_nonubgl"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m576.mdl",
    ["eft_ammo_40x46_m716"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m716.mdl",
    ["eft_ammo_40x46_m433"]    = "models/weapons/arc9/darsu_eft/shells/40x46_m433.mdl",
}

-- SWEP.DropMagazineModelHook = function(swep, old) 
--     local elements = swep:GetElements()
--     for k, v in pairs(aaaaaa) do
--         if elements[k] then return v end 
--     end
-- end
SWEP.ShellModelHook = function(swep, old) 
    local elements = swep:GetElements()
    for k, v in pairs(aaaaaa) do
        if elements[k] then return v end 
    end
end