local ATT = {}

///////////////////////////////////////      eft_m32a1_fastreload


ATT = {}

ATT.PrintName = "Dump cylinder on every reload"
ATT.CompactName = "Fast reload"
ATT.Icon = Material("entities/eft_m32_attachments/fastreload.png", "mips smooth")
ATT.Description = [[Attachment instead of double pressing R in EFT.
Drops all ammo on ground on any reload for faster reload.]]

ATT.EFTForceFastReload = true

ATT.AttNotForNPCs = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_custom_slot_m32a1"}
ATT.Attachments = {
    {
        PrintName = "Custom slot",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, 0, 0),
        Category = {"eft_custom_slot"},
    },
}



ARC9.LoadAttachment(ATT, "eft_m32a1_fastreload")


///////////////////////////////////////      eft_m32a1_mag_std


ATT = {}

ATT.PrintName = "M32A1 40mm cylinder"
ATT.CompactName = "M32A1 cyl."
ATT.Icon = Material("entities/eft_m32_attachments/cyl.png", "mips smooth")
ATT.Description = [[A standard-issue cylinder for the M32A1 MSGL revolver grenade launcher.]]

ATT.EFTErgoAdd = -10
ATT.CustomCons = { Ergonomics = "-10" }
ATT.RecoilMult = 0.99
ATT.VisualRecoilMult = 0.99

ATT.ClipSize = 6

ATT.HasMag = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m32a1_mag"}

ARC9.LoadAttachment(ATT, "eft_m32a1_mag_std")





-- m60





///////////////////////////////////////      eft_m60_barrel_e4_458

ATT = {}

ATT.PrintName = "M60E4 7.62x51 458mm barrel"
ATT.CompactName = "M60E4 458mm"
ATT.Icon = Material("entities/eft_m60_attachments/m60e4_762x51_458mm_barrel.png", "mips smooth")
ATT.Description = "A 458mm short barrel for the M60E4 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = -10
ATT.CustomCons = { Ergonomics = "-10" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93
ATT.HeatCapacityMult = 0.88
ATT.PhysBulletMuzzleVelocityMult = 0.99

ATT.HasBarrel = true 

ATT.SpreadOverride = 1.24 * ARC9.MOAToAcc -- CHECK!!

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m60_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_muzzle_m60", "eft_ar10_muzzle"},
        Pos = Vector(0, 14.9, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Front Sight",
        Category = "eft_fs_m60",
        Pos = Vector(0, 14.1, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_barrel_e4_458")

///////////////////////////////////////      eft_m60_barrel_e4_475

ATT = {}

ATT.PrintName = "M60E4 7.62x51 475mm heavy barrel"
ATT.CompactName = "M60E4 475mm"
ATT.Icon = Material("entities/eft_m60_attachments/m60e4_762x51_475mm_heavy_barrel.png", "mips smooth")
ATT.Description = "A heavy fluted 475mm barrel for the M60E4 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = -13
ATT.CustomCons = { Ergonomics = "-13" }
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9
ATT.HeatCapacityMult = 0.811
ATT.PhysBulletMuzzleVelocityMult = 0.95

ATT.HasBarrel = true 

ATT.SpreadOverride = 1.17 * ARC9.MOAToAcc -- CHECK!!

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m60_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_muzzle_m60", "eft_ar10_muzzle"},
        Pos = Vector(0, 15.6, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Front Sight",
        Category = "eft_fs_m60",
        Pos = Vector(0, 14.8, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_barrel_e4_475")

///////////////////////////////////////      eft_m60_barrel_e6_458

ATT = {}

ATT.PrintName = "M60E6 7.62x51 458mm barrel"
ATT.CompactName = "M60E6 458mm"
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_762x51_458mm_barrel.png", "mips smooth")
ATT.Description = "A 458mm short barrel for the M60E6 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = -9
ATT.CustomCons = { Ergonomics = "-9" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93
ATT.HeatCapacityMult = 0.871
ATT.PhysBulletMuzzleVelocityMult = 0.99

ATT.HasBarrel = true 

ATT.SpreadOverride = 1.24 * ARC9.MOAToAcc -- CHECK!!

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m60_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_muzzle_m60", "eft_ar10_muzzle"},
        Pos = Vector(0, 14.9, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Front Sight",
        Category = "eft_fs_m60",
        Pos = Vector(0, 14.1, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_barrel_e6_458")

///////////////////////////////////////      eft_m60_barrel_e3_584

ATT = {}

ATT.PrintName = "M60E3 7.62x51 584mm barrel"
ATT.CompactName = "M60E3 584mm"
ATT.Icon = Material("entities/eft_m60_attachments/m60e3_762x51_584mm_barrel.png", "mips smooth")
ATT.Description = "A long 584mm barrel for the M60E3 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = -16
ATT.CustomCons = { Ergonomics = "-16" }
ATT.RecoilMult = 0.87
ATT.VisualRecoilMult = 0.87
ATT.HeatCapacityMult = 0.828

ATT.HasBarrel = true 

ATT.SpreadOverride = 1.07 * ARC9.MOAToAcc -- CHECK!!

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m60_barrel"}

ATT.Attachments = {
    {
        PrintName = "Muzzle",
        Category = {"eft_muzzle_m60", "eft_ar10_muzzle"},
        Pos = Vector(0, 19.97, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Front Sight",
        Category = "eft_fs_m60",
        Pos = Vector(0, 19.2, 0),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_barrel_e3_584")


///////////////////////////////////////      eft_m60_hg_e4

ATT = {}

ATT.PrintName = "M60E4 Mod 1 handguard"
ATT.CompactName = "M60E4 hg"
ATT.Icon = Material("entities/eft_m60_attachments/m60e4_mod_1_handguard.png", "mips smooth")
ATT.Description = "An aluminium railed handguard for the M60E4 Mod 1 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 0.965

ATT.HasHG = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m60_handguard"}

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(4.2, 0, 1.55),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "Tactical R",
        Category = {"eft_tactical"},
        Pos = Vector(3, 1.52, -1.63),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Tactical L",
        Category = {"eft_tactical"},
        Pos = Vector(3, -1.52, -1.63),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_hg_e4")

///////////////////////////////////////      eft_m60_hg_e4_fde

ATT = {}

ATT.PrintName = "M60E4 Mod 1 handguard (FDE)"
ATT.CompactName = "M60E4 hg"
ATT.Icon = Material("entities/eft_m60_attachments/m60e4_mod_1_handguard_fde.png", "mips smooth")
ATT.Description = "An aluminium railed handguard for the M60E4 Mod 1 light machine gun. Manufactured by U.S Ordnance. Flat Dark Earth version."

ATT.EFTErgoAdd = 7
ATT.CustomPros = { Ergonomics = "+7" }
ATT.RecoilMult = 0.98
ATT.VisualRecoilMult = 0.98
ATT.HeatCapacityMult = 0.965

ATT.HasHG = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m60_handguard"}

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(4.2, 0, 1.55),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "Tactical R",
        Category = {"eft_tactical"},
        Pos = Vector(3, 1.52, -1.63),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Tactical L",
        Category = {"eft_tactical"},
        Pos = Vector(3, -1.52, -1.63),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_hg_e4_fde")

///////////////////////////////////////      eft_m60_hg_e6

ATT = {}

ATT.PrintName = "M60E6 handguard"
ATT.CompactName = "M60E6 hg"
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_handguard.png", "mips smooth")
ATT.Description = "A standard-issue railed handguard for the M60E6 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = 8
ATT.CustomPros = { Ergonomics = "+8" }
ATT.RecoilMult = 0.97
ATT.VisualRecoilMult = 0.97
ATT.HeatCapacityMult = 0.969

ATT.HasHG = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m60_handguard"}

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        Pos = Vector(4.7, 0, 1.45),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
    {
        PrintName = "Tactical R",
        Category = {"eft_tactical"},
        Pos = Vector(2, 1.56, -1.6),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Tactical L",
        Category = {"eft_tactical"},
        Pos = Vector(2, -1.56, -1.6),
        Ang = Angle(0, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_hg_e6")


///////////////////////////////////////      eft_m60_stock_e4

ATT = {}

ATT.PrintName = "M60E4 buttstock"
ATT.CompactName = "M60E4 butt."
ATT.Icon = Material("entities/eft_m60_attachments/m60e4_buttstock.png", "mips smooth")
ATT.Description = "A lightweight buttstock for the M60E4 light machine gun with articulated shoulder rest and improved buffer mounting mechanism. Manufactured by U.S. Ordnance."

ATT.HasStock = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stock_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_stock_e4")

///////////////////////////////////////      eft_m60_stock_e6

ATT = {}

ATT.PrintName = "M60E6 buttstock"
ATT.CompactName = "M60E6 butt."
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_buttstock.png", "mips smooth")
ATT.Description = "A lightweight buttstock for the M60E6 light machine gun with articulated shoulder rest and improved buffer mounting mechanism. Manufactured by U.S. Ordnance."

ATT.HasStock = true 

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stock_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_stock_e6")

///////////////////////////////////////      eft_m60_stock_e6_fde

ATT = {}

ATT.PrintName = "M60E6 buttstock (FDE)"
ATT.CompactName = "M60E4 butt. (F)"
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_buttstock_fde.png", "mips smooth")
ATT.Description = "A lightweight buttstock for the M60E6 light machine gun with articulated shoulder rest and improved buffer mounting mechanism. Manufactured by U.S. Ordnance. Flat Dark Earth version."

ATT.HasStock = true 

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_stock_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_stock_e6_fde")


///////////////////////////////////////      eft_m60_rearsight

ATT = {}

ATT.PrintName = "M60 rear sight"
ATT.CompactName = "M60 RS"
ATT.Icon = Material("entities/eft_m60_attachments/m60_rear_sight.png", "mips smooth")
ATT.Description = "A standard-issue foldable rear sight for the M60 machine gun. Manufactured by U.S Ordnance."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m60_rs"}

ARC9.LoadAttachment(ATT, "eft_m60_rearsight")

///////////////////////////////////////      eft_m60_fs_e4

ATT = {}

ATT.PrintName = "M60E4 front sight"
ATT.CompactName = "M60E4 FS"
ATT.Icon = Material("entities/eft_m60_attachments/m60e4_front_sight.png", "mips smooth")
ATT.Description = "A standard-issue fixed front sight for the M60E4 light machine gun, installed on the barrel. Manufactured by U.S Ordnance."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_fs_m60"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/sight_front_m60_usord_m60e4.mdl"

ARC9.LoadAttachment(ATT, "eft_m60_fs_e4")

///////////////////////////////////////      eft_m60_fs_e6

ATT = {}

ATT.PrintName = "M60E6 front sight rail"
ATT.CompactName = "M60E6 FS"
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_front_sight_rail.png", "mips smooth")
ATT.Description = "A small front sight rail for the M60E6 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/sight_front_m60_usord_m60e6.mdl"

ATT.Category = {"eft_fs_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_fs_e6")


///////////////////////////////////////      eft_m60_bipod

ATT = {}

ATT.PrintName = "M60 bipod"
ATT.CompactName = "M60 bipod"
ATT.Icon = Material("entities/eft_m60_attachments/m60_bipod.png", "mips smooth")
ATT.Description = "A standard-issue bipod for the M60 machine gun. Manufactured by U.S Ordnance."

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }

ATT.Bipod = true 
ATT.RecoilMultBipod = 0.33
ATT.VisualRecoilMultBipod = 0.33
ATT.HoldBreathTimeMultBipod = 30
ATT.SwayMultBipod = 0.1

ATT.Category = {"eft_bipod_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_bipod")


///////////////////////////////////////      eft_m60_trigger_e4

ATT = {}

ATT.PrintName = "M60E4 trigger group"
ATT.CompactName = "M60E4 trig."
ATT.Icon = Material("entities/eft_m60_attachments/m60e4_trigger_group.png", "mips smooth")
ATT.Description = "A trigger group for the M60E4 machine gun with an adapter that allows the installation of pistol grips from the M60. Manufactured by U.S. Ordnance."

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }

ATT.HasTrigger = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_trigger_m60"}

ATT.Attachments = {
    {
        PrintName = "Pistol Grip",
        Category = "eft_pg_m60",
        Pos = Vector(4.5, 0, 2),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_trigger_e4")

///////////////////////////////////////      eft_m60_trigger_e6

ATT = {}

ATT.PrintName = "M60E6 trigger group"
ATT.CompactName = "M60E6 trig."
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_trigger_group.png", "mips smooth")
ATT.Description = "A trigger group for the M60E6 machine gun with an adapter that allows the installation of pistol grips from the M60. Manufactured by U.S. Ordnance."

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasTrigger = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_trigger_m60"}

ATT.Attachments = {
    {
        PrintName = "Pistol Grip",
        Category = "eft_pg_m60",
        Pos = Vector(4.5, 0, 2),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_trigger_e6")

///////////////////////////////////////      eft_m60_trigger_e6_fde

ATT = {}

ATT.PrintName = "M60E6 trigger group (FDE)"
ATT.CompactName = "M60E6 trig. (F)"
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_trigger_group_fde.png", "mips smooth")
ATT.Description = "A trigger group for the M60E6 machine gun with an adapter that allows the installation of pistol grips from the M60. Manufactured by U.S. Ordnance. Flat Dark Earth version."

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasTrigger = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_trigger_m60"}

ATT.Attachments = {
    {
        PrintName = "Pistol Grip",
        Category = "eft_pg_m60",
        Pos = Vector(4.5, 0, 2),
        Ang = Angle(0, -90, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_m60_trigger_e6_fde")

///////////////////////////////////////      eft_m60_pg_e4

ATT = {}

ATT.PrintName = "M60E4 pistol grip"
ATT.CompactName = "M60E4 grip"
ATT.Icon = Material("entities/eft_m60_attachments/m60e4_pistol_grip.png", "mips smooth")
ATT.Description = "A standard-issue pistol grip for the M60E4 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3" }

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pg_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_pg_e4")

///////////////////////////////////////      eft_m60_pg_e6

ATT = {}

ATT.PrintName = "M60E6 pistol grip"
ATT.CompactName = "M60E6 grip"
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_pistol_grip.png", "mips smooth")
ATT.Description = "A standard-issue lightweight pistol grip for the M60E6 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pg_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_pg_e6")

///////////////////////////////////////      eft_m60_pg_e6_fde

ATT = {}

ATT.PrintName = "M60E6 pistol grip (FDE)"
ATT.CompactName = "M60E6 grip (F)"
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_pistol_grip_fde.png", "mips smooth")
ATT.Description = "A standard-issue lightweight pistol grip for the M60E6 light machine gun. Manufactured by U.S Ordnance. Flat Dark Earth version."

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.HasGrip = true 

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_pg_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_pg_e6_fde")


///////////////////////////////////////      eft_m60_mag_100

ATT = {}

ATT.PrintName = "M60 7.62x51 Capco 100-round Assault Box"
ATT.CompactName = "M60 Capco 100"
ATT.Icon = Material("entities/eft_m60_attachments/m60_762x51_capco_100round_assault_box.png", "mips smooth")
ATT.Description = "A 100-round 7.62x51 hard plastic ammo box for the M60 machine gun. Manufactured by Capco."

ATT.EFTErgoAdd = -20
ATT.CustomCons = { Ergonomics = "-20" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_m60_dropped.mdl"
ATT.DropMagazineAmount = 1

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_m60_mag"}

ATT.HasMag = true

ATT.ClipSize = 100
-- ATT.ChamberSize = 1

ARC9.LoadAttachment(ATT, "eft_m60_mag_100")

///////////////////////////////////////      eft_m60_muzzle_e3


ATT = {}

ATT.PrintName = "M60E3 7.62x51 flash hider"
ATT.CompactName = "M60E3 flash"
ATT.Icon = Material("entities/eft_m60_attachments/m60e3_762x51_flash_hider.png", "mips smooth")
ATT.Description = "A standard-issue flash hider for the M60E3 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.94
ATT.VisualRecoilMult = 0.94
ATT.SpreadMult = 0.96
ATT.HeatCapacityMult = 0.99

ATT.SortOrder = -6
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_m60_usord_e3.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5

ATT.Category = {"eft_muzzle_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_muzzle_e3")

///////////////////////////////////////      eft_m60_muzzle_e6


ATT = {}

ATT.PrintName = "M60E6 7.62x51 flash hider"
ATT.CompactName = "M60E6 flash"
ATT.Icon = Material("entities/eft_m60_attachments/m60e6_762x51_flash_hider.png", "mips smooth")
ATT.Description = "A standard-issue flash hider for the M60E6 light machine gun. Manufactured by U.S Ordnance."

ATT.EFTErgoAdd = -2
ATT.CustomCons = { Ergonomics = "-2" }
ATT.RecoilMult = 0.93
ATT.VisualRecoilMult = 0.93
ATT.SpreadMult = 0.95
ATT.HeatCapacityMult = 1.03

ATT.SortOrder = -6
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/muzzle_m60_usord_e6.mdl"
ATT.MuzzleDevice = true
ATT.MuzzleDevice_Priority = 4
ATT.BarrelLengthAdd = 0.5

ATT.Category = {"eft_muzzle_m60"}

ARC9.LoadAttachment(ATT, "eft_m60_muzzle_e6")

///////////////////////////////////////      eft_m60_e6fde


ATT = {}

ATT.PrintName = "M60E6 FDE"
ATT.CompactName = "FDE"
ATT.Icon = Material("entities/eft_m60_attachments/fde.png", "mips smooth")
ATT.Description = "tan"

ATT.Category = {"eft_custom_slot_m60"}
ATT.RequireElements = {"eft_e6"}

ATT.SortOrder = -6
ATT.MenuCategory = "ARC9 - EFT Attachments"

ARC9.LoadAttachment(ATT, "eft_m60_e6fde")