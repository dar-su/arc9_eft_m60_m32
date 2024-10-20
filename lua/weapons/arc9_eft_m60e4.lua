AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_lmg")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
}


SWEP.PrintName = "M60E4"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_lmg")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "U.S. Ordnance",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "7.62x51mm NATO",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_usa"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1957"
}

SWEP.Description = [[The M60E4 (Mk 43 Mod 1) is a 7.62x51 caliber light machine gun, a modification of the M60E3 with a more reliable trigger mechanism, ability to attach optics, and a number of other improvements. The M60 was nicknamed "The Pig" due to its bulky size and design flaws. Despite its disadvantages, variants of the M60 are still used in some military units. Manufactured by U.S. Ordnance.]]

-- SWEP.StandardPresets = {
--     "[Short]XQAAAQBRAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD7+trSYi87zraD1RhdmrGhyPd4ycWvZjTrNJb1xySQwWqRsbAc+x/oM1S2Kf1ubFUEnuxyF/MXbD2rSEF2zZnujIJjgu7J4vPWU0FdKYtfq+79Cl08gZq/toRZClYvtWRc2LL6E0Xvf84psnMR2uG6eEiBM7f0kkla3g6F/iHOvmjzwoME",
--     "[LL3 Barter]XQAAAQB/AQAAAAAAAAA9iIIiM7tuo1AtT00OeFD7+trSYi87zraD1RhdmrGhyPd4ycWvZjTrNJb1xySQwWqRsbAc+x/oM1S2Kf1ubFUEnuxyF/MXbD2rSEF2zZnujIJjgu7J4vPWWWztZ0QlPCLVgYlzKZ+GxHwY/zsm0Xhc2+bRUoWoTqhww3d8hB3h8DYA5NMpazuiY9b7R8zBwZwtmsnqG/ML34oeLZNXkwxt12B9Qdw="
-- }

SWEP.BarrelLength = 17
SWEP.Slot = 3
SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_m60.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000"


------------------------- [[[           STATS            ]]] -------------------------

--          Damage

SWEP.DamageMax = 88
SWEP.DamageMin = 60
SWEP.PhysBulletMuzzleVelocity = 840 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      31 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   20/100

SWEP.DamageLookupTable = {
    {   10/0.0254, 
    88     },

    {   100 /0.0254, 
    84     },

    {   200 /0.0254, 
    80.2     },

    {   300 /0.0254, 
    76.6     },

    {   400 /0.0254, 
    73     },

    {   500 /0.0254, 
    69     },

    {   600 /0.0254, 
    65.5     },

    {   700 /0.0254, 
    63.4     },

    {   800 /0.0254, 
    62     },

    {   900 /0.0254, 
    60.8     },

    {   1000 /0.0254, 
    60     },
}



--          Spread
SWEP.Spread = 6.88 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 1 -- general multiplier of main recoil

SWEP.RecoilUp   = 4   -- up recoil
SWEP.RecoilSide = 0.36 -- sideways recoil
SWEP.RecoilRandomUp   = 0.5 -- random up/down
SWEP.RecoilRandomSide = 0.9  -- random left/right

SWEP.RecoilAutoControl = 2.9 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.1   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.75   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.05   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = -15 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = 0.05 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.75 -- camera roll each shot + makes camera go more up when fullautoing

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

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10



--          Heating

SWEP.Malfunction = false  
SWEP.MalfunctionNeverLastShoot = true  
SWEP.MalfunctionMeanShotsToFail = 900
SWEP.MalfunctionMeanShotsToFailMultHot = 0.5
SWEP.Overheat = true
SWEP.HeatCapacity = 250
SWEP.HeatDissipation = 1.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 550
SWEP.Firemodes = { { Mode = -1} }

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.75
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.5
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

SWEP.Ammo = "ar2"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 0 -- actual chamber (no mag)
SWEP.SupplyLimit = 2
SWEP.SecondarySupplyLimit = 2
SWEP.ReloadInSights = false 
SWEP.ShouldDropMag = false 
SWEP.ShouldDropMagEmpty = false 
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.65
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(180, 90, 0)
SWEP.DropMagazineVelocity = Vector(40, -30, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.22, -5.35, 0.25),
    Ang = Angle(0, 0.01, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.37)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(21, 30, 6.5)
SWEP.CustomizeSnapshotFOV = 94
SWEP.CustomizeRotateAnchor = Vector(20, -4.25, -6)

SWEP.BipodPos = Vector(-1.7, -3.5, 1)
SWEP.BipodAng = Angle(0, 0, 0)

--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-9, 5.4, -7),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -2), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_m14"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/762x51.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 0, -90)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)


SWEP.BulletBones = {
    -- [1] = "patron_in_weapon",
    [1] = "patron_001",
    [2] = "patron_002",
    [3] = "patron_003",
    [4] = "patron_004",
    [5] = "patron_005",
    [6] = "patron_006",
    [7] = "patron_007",
    [8] = "patron_008",
    [9] = "patron_009",
    [10] = "patron_010",
    [11] = "patron_011",
    [12] = "patron_012",
    [13] = "patron_013",
    [14] = "patron_014",
    [15] = "patron_015",
    [16] = "patron_016",
    [17] = "patron_017",
    [18] = "patron_018",
    [19] = "patron_019",
    [20] = "patron_020",
    [21] = "patron_021",
    [22] = "patron_022",
    [23] = "patron_023",
    [24] = "patron_024",
    [25] = "patron_025",

}

------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/m60/"
local path2 = "weapons/darsu_eft/m60/fire/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path2 .. "m60_outdoor_close_loop1.ogg", path2 .. "m60_outdoor_close_loop2.ogg", path2 .. "m60_outdoor_close_loop3.ogg", path2 .. "m60_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path2 .. "m60_outdoor_close_tail.ogg"

SWEP.ShootSoundSilenced = { path2 .. "m60_outdoor_silenced_close_loop1.ogg", path2 .. "m60_outdoor_silenced_close_loop2.ogg", path2 .. "m60_outdoor_silenced_close_loop3.ogg", path2 .. "m60_outdoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilenced = path2 .. "m60_outdoor_silenced_close_tail.ogg"

SWEP.ShootSoundIndoor = { path2 .. "m60_indoor_close_loop1.ogg", path2 .. "m60_indoor_close_loop2.ogg", path2 .. "m60_indoor_close_loop3.ogg", path2 .. "m60_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path2 .. "m60_indoor_close_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path2 .. "m60_indoor_silenced_close_loop1.ogg", path2 .. "m60_indoor_silenced_close_loop2.ogg", path2 .. "m60_indoor_silenced_close_loop3.ogg", path2 .. "m60_indoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = path2 .. "m60_indoor_silenced_close_tail.ogg"

SWEP.DistantShootSound = { path2 .. "rpd_outdoor_distant_loop1.ogg", path2 .. "rpd_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilenced = { path2 .. "m60_outdoor_silenced_distant_loop1.ogg", path2 .. "m60_outdoor_silenced_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { path2 .. "m60_indoor_distant_loop1.ogg", path2 .. "m60_indoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path2 .. "m60_indoor_silenced_distant_loop1.ogg", path2 .. "m60_indoor_silenced_distant_loop2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSMachineGun
SWEP.ExitSightsSound = ARC9EFT.ADSMachineGun



------------------------- [[[           Hooks & functions            ]]] -------------------------


------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mag_m60_capco_m60e3_assault_box_762x51_100",
        "lid",
        "belt_root",
        "belt_link_001",
        "patron_001",
        "belt_link_002",
        "patron_002",
        "belt_link_003",
        "patron_003",
        "belt_link_004",
        "patron_004",
        "belt_link_005",
        "patron_005",
        "belt_link_006",
        "patron_006",
        "belt_link_007",
        "patron_007",
        "belt_link_008",
        "patron_008",
        "belt_link_009",
        "patron_009",
        "belt_link_010",
        "patron_0010",
        "belt_link_011",
        "patron_011",
        "belt_link_012",
        "patron_012",
        "belt_link_013",
        "patron_013",
        "belt_link_014",
        "patron_014",
        "belt_link_015",
        "patron_015",
        "belt_link_016",
        "patron_016",
        "belt_link_017",
        "patron_017",
        "belt_link_018",
        "patron_018",
        "belt_link_019",
        "patron_019",
        "belt_link_020",
        "patron_020",
        "belt_link_021",
        "patron_021",
        "belt_link_022",
        "patron_022",
        "belt_link_023",
        "patron_023",
        "belt_link_024",
        "patron_024",
        "belt_link_025",
    },
}


SWEP.Hook_TranslateAnimation = function(swep, anim)
        local elements = swep:GetElements()
    
        local ending = ""
    
        -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
        -- local rand = 0
        local nomag = false
    
        if elements["eft_m60_mag_100"] then ending = 0
        else nomag = true end
    
        local empty = swep:Clip1() == 0
        
        -- 0 looking
        -- 1 slide check  (!empty)
        -- 2 mag checking  (!nomag)

        if anim == "inspect" or anim == "inspect_empty" then
            swep.EFTInspectnum = swep.EFTInspectnum or 0
            if IsFirstTimePredicted() then
                swep.EFTInspectnum = swep.EFTInspectnum + 1
            end
            local rand = swep.EFTInspectnum
            if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
            if rand == 2 and !nomag then -- mag
                ending = "_mag_" .. ending
                
                if ARC9EFTBASE and SERVER then
                    net.Start("arc9eftmagcheck")
                    net.WriteBool(false) -- accurate or not based on mag type
                    net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                    net.WriteUInt(swep:GetCapacity(), 9)
                    net.Send(swep:GetOwner())
                end
            else
                ending = rand
            end
            
            return anim .. ending .. (empty and "_empty" or "")
        elseif anim == "reload" or anim == "reload_empty" then
            local animla = anim .. ending
            -- local timrr = swep:GetAnimationEntry(animla).MagSwapTime or 0

            -- timer.Simple(timrr, function()
            --     if IsValid(swep) and IsValid(swep:GetOwner()) and swep:GetReloading() then
            --         swep:SetEFTShootedRounds(0)
            --     end
            -- end)
            return animla
        -- elseif anim == "fix" then
        --     rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        --     -- rand = 2

        --     if ARC9EFTBASE and SERVER then
        --         timer.Simple(1.5, function()
        --             if IsValid(swep) and IsValid(swep:GetOwner()) then
        --                 net.Start("arc9eftjam")
        --                 net.WriteUInt(rand, 3)
        --                 net.Send(swep:GetOwner())
        --             end
        --         end)
        --     end
        --     -- print("llaodfod", swep:GetBipod())
        --     return "jam" .. rand .. ((rand == 2 and itsrpdn) and "_n" or "") .. ((swep:GetInSights() or swep:GetBipod()) and "_sights" or "")
        elseif anim == "fire" then
            swep:SetEFTArmedDryfire(true)
        elseif anim == "dryfire" then
            if swep:GetEFTArmedDryfire() then
                swep:SetEFTArmedDryfire(false)
                return anim .. "_armed"
            end
        end
        
        -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
        return anim
    end
    
    local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
    local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
    local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}
    

    

local beltt = {path .. "pk_belt_1.ogg",path .. "pk_belt_2.ogg",path .. "pk_belt_3.ogg",path .. "pk_belt_4.ogg",path .. "pk_belt_5.ogg",path .. "pk_belt_6.ogg",path .. "pk_belt_7.ogg",path .. "pk_belt_8.ogg",path .. "pk_belt_9.ogg" }

local alwayslhik = {
    { t = 0, lhik = 1 },
    { t = 1, lhik = 1 },
} 
local neverlhik = {
    { t = 0, lhik = 0 },
    { t = 1, lhik = 0 },
} 

local bipodpath = "weapons/darsu_eft/bipod/"
SWEP.EnterBipodSound = false 
SWEP.ExitBipodSound = false

SWEP.Animations = {
        ["idle"] = {
            Source = "idle",
            IKTimeLine = alwayslhik,
            Time = 1000, -- REMOVEEEEEEEEEEEEEEE THIS!!!!!!!!!!!!!!!!!!!!!!!!!!
        },
    
        ["ready"] = {
            Source = "ready",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "m60_gunflip_1.ogg", t = 0.3 },
                { s = path .. "m60_bolt_out.ogg", t = 1.69 },
                { s = path .. "m60_bolt_in.ogg", t = 2.01 },
                { s = path .. "m60_gunflip_2.ogg", t = 2.5 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.001, lhik = 0 },
                { t = 0.27, lhik = 0 },
                { t = 0.43, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
        ["draw"] = {
            Source = "draw",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
                { s = path .. "m60_gunflip_3.ogg", t = 0.4 },
            }
        },

        ["holster"] = {
            Source = "holster",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
                { s = path .. "m60_gunflip_1.ogg", t = 0.1 },
            }
        },
    
    
        ["fire"] = {
            Source = "fire",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "ash12_trigger_hammer.ogg", t = 0 },
                { s = beltt, t = 0.05 },
            }
        },
        ["fire_empty"] = {
            Source = "fire_end",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "ash12_trigger_hammer.ogg", t = 0 },
                { s = beltt, t = 0.05 },
            }
        },
        ["dryfire"] = {
            Source = "idle",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "ash12_trigger_empty.ogg", t = 0 },
            }
        },
        ["dryfire_armed"] = {
            Source = "idle",
            IKTimeLine = alwayslhik,
            EventTable = {
                { s = path .. "pk_fire_dry_armed.ogg", t = 0 },
            }
        },
    
        ["reload0"] = {
            Source = "reload",
            MinProgress = 0.93,
            MagSwapTime = 3.25,
            FireASAP = true,
            -- IKTimeLine = alwayslhik,
            EventTable = {
                { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
                { s = path .. "m60_dust_open.ogg", t = 0.93 - 0.3 },
                { s = path .. "pk_belt_roll.ogg", t = 1.6 },
                { s = path .. "m60_mag_out.ogg", t = 2.45 },
                { s = randspin, t = 2.8 },
                { s = pouchin, t = 2.9 },
                { s = pouchout, t = 3.5 },
                { s = randspin, t = 3.57 },
                { s = path .. "m60_mag_in.ogg", t = 4.12 },
                { s = path .. "m60_belt_setup.ogg", t = 4.8 },
                { s = beltt, t = 5.1 },
                { s = path .. "m60_close_cover.ogg", t = 7.0 - 0.2 },
                { s =  path .. "m60_gunflip_3.ogg", t = 7.7 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.07, lhik = 0 },
                { t = 0.87, lhik = 0 },
                { t = 0.92, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
        ["reload_empty0"] = {
            Source = "reload_empty", 
            MinProgress = 0.97,
            MagSwapTime = 2.85,
            DropMagAt = 2.6,
            FireASAP = true,
            -- IKTimeLine = alwayslhik,
            EventTable = {
                { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
                { s = path .. "m60_dust_open.ogg", t = 0.86 - 0.3 },
                { s = path .. "m60_mag_out_fast.ogg", t = 1.48 },
                { s = path .. "m60_gunflip_2.ogg", t = 2.3 },
                { s = pouchout, t = 2.85 },
                { s = randspin, t = 2.93 },
                { s = path .. "m60_mag_in.ogg", t = 3.58 },
                { s = path .. "m60_belt_setup.ogg", t = 4.54 - 0.38 },
                { s = beltt, t = 4.5 },
                { s = path .. "m60_close_cover.ogg", t = 6.39 - 0.2 },
                { s = randspin, t = 7 },
                { s =  path .. "m60_bolt_out.ogg", t = 7.65 },
                { s =  path .. "m60_bolt_in.ogg", t = 8 },
                { s =  path .. "m60_gunflip_3.ogg", t = 8.57 },
                
                {hide = 0, t = 0},
                {hide = 1, t = 2.6},
                {hide = 0, t = 2.9}
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.06, lhik = 0 },
                { t = 0.74, lhik = 0 },
                { t = 0.79, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
    

        ["toggle"] = {
            Source = "mod_switch",
            IKTimeLine = alwayslhik,
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights"] = {
            Source = "mod_switch",
            IKTimeLine = alwayslhik,
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
    
    

        ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle",
        },
    
        ["inspect1"] = {
            Source = "look",
            EventTable = {
                -- { s = randspin, t = 0 },
                { s =  beltt, t = 0.3 },
                { s =  path .. "m60_gunflip_1.ogg", t = 0.25 },
                { s =  beltt, t = 2.0 },
                { s =  path .. "m60_gunflip_2.ogg", t = 2.1 },
                { s =  beltt, t = 3.64 },
                { s =  path .. "m60_gunflip_3.ogg", t = 3.7 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.48, lhik = 1 },
                { t = 0.7, lhik = 0 },
                { t = 0.81, lhik = 0 },
                { t = 0.92, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
        ["inspect1_empty"] = {
            Source = "look",
            EventTable = {
                -- { s = randspin, t = 0 },
                { s =  path .. "m60_gunflip_1.ogg", t = 0.25 },
                { s =  path .. "m60_gunflip_2.ogg", t = 2.1 },
                { s =  path .. "m60_gunflip_3.ogg", t = 3.7 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.48, lhik = 1 },
                { t = 0.7, lhik = 0 },
                { t = 0.81, lhik = 0 },
                { t = 0.92, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
    
        ["inspect_mag_0"] = {
            Source = "magcheck",
            EventTable = {
                { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
                { s =  path .. "m60_mag_check.ogg", t = 0.59 },
                { s =  beltt, t = 0.89 },
                { s =  path .. "m60_gunflip_3.ogg", t = 2.35 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.1, lhik = 0 },
                { t = 0.75, lhik = 0 },
                { t = 0.9, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },

        ["inspect0"] = {
            Source = "check_chamber",
            EventTable = {
                { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
                { s = path .. "m60_dust_open.ogg", t = 0.83 - 0.3 },
                { s = path .. "pk_gun_flip_5.ogg", t = 1.74 },
                { s =  beltt, t = 1.7 },
                { s = path .. "rpd_mag_check2.ogg", t = 2.51, v = 0.3 },
                { s = path .. "m60_close_cover.ogg", t = 3.04 - 0.2 },
                { s =  path .. "m60_gunflip_3.ogg", t = 3.56 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.11, lhik = 0 },
                { t = 0.74, lhik = 0 },
                { t = 0.84, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
        ["inspect0_empty"] = {
            Source = "check_chamber_empty",
            EventTable = {
                { s =  path .. "m60_gunflip_1.ogg", t = 0.1 },
                { s = path .. "m60_dust_open.ogg", t = 1.03 - 0.3 },
                { s =  path .. "m60_gunflip_2.ogg", t = 1.4 },
                { s = path .. "m60_close_cover.ogg", t = 2.83 - 0.2 },
                { s =  path .. "m60_gunflip_3.ogg", t = 3.37 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.11, lhik = 0 },
                { t = 0.73, lhik = 0 },
                { t = 0.85, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },
        
        ["enter_bipod"] = {
            Source = "action",
            EventTable = {
                { s = { bipodpath .. "bipod_rpd_unfold_1.ogg", bipodpath .. "bipod_rpd_unfold_2.ogg", bipodpath .. "bipod_rpd_unfold_3.ogg" }, t = 0.0 },
                { s = { bipodpath .. "bipod_stand_on_1.ogg", bipodpath .. "bipod_stand_on_2.ogg", bipodpath .. "bipod_stand_on_3.ogg", bipodpath .. "bipod_stand_on_4.ogg", bipodpath .. "bipod_stand_on_5.ogg" }, t = 0.2 },
            }
        },
        ["exit_bipod"] = {
            Source = "action",
            EventTable = {
                { s = { bipodpath .. "bipod_rpd_fold_1.ogg", bipodpath .. "bipod_rpd_fold_2.ogg", bipodpath .. "bipod_rpd_fold_3.ogg" }, t = 0.0 },
            }
        },
    }

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.AttachmentElements = {
    ["eft_e6"] = { Bodygroups = { {1, 1} } },
    ["eft_m60_e6fde"] = { Skin = 1 },

    ["eft_m60_barrel_e4_458"] = { Bodygroups = { {4, 1} } },
    ["eft_m60_barrel_e4_475"] = { Bodygroups = { {4, 3} } },
    ["eft_m60_barrel_e6_458"] = { Bodygroups = { {4, 2} } },
    ["eft_m60_barrel_e3_584"] = { Bodygroups = { {4, 4} } },

    ["eft_m60_hg_e4"] = { Bodygroups = { {6, 1} } },
    ["eft_m60_hg_e4_fde"] = { Bodygroups = { {6, 2} } },
    ["eft_m60_hg_e6"] = { Bodygroups = { {6, 3} } },

    ["eft_m60_stock_e4"] = { Bodygroups = { {10, 1} } },
    ["eft_m60_stock_e6"] = { Bodygroups = { {10, 2} } },
    ["eft_m60_stock_e6_fde"] = { Bodygroups = { {10, 3} } },

    ["eft_m60_rearsight"] = { Bodygroups = { {9, 1} } },
    ["eft_m60_mag_100"] = { Bodygroups = { {2, 1}, {3, 1}, {11, 1} } },
    ["eft_m60_bipod"] = { Bodygroups = { {5, 1} } },

    ["eft_m60_trigger_e4"] = { Bodygroups = { {7, 1} } },
    ["eft_m60_trigger_e6"] = { Bodygroups = { {7, 2} } },
    ["eft_m60_trigger_e6_fde"] = { Bodygroups = { {7, 3} } },
    ["eft_m60_pg_e4"] = { Bodygroups = { {8, 1} } },
    ["eft_m60_pg_e6"] = { Bodygroups = { {8, 2} } },
    ["eft_m60_pg_e6_fde"] = { Bodygroups = { {8, 3} } },

}

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasBarrel") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasTrigger") or
        !self:GetValue("HasGrip") or
        !self:GetValue("HasStock") or
        !self:GetValue("HasAmmoooooooo") then
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasBarrel") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasTrigger") or
        !self:GetValue("HasGrip") or
        !self:GetValue("HasStock") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.ExtraSightDistanceNoRT = true

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Bone = "mod_scope",
        Category = {"eft_optic_medium", "eft_optic_small", "eft_optic_large"},
        ExcludeElements = {"IronsBlockingSight"},
        -- ExtraSightDistance = -3.5, -- something wrong with acogs???
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Barrel",
        Category = "eft_m60_barrel",
        Bone = "mod_barrel",
        Installed = "eft_m60_barrel_e4_458",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        SubAttachments = {
            {
                Installed = "eft_m60_muzzle_e3"
            },
            {
                Installed = "eft_m60_fs_e4"
            },
        }
    },
    {
        PrintName = "Magazine",
        Category = "eft_m60_mag",
        Bone = "mod_magazine",
        Installed = "eft_m60_mag_100",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_762x51",
        Integral = true,
        Installed = "eft_ammo_762x51_bpzfmj",
        Bone = "mod_magazine",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(3, 0, -4),
    },
    {
        PrintName = "Handguard",
        Category = "eft_m60_handguard",
        Bone = "mod_handguard",
        Installed = "eft_m60_hg_e4",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_stock_m60",
        Bone = "mod_stock",
        Installed = "eft_m60_stock_e4",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Trigger Group",
        Category = "eft_trigger_m60",
        Bone = "mod_pistolgrip_000",
        Installed = "eft_m60_trigger_e4",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        SubAttachments = {
            {
                Installed = "eft_m60_pg_e4"
            },
        }
    },
    {
        PrintName = "Rear Sight",
        Category = "eft_m60_rs",
        Bone = "mod_sight_rear",
        Installed = "eft_m60_rearsight",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Bipod",
        Category = "eft_bipod_m60",
        Bone = "mod_bipod",
        Installed = "eft_m60_bipod",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -2),
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_m60"},
        Bone = "mod_stock",
        Pos = Vector(0, -3, -5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

SWEP.EFTErgo = 29
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
SWEP.ShellSounds = ARC9EFT.Shells556

-- SWEP.NoFireDuringSighting = true
-- SWEP.SightIsAlsoBipodAnims = true
-- SWEP.UnbipodOnLockAnims = true


-- fake bipod
SWEP.Hook_ModifyBodygroups = function(swep, data)
    local els = data.elements

    if els["eft_m60_bipod"] and swep:GetBipod() then
        if swep:GetEnterBipodTime() + 0.1 < CurTime() then
            data.model:SetBodygroup(5, 2)
        end
    end
    
    if els["eft_m60_rearsight"] then
        data.model:SetBodygroup(9, swep:GetValue("FoldSights") and 2 or 1)
    else
        data.model:SetBodygroup(9, 0)
    end
end

-- ewww
DEFINE_BASECLASS(SWEP.Base)
function SWEP:SetupDataTables(...)
    BaseClass.SetupDataTables(self, ...)
    -- self:NetworkVar("Int", "EFTShootedRounds")
    self:NetworkVar("Bool", "EFTArmedDryfire")
    -- self:SetEFTShootedRounds(0)
    self:SetEFTArmedDryfire(true)
end

SWEP.ExtraShellModels = {
    [1] = {
        model = "models/weapons/arc9/darsu_eft/shells/m60_belt.mdl",
        physbox = Vector(1, 1, 1),
        smoke = false
    },
}

SWEP.Hook_PrimaryAttack = function(self) -- belt link
    self:DoEject(1, 5)
end