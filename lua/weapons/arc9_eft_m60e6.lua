--copy of arc9_eft_m60e4 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_m60e4"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_m60e6")
SWEP.Description = "eft_weapon_m60e6_desc"

-- SWEP.DefaultBodygroups = "10000000000000"

SWEP.EFTErgo = 31

SWEP.DefaultElements = {"eft_e6"} -- owo

SWEP.Attachments = {
    {
        Installed = "eft_scope_elcan",
        -- ExtraSightDistance = -3.5,
    },
    {
        Installed = "eft_m60_barrel_e4_475",
        SubAttachments = {
            {
                Installed = "eft_m60_muzzle_e6"
            },
            {
                Installed = "eft_m60_fs_e6"
            },
        }
    },
    _,
    _,
    {
        Installed = "eft_m60_hg_e4_fde",
    },
    {
        Installed = "eft_m60_stock_e6_fde",
    },
    {
        Installed = "eft_m60_trigger_e6_fde",
        SubAttachments = {
            {
                Installed = "eft_m60_pg_e6_fde"
            },
        }
    },
    {
    },
    {
        Installed = false 
    },
    {
        Installed = "eft_m60_e6fde" 
    },
}
