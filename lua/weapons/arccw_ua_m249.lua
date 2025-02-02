SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Urban Coalition"
SWEP.UC_CategoryPack = "4Urban Anarchy"
SWEP.AdminOnly = false
SWEP.UseHands = true

-- Muzzle and shell effects --

SWEP.MuzzleEffect = "muzzleflash_1"
SWEP.ShellModel = "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale = 1
SWEP.ShellPitch = 100

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment = 2
SWEP.TracerNum = 0
SWEP.TracerCol = Color(25, 255, 25)
SWEP.TracerWidth = 2

-- Fake name --

SWEP.PrintName = "XM422"

-- True name --

SWEP.TrueName = "M249 SAW"

-- Trivia --

SWEP.Trivia_Class = "Machine Gun"
SWEP.Trivia_Desc = "Compact, fast-firing light machine gun, adopted by the US Army in search of a more soldier-friendly alternative to the M60. Its huge ammo box can carry an unprecedented quantity of rounds, which are dispensed downrange at a rate that will force the enemy's heads to stay down. In emergencies, it can also accept STANAG magazines."
SWEP.Trivia_Manufacturer = "Not FN Herstal"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated Open Bolt"
SWEP.Trivia_Country = "Belgium"
SWEP.Trivia_Year = 1977

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
end

-- Weapon slot --

SWEP.Slot = 2

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "FN Herstal"
end

-- Viewmodel / Worldmodel / FOV --

SWEP.ViewModel = "models/weapons/arccw/c_ua_m249.mdl"
SWEP.WorldModel = "models/weapons/w_rif_m249.mdl"
SWEP.ViewModelFOV = 65
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

-- Damage parameters --

SWEP.Damage = ArcCW.UC.StdDmg["556"].max
SWEP.DamageMin = ArcCW.UC.StdDmg["556"].min
SWEP.Range = 150
SWEP.Penetration = ArcCW.UC.StdDmg["556"].pen
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.PhysBulletMuzzleVelocity = 915

-- Mag size --

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 200

-- Recoil --

SWEP.Recoil = 0.1
SWEP.RecoilSide = 0.14

SWEP.RecoilRise = 0.3
SWEP.VisualRecoilMult = 0.4
SWEP.MaxRecoilBlowback = 0.4
SWEP.MaxRecoilPunch = 1

-- Firerate / Firemodes --

SWEP.TriggerDelay = true

SWEP.Delay = 60 / 800
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 0
    }
}

SWEP.ShootPitch = 100
SWEP.ShootVol = 114

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.ReloadInSights = true

-- NPC -- 

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 60

-- Accuracy --

SWEP.AccuracyMOA = 5.6
SWEP.HipDispersion = 600
SWEP.MoveDispersion = 800

SWEP.Primary.Ammo = "smg1"

-- Speed multipliers --

SWEP.SpeedMult = 0.7
SWEP.SightedSpeedMult = 0.72
SWEP.SightTime = 0.6

-- Length --

SWEP.BarrelLength = 42
SWEP.ExtraSightDist = 7

-- Ironsights / Customization / Poses --

SWEP.HolsterPos = Vector(4.623, -2.211, 1.004)
SWEP.HolsterAng = Angle(-8.443, 28.843, 0)

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.IronSightStruct = {
    Pos = Vector(-3.685, 0, 1.28),
    Ang = Angle(0.05, 0.005, 4),
    Magnification = 1,
    SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(0, 0, 0)
SWEP.CustomizeAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-2, -2, 0)
SWEP.CrouchAng = Angle(0, 0, -8)

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-9, 4.75, -7.5),
    ang = Angle(-6, 0, 180),
    bone = "ValveBiped.Bip01_R_Hand",
}

-- Weapon sounds --

local path = ")^weapons/arccw_ue/m249/"
local common = ")^/arccw_uc/common/"
local rottle = {common .. "cloth_1.ogg", common .. "cloth_2.ogg", common .. "cloth_3.ogg", common .. "cloth_4.ogg", common .. "cloth_6.ogg", common .. "rattle.ogg"}
local ratel = {common .. "rattle1.ogg", common .. "rattle2.ogg", common .. "rattle3.ogg"}

SWEP.ShootSound = {
    path .. "fire-01.ogg",
    path .. "fire-02.ogg",
    path .. "fire-03.ogg",
    path .. "fire-04.ogg",
    path .. "fire-05.ogg",
    path .. "fire-06.ogg"
}
SWEP.ShootSoundSilenced = path .. "fire_supp.ogg"
SWEP.DistantShootSound = nil
SWEP.DistantShootSoundSilenced = common .. "sup_tail.ogg"
SWEP.ShootDrySound = nil

local tail = ")^/arccw_uc/common/556x45/"

SWEP.DistantShootSoundOutdoors = {
    tail .. "fire-dist-556x45-mg-ext-01.ogg",
    tail .. "fire-dist-556x45-mg-ext-02.ogg",
    tail .. "fire-dist-556x45-mg-ext-03.ogg",
    tail .. "fire-dist-556x45-mg-ext-04.ogg",
    tail .. "fire-dist-556x45-mg-ext-05.ogg",
    tail .. "fire-dist-556x45-mg-ext-06.ogg"
}
SWEP.DistantShootSoundIndoors = {
    tail .. "fire-dist-556x45-rif-int-01.ogg",
    tail .. "fire-dist-556x45-rif-int-02.ogg",
    tail .. "fire-dist-556x45-rif-int-03.ogg",
    tail .. "fire-dist-556x45-rif-int-04.ogg",
    tail .. "fire-dist-556x45-rif-int-05.ogg",
    tail .. "fire-dist-556x45-rif-int-06.ogg"
}
SWEP.DistantShootSoundOutdoorsSilenced = {
    common .. "sup-tail-01.ogg",
    common .. "sup-tail-02.ogg",
    common .. "sup-tail-03.ogg",
    common .. "sup-tail-04.ogg",
    common .. "sup-tail-05.ogg",
    common .. "sup-tail-06.ogg",
    common .. "sup-tail-07.ogg",
    common .. "sup-tail-08.ogg",
    common .. "sup-tail-09.ogg",
    common .. "sup-tail-10.ogg"
}
SWEP.DistantShootSoundIndoorsSilenced = {
    common .. "fire-dist-int-pistol-light-01.ogg",
    common .. "fire-dist-int-pistol-light-02.ogg",
    common .. "fire-dist-int-pistol-light-03.ogg",
    common .. "fire-dist-int-pistol-light-04.ogg",
    common .. "fire-dist-int-pistol-light-05.ogg",
    common .. "fire-dist-int-pistol-light-06.ogg"
}
SWEP.DistantShootSoundOutdoorsVolume = 1
SWEP.DistantShootSoundIndoorsVolume = 1
SWEP.Hook_AddShootSound = ArcCW.UC.InnyOuty

-- Bodygroups --

SWEP.BulletBones = {
	[1] = {"bullet1", "belt1"},
	[2] = {"bullet2", "belt2"},
	[3] = {"bullet3", "belt3"},
	[4] = {"bullet4", "belt4"},
	[5] = {"bullet5", "belt5"},
	[6] = {"bullet6", "belt6"},
	[7] = {"bullet7", "belt7"},
	[8] = {"bullet8", "belt8"},
	[9] = {"bullet9", "belt9"},
	[10] = {"bullet10", "belt10"},
	[11] = {"bullet11", "belt11"},
}

SWEP.DefaultBodygroups = "000000000"

SWEP.AttachmentElements = {

    ["nofh"] = {
        VMBodygroups = {{ind = 1, bg = 4}},
    },

    ["go_stock"] = {
        VMBodygroups = {
            {ind = 2, bg = 1}
        },
        VMElements = {
        {
                Model = "models/weapons/arccw/atts/buffer_lpstock.mdl",
                Bone = "Body",
                Offset = {
                    pos = Vector(0, -2, -12.1),
                    ang = Angle(90, 0, -90),
                },
                Scale = Vector(0.9,0.9,0.9),
            }
        },
    },
    
    ["lpglobal_stock"] = {
        VMBodygroups = {
            {ind = 2, bg = 1}
        },
        VMElements = {
        {
                Model = "models/weapons/arccw/atts/buffer_lpstock.mdl",
                Bone = "Body",
                Offset = {
                    pos = Vector(0, -2, -12.1),
                    ang = Angle(90, 0, -90),
                },
                Scale = Vector(0.9,0.9,0.9),
            }
        },
    },
    
    ["lphm_stock"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
    },

    -- Skins --

    ["skin_wireframe"] = {
        VMSkin = 1,
    },
}

-- Animations --

local _FPS_RELOAD = 70

SWEP.Animations = {
    ["idle"] = {
        Source = "beltfed_idle",
        Framerate = 60,
        Time = 330 / 60,
    },
    ["idle_empty"] = {
        Source = "beltfed_idle_empty",
        Framerate = 60,
        Time = 330 / 60,
    },
    ["ready"] = {
        Source = "beltfed_idle",
        Framerate = 60,
        Time = 68 / 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.6,
        SoundTable = {
            --{ s = path .. "lowpolyfal_readydraw.ogg", t = 1 / 30, c = ca },
        },
    },
    ["draw"] = {
        Source = "beltfed_draw",
        Framerate = 60,
		SoundTable = {
			{s = common .. "raise.ogg", t = 10 / 65, c = ca},
			{s = rottle, t = 20 / 65, c = ca},
			{s = common .. "shoulder.ogg", t = 40 / 65, c = ca},
		},
    },
    ["draw_empty"] = {
        Source = "beltfed_draw_empty",
        Framerate = 60,
		SoundTable = {
			{s = common .. "raise.ogg", t = 10 / 65, c = ca},
			{s = rottle, t = 20 / 65, c = ca},
			{s = common .. "shoulder.ogg", t = 40 / 65, c = ca},
		},
    },
    ["holster"] = {
        Source = "beltfed_holster",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
			{s = rottle, t = 0, c = ca},
			{s = ratel, t = 20 / 65, c = ca},
			{s = common .. "raise.ogg", t = 30 / 65, c = ca},
        },
    },
    ["holster_empty"] = {
        Source = "beltfed_holster_empty",
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.5,
        SoundTable = {
			{s = rottle, t = 0, c = ca},
			{s = ratel, t = 20 / 65, c = ca},
			{s = common .. "raise.ogg", t = 30 / 65, c = ca},
        },
    },
    ["trigger"] = {
        Source = "beltfed_dryfire",
        Time = 0.075,
        SoundTable = {
			{s = path .. "prefire.ogg", t = 0, c = CHAN_WEAPON, v = 0.5},
        },
    },
    ["trigger_iron"] = {
        Source = "beltfed_dryfire",
        Time = 0.075,
        SoundTable = {
			{s = path .. "prefire.ogg", t = 0, c = CHAN_WEAPON},
        },
    },
    ["fire"] = {
        Source = {"beltfed_fire01", "beltfed_fire02"},
        Framerate = 60,
        Time = 43 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25}},
    },
    ["fire_iron"] = {
        Source = {"beltfed_fire01_ads", "beltfed_fire02_ads"},
        Framerate = 60,
        Time = 43 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0, v = 0.2},
            {s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0},
        },
    },
    ["fire_empty"] = {
        Source = "beltfed_fire01_empty",
        Framerate = 60,
        Time = 43 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {{ s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0, v = 0.25 }},
    },
    ["fire_iron_empty"] = {
        Source = "beltfed_fire01_empty",
        Framerate = 60,
        Time = 43 / 60,
        ShellEjectAt = 0.01,
        SoundTable = {
            {s = common .. "common_mech_light.ogg", t = 0},
            { s = {path .. "mech-01.ogg", path .. "mech-02.ogg", path .. "mech-03.ogg", path .. "mech-04.ogg", path .. "mech-05.ogg", path .. "mech-06.ogg"}, t = 0 }
        },
    },

    -- 100-R Reloads --

    ["reload"] = {
		Source = "beltfed_reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
		Framerate = _FPS_RELOAD,
		Time = 560 / _FPS_RELOAD,
		MinProgress = 7,
		LastClip1OutTime = 2,
		LHIK = true,
		LHIKIn = 0.2,
		LHIKEaseIn = 0.2,
		LHIKEaseOut = 0.2,
		LHIKOut = 0.2,
		SoundTable = {
			{s = rottle, t = 0, c = ca},
			{s = path .. "lidopen.ogg", t = 30 / _FPS_RELOAD, c = ca},
			{s = ratel, t = 40 / _FPS_RELOAD, c = ca},
			{s = path .. "belt1.ogg", t =  85 / _FPS_RELOAD, c = ca},
			{s = rottle, t = 120 / _FPS_RELOAD, c = ca},
            {s = ratel, t = 140 / _FPS_RELOAD, c = ca},
            {s = ratel, t = 165 / _FPS_RELOAD, c = ca},
            {s = path .. "boxremove.ogg", t = 195 / _FPS_RELOAD, c = ca},
			{s = common .. "magpouch.ogg", t = 211 / _FPS_RELOAD, c = ca},
			{s = ratel, t = 200 / _FPS_RELOAD, c = ca},
			{s = ratel, t = 210 / _FPS_RELOAD, c = ca},
			{s = ratel, t = 220 / _FPS_RELOAD, c = ca},
			{s = common .. "magpouch_gear.ogg", t = 230 / _FPS_RELOAD, c = ca, v = 0.5},
            {s = rottle, t = 270 / _FPS_RELOAD, c = ca},
            {s = path .. "boxstruggle.ogg", t = 290 / _FPS_RELOAD, c = ca},
            {s = path .. "boxinsert.ogg", t = 305 / _FPS_RELOAD, c = ca},
            {s = rottle, t = 325 / _FPS_RELOAD, c = ca},
            {s = path .. "belt2.ogg", t =  358 / _FPS_RELOAD, c = ca},
            {s = path .. "beltadjust.ogg", t =  390 / _FPS_RELOAD, c = ca},
			{s = rottle, t = 425 / _FPS_RELOAD, c = ca},
            {s = path .. "lidclose.ogg", t = 432 / _FPS_RELOAD, c = ca},
            {s = path .. "lidtap.ogg", t = 475 / _FPS_RELOAD, c = ca},
			{s = rottle, t = 455 / _FPS_RELOAD, c = ca},
            {s = path .. "grab.ogg", t = 505 / _FPS_RELOAD, c = ca},
			{s = common .. "shoulder.ogg", t = 511 / _FPS_RELOAD, c = ca, v = 0.5},
        },
    },
    ["reload_empty"] = {
        Source = "beltfed_reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = _FPS_RELOAD,
        Time = 560 / _FPS_RELOAD,
		MinProgress = 7,
        LastClip1OutTime = 2,
        LHIK = true,
        LHIKIn = 2.2,
        LHIKEaseIn = 0.1,
        LHIKEaseOut = 0.15,
        LHIKOut = 0.7,
        SoundTable = {
			{s = common .. "cloth_4.ogg", t = 1 / _FPS_RELOAD, c = ca},
			{s = path .. "chback.ogg", t = 25 / _FPS_RELOAD, c = ca},
			{s = path .. "chforward.ogg", t = 50 / _FPS_RELOAD, c = ca},
			{s = ratel, t = 60 / _FPS_RELOAD, c = ca},
			{s = ratel, t = 70 / _FPS_RELOAD, c = ca},
			{s = common .. "cloth_1.ogg", t = 80 / _FPS_RELOAD, c = ca},
			{s = path .. "lidopen.ogg", t = 140 / _FPS_RELOAD, c = ca},
			{s = common .. "cloth_2.ogg", t = 175 / _FPS_RELOAD, c = ca},
			{s = path .. "boxremove.ogg", t = 200 / _FPS_RELOAD, c = ca},
			{s = common .. "magpouch.ogg", t = 201 / _FPS_RELOAD, c = ca},
			{s = ratel, t = 210 / _FPS_RELOAD, c = ca},
			{s = ratel, t = 225 / _FPS_RELOAD, c = ca},
			{s = common .. "magpouch_gear.ogg", t = 230 / _FPS_RELOAD, c = ca, v = 0.5},
			--{s = common .. "cloth_3.ogg", t = 285 / _FPS_RELOAD, c = ca},
			{s = path .. "boxstruggle.ogg", t = 290 / _FPS_RELOAD, c = ca},
			{s = path .. "boxinsert.ogg", t = 325 / _FPS_RELOAD, c = ca},
			{s = path .. "belt1.ogg", t =  368 / _FPS_RELOAD, c = ca},
			{s = path .. "beltadjust.ogg", t =  403 / _FPS_RELOAD, c = ca},
			{s = rottle, t = 435 / _FPS_RELOAD, c = ca},
			{s = path .. "lidclose.ogg", t = 450 / _FPS_RELOAD, c = ca},
			{s = rottle, t = 495 / _FPS_RELOAD, c = ca, v = 1},
			{s = path .. "grab.ogg", t = 510 / _FPS_RELOAD, c = ca},
        },
    },
    
    -- Inspecc --

    ["enter_inspect"] = {
        Source = "enter_inspect",
        time = 70 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth2.ogg", t = 0 / 30, c = ca },
        },
    },
    ["idle_inspect"] = {
        Source = "idle_inspect",
        time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect"] = {
        Source = "exit_inspect",
        time = 143 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth1.ogg", t = 2 / 30, c = ca },
        },
    },

    ["enter_inspect_empty"] = {
        Source = "enter_inspect_empty",
        time = 70 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0.1,
        LHIKOut = 0,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth2.ogg", t = 0 / 30, c = ca },
        },
    },
    ["idle_inspect_empty"] = {
        Source = "idle_inspect_empty",
        time = 120 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0,
    },
    ["exit_inspect_empty"] = {
        Source = "exit_inspect_empty",
        time = 143 / 60,
        Framerate = 60,
        LHIK = true,
        LHIKIn = 0,
        LHIKEaseOut = 0.3,
        LHIKOut = 0.84,
        SoundTable = {
            { s = path .. "lowpolyfal_cloth1.ogg", t = 2 / 30, c = ca },
        },
    },
}

-- ADS animation blending, thanks fesiug -- 

SWEP.Hook_Think = function(wep)
    local vm = wep:GetOwner():GetViewModel()
    vm:SetPoseParameter( "sights", Lerp(wep:GetSightDelta(), 1, 0) )
end

-- Attachments --

SWEP.CamAttachment = 3

SWEP.RejectAttachments = {
  ["lpak_polymer"] = true,
}

SWEP.Attachments = {
    {
        PrintName = "Optic",
        Slot = {"optic_lp", "optic", "sniper_optic"},
        DefaultAttName = "Iron Sights",
        Bone = "top_hinge",
        Offset = {
            vpos = Vector(-0.7, 5, 0),
            vang = Angle(90, 90, 0),
        },
        ExtraSightDist = 10,
        InstalledEles = {"nors"},
        CorrectivePos = Vector(0, 0, 0),
		CorrectiveAng = Angle(0, 180, 0),
    },
    {
        PrintName = "Handguard",
        Slot = {"lpm249_hand"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defhand.png"),
        DefaultAttName = "21' Standard Issue Barrel",
        Bone = "Body",
        Offset = {
            vpos = Vector(3.07, -3.8, -27),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {"muzzle"},
        Bone = "parent",
        Offset = {
            vpos = Vector(-0.025, -27.8, 0),
            vang = Angle(0, 90, 90),
        },
        InstalledEles = {"nofh"},
    },
    { 
        PrintName = "Underbarrel",
        Slot = {"foregrip","bipod","ubgl"},
        Bone = "parent",
        Offset = {
            vpos = Vector(3.7, -8, 0), -- that's sooo bad, wrist is completely fucked up
            vang = Angle(90, 90, 0),
        },
        ExcludeFlags = {"fnchand"},
    },
    {
        PrintName = "Tactical", -- ain't no rail lol
        Slot = {"tac"},
        Bone = "parent",
        Offset = {
            vpos = Vector(0, -22, -0.2),
            vang = Angle(0, 90, 0),
        },
    },
    {
        PrintName = "Mag Type",
        Slot = {"lpm249_mag"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defmag.png"),
        DefaultAttName = "200-Round Standard Box",
    },
    {
        PrintName = "Stock",
        Slot = {"lpglobal_stock","go_stock","lphm_stock"},
		DefaultAttIcon = Material("entities/att/acwatt_lpfal_defstock.png"),
        DefaultAttName = "Standard Polymer Stock",
        VMScale = Vector(0.9,0.9,0.9),
        Bone = "Body",
        Offset = {
            vpos = Vector(0, -2, -12.1),
            vang = Angle(90, 0, -90),
        },
    },
    {
        PrintName = "Ammo Type",
        DefaultAttName = "\"FMJ\" Full Metal Jacket",
        DefaultAttIcon = Material("entities/att/arccw_uc_ammo_generic.png", "mips smooth"),
        Slot = "uc_ammo",
    },
    {
        PrintName = "Powder Load",
        Slot = "uc_powder",
        DefaultAttName = "Standard Load"
    },
    {
        PrintName = "Training Package",
        Slot = "uc_tp",
        DefaultAttName = "Basic Training"
    },
    {
        PrintName = "Internals",
        Slot = "uc_fg", -- Fire group
        DefaultAttName = "Standard Internals"
    },
    {
        PrintName = "Charm",
        Slot = {"charm","fml_charm"},
        FreeSlot = true,
        Bone = "parent",
        Offset = {
            vpos = Vector(0.2, 4, -0.8),
            vang = Angle(90, 90, 0),
        },
    },
}