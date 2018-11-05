local ids_unit = Idstring("unit")

function preload_all()
	for id, part in pairs(tweak_data.weapon.factory.parts) do
		if part.third_unit then
			local ids_unit_name = Idstring(part.third_unit)

			managers.dyn_resource:load(ids_unit, ids_unit_name, "packages/dyn_resources", false)
		else
			print(id, "didn't have third")
		end
	end
end

function preload_all_units()
	for id, part in pairs(tweak_data.weapon.factory) do
		if part.unit then
			local ids_unit_name = Idstring(part.unit)

			managers.dyn_resource:load(ids_unit, ids_unit_name, "packages/dyn_resources", false)
		else
			print(id, "didn't have unit")
		end
	end
end

function print_package_strings_unit()
	for id, part in pairs(tweak_data.weapon.factory) do
		if part.unit then
			print("<unit name=\"" .. part.unit .. "\"/>")
		end
	end
end

function print_package_strings_part_unit()
	for id, part in pairs(tweak_data.weapon.factory.parts) do
		if part.unit then
			local f = SystemFS:open(id .. ".package", "w")

			f:puts("<package>")
			f:puts("\t<units>")
			f:puts("\t\t<unit name=\"" .. part.unit .. "\"/>")
			f:puts("\t</units>")
			f:puts("</package>")
			SystemFS:close(f)
		end
	end
end

function preload_all_first()
	for id, part in pairs(tweak_data.weapon.factory.parts) do
		if part.unit then
			local ids_unit_name = Idstring(part.unit)

			managers.dyn_resource:load(ids_unit, ids_unit_name, "packages/dyn_resources", false)
		else
			print(id, "didn't have unit")
		end
	end
end

function print_package_strings()
	for id, part in pairs(tweak_data.weapon.factory.parts) do
		if part.third_unit then
			print("<unit name=\"" .. part.third_unit .. "\"/>")
		end
	end
end

function print_parts_without_texture()
	Application:debug("print_parts_without_texture")

	for id, part in pairs(tweak_data.weapon.factory.parts) do
		if part.pcs then
			local guis_catalog = "guis/"
			local bundle_folder = part.texture_bundle_folder

			if bundle_folder then
				guis_catalog = guis_catalog .. "dlcs/" .. tostring(bundle_folder) .. "/"
			end

			guis_catalog = guis_catalog .. "textures/pd2/blackmarket/icons/mods/"

			if not DB:has(Idstring("texture"), guis_catalog .. id) then
				print(guis_catalog .. id)
			end
		end
	end

	Application:debug("
end

local is_win_32 = SystemInfo:platform() == Idstring("WIN32")
local is_not_win_32 = not is_win_32
WeaponFactoryTweakData = WeaponFactoryTweakData or class()

function WeaponFactoryTweakData:init()
	self.parts = {}

	self:_init_silencers()
	self:_init_nozzles()
	self:_init_gadgets()
	self:_init_vertical_grips()
	self:_init_sights()
	self:_init_m4()
	self:_init_g18c()
	self:_init_amcar()
	self:_init_m16()
	self:_init_olympic()
	self:_init_ak_parts()
	self:_init_ak74()
	self:_init_akm()
	self:_init_akm_gold()
	self:_init_akmsu()
	self:_init_saiga()
	self:_init_ak5()
	self:_init_aug()
	self:_init_g36()
	self:_init_p90()
	self:_init_m14()
	self:_init_mp9()
	self:_init_deagle()
	self:_init_mp5()
	self:_init_colt_1911()
	self:_init_mac10()
	self:_init_r870()
	self:_init_g17()
	self:_init_b92fs()
	self:_init_huntsman()
	self:_init_raging_bull()
	self:_init_saw()
	self:_init_serbu()
	self:_init_usp()
	self:_init_g22c()
	self:_init_judge()
	self:_init_m45()
	self:_init_s552()
	self:_init_ppk()
	self:_init_content_dlc1()
	self:_init_content_dlc2()
	self:_init_content_dlc2_dec16()
	self:_init_mp7()
	self:_init_scar()
	self:_init_p226()
	self:_init_hk21()
	self:_init_m249()
	self:_init_rpk()
	self:_init_m95()
	self:_init_msr()
	self:_init_r93()
	self:_init_fal()
	self:_init_ben()
	self:_init_striker()
	self:_init_ksg()
	self:_init_gre_m79()
	self:_init_g3()
	self:_init_galil()
	self:_init_famas()
	self:_init_content_jobs()
	self:_init_scorpion()
	self:_init_tec9()
	self:_init_uzi()
	self:_init_jowi()
	self:_init_x_1911()
	self:_init_x_b92fs()
	self:_init_x_deagle()
	self:_init_g26()
	self:_init_spas12()
	self:_init_mg42()
	self:_init_c96()
	self:_init_sterling()
	self:_init_mosin()
	self:_init_m1928()
	self:_init_l85a2()
	self:_init_hs2000()
	self:_init_vhs()
	self:_init_modpack_m4_ak()
	self:_init_m134()
	self:_init_rpg7()
	self:_init_cobray()
	self:_init_b682()
	self:_init_butchermodpack()
	self:_init_x_g22c()
	self:_init_x_g17()
	self:_init_x_usp()
	self:_init_flamethrower_mk2()
	self:_init_m32()
	self:_init_aa12()
	self:_init_peacemaker()
	self:_init_winchester1874()
	self:_init_plainsrider()
	self:_init_mateba()
	self:_init_asval()
	self:_init_sub2000()
	self:_init_wa2000()
	self:_init_polymer()
	self:_init_hunter()
	self:_init_baka()
	self:_init_arblast()
	self:_init_frankish()
	self:_init_long()
	self:_init_legendary()
	self:_init_par()
	self:_init_sparrow()
	self:_init_model70()
	self:_init_m37()
	self:_init_china()
	self:_init_sr2()
	self:_init_x_sr2()
	self:_init_pl14()
	self:_init_x_mp5()
	self:_init_x_akmsu()
	self:_init_tecci()
	self:_init_hajk()
	self:_init_boot()
	self:_init_packrat()
	self:_init_schakal()
	self:_init_desertfox()
	self:_init_x_packrat()
	self:_init_rota()
	self:_init_tng()
	self:_init_arbiter()
	self:_init_contraband()
	self:_init_ray()
	self:_init_tti()
	self:_init_siltstone()
	self:_init_flint()
	self:_init_coal()
	self:_init_varmods()
	self:_init_lemming()
	self:_init_chinchilla()
	self:_init_x_chinchilla()
	self:_init_breech()
	self:_init_ching()
	self:_init_erma()
	self:create_ammunition()
	self:_init_cc_material_config()
	self:_init_bipods()
	self:_init_content_unfinished()
	self:_set_inaccessibles()
end

function WeaponFactoryTweakData:_set_inaccessibles()
	for part_id, part_data in pairs(self.parts) do
		if not part_data.pcs and not part_data.pc then
			part_data.inaccessible = true
		end
	end
end

function WeaponFactoryTweakData:_init_silencers()
	self.parts.wpn_fps_upg_ns_ass_smg_large = {
		type = "barrel_ext",
		sub_type = "silencer",
		a_obj = "a_ns",
		parent = "barrel",
		name_id = "bm_wp_upg_ns_ass_smg_large",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_ass_smg_large/wpn_fps_upg_ns_ass_smg_large",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = 2,
			damage = -1,
			suppression = 12,
			value = 5,
			recoil = 1,
			spread = 2,
			concealment = -3
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_upg_ns_ass_smg_medium = {
		type = "barrel_ext",
		sub_type = "silencer",
		a_obj = "a_ns",
		parent = "barrel",
		name_id = "bm_wp_upg_ns_ass_smg_medium",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_ass_smg_medium/wpn_fps_upg_ns_ass_smg_medium",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = -2,
			damage = -3,
			suppression = 12,
			value = 2,
			recoil = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_upg_ns_ass_smg_small = {
		type = "barrel_ext",
		sub_type = "silencer",
		a_obj = "a_ns",
		parent = "barrel",
		name_id = "bm_wp_upg_ns_ass_smg_small",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_ass_smg_small/wpn_fps_upg_ns_ass_smg_small",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = -1,
			damage = -5,
			suppression = 12,
			value = 3,
			recoil = 0,
			concealment = 0
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_upg_ns_pis_large = {
		type = "barrel_ext",
		sub_type = "silencer",
		a_obj = "a_ns",
		parent = "slide",
		name_id = "bm_wp_upg_ns_pis_large",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_pis_large/wpn_fps_upg_ns_pis_large",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = -2,
			damage = -1,
			suppression = 12,
			value = 5,
			recoil = 2,
			concealment = -3
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_upg_ns_pis_medium = {
		type = "barrel_ext",
		sub_type = "silencer",
		a_obj = "a_ns",
		parent = "slide",
		name_id = "bm_wp_upg_ns_pis_medium",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_pis_medium/wpn_fps_upg_ns_pis_medium",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = -2,
			damage = -2,
			suppression = 12,
			value = 1,
			recoil = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_upg_ns_pis_small = {
		type = "barrel_ext",
		sub_type = "silencer",
		a_obj = "a_ns",
		parent = "slide",
		name_id = "bm_wp_upg_ns_pis_small",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_pis_small/wpn_fps_upg_ns_pis_small",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = -1,
			damage = -4,
			suppression = 12,
			value = 3,
			recoil = 0,
			concealment = 0
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_upg_ns_shot_thick = {
		type = "barrel_ext",
		sub_type = "silencer",
		a_obj = "a_ns",
		parent = "barrel",
		name_id = "bm_wp_upg_ns_shot_thick",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_shot_thick/wpn_fps_upg_ns_shot_thick",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = -2,
			damage = -4,
			suppression = 12,
			value = 7,
			recoil = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_upg_ns_ass_smg_large.third_unit = "units/payday2/weapons/wpn_third_upg_ns_ass_smg_large/wpn_third_upg_ns_ass_smg_large"
	self.parts.wpn_fps_upg_ns_ass_smg_medium.third_unit = "units/payday2/weapons/wpn_third_upg_ns_ass_smg_medium/wpn_third_upg_ns_ass_smg_medium"
	self.parts.wpn_fps_upg_ns_ass_smg_small.third_unit = "units/payday2/weapons/wpn_third_upg_ns_ass_smg_small/wpn_third_upg_ns_ass_smg_small"
	self.parts.wpn_fps_upg_ns_pis_large.third_unit = "units/payday2/weapons/wpn_third_upg_ns_pis_large/wpn_third_upg_ns_pis_large"
	self.parts.wpn_fps_upg_ns_pis_medium.third_unit = "units/payday2/weapons/wpn_third_upg_ns_pis_medium/wpn_third_upg_ns_pis_medium"
	self.parts.wpn_fps_upg_ns_pis_small.third_unit = "units/payday2/weapons/wpn_third_upg_ns_pis_small/wpn_third_upg_ns_pis_small"
	self.parts.wpn_fps_upg_ns_shot_thick.third_unit = "units/payday2/weapons/wpn_third_upg_ns_shot_thick/wpn_third_upg_ns_shot_thick"
end

function WeaponFactoryTweakData:_init_nozzles()
	self.parts.wpn_fps_upg_ns_ass_smg_firepig = {
		parent = "barrel",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_ass_smg_firepig/wpn_fps_upg_ns_ass_smg_firepig",
		type = "barrel_ext",
		name_id = "bm_wp_upg_ns_ass_smg_firepig",
		a_obj = "a_ns",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			concealment = -2,
			damage = 3,
			suppression = -5,
			value = 5,
			recoil = 1
		}
	}
	self.parts.wpn_fps_upg_ns_ass_smg_stubby = {
		parent = "barrel",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_ass_smg_stubby/wpn_fps_upg_ns_ass_smg_stubby",
		type = "barrel_ext",
		name_id = "bm_wp_upg_ns_ass_smg_stubby",
		a_obj = "a_ns",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			recoil = 3,
			damage = 1,
			suppression = -1
		}
	}
	self.parts.wpn_fps_upg_ns_ass_smg_tank = {
		parent = "barrel",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_ass_smg_tank/wpn_fps_upg_ns_ass_smg_tank",
		type = "barrel_ext",
		name_id = "bm_wp_upg_ns_ass_smg_tank",
		a_obj = "a_ns",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			concealment = -1,
			damage = 2,
			suppression = -2,
			value = 4,
			recoil = 2
		}
	}
	self.parts.wpn_fps_upg_ns_shot_shark = {
		parent = "barrel",
		unit = "units/payday2/weapons/wpn_fps_upg_ns_shot_shark/wpn_fps_upg_ns_shot_shark",
		type = "barrel_ext",
		name_id = "bm_wp_upg_ns_shot_shark",
		a_obj = "a_ns",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -2,
			concealment = -2,
			damage = 2,
			suppression = -2,
			value = 5,
			recoil = 2
		}
	}
	self.parts.wpn_fps_upg_ns_ass_smg_firepig.third_unit = "units/payday2/weapons/wpn_third_upg_ns_ass_smg_firepig/wpn_third_upg_ns_ass_smg_firepig"
	self.parts.wpn_fps_upg_ns_ass_smg_stubby.third_unit = "units/payday2/weapons/wpn_third_upg_ns_ass_smg_stubby/wpn_third_upg_ns_ass_smg_stubby"
	self.parts.wpn_fps_upg_ns_ass_smg_tank.third_unit = "units/payday2/weapons/wpn_third_upg_ns_ass_smg_tank/wpn_third_upg_ns_ass_smg_tank"
	self.parts.wpn_fps_upg_ns_shot_shark.third_unit = "units/payday2/weapons/wpn_third_upg_ns_shot_shark/wpn_third_upg_ns_shot_shark"
end

function WeaponFactoryTweakData:_init_gadgets()
	self.parts.wpn_fps_addon_ris = {
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_wp_upg_fl_pis_tlr1",
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_addon_ris",
		stats = {value = 1},
		third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_addon_ris"
	}
	self.parts.wpn_fps_upg_fl_ass_smg_sho_surefire = {
		sub_type = "flashlight",
		unit = "units/payday2/weapons/wpn_fps_upg_fl_ass_smg_sho_surefire/wpn_fps_upg_fl_ass_smg_sho_surefire",
		type = "gadget",
		name_id = "bm_wp_upg_fl_ass_smg_sho_surefire",
		a_obj = "a_fl",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = -1,
			concealment = -1
		},
		adds = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_upg_fl_ass_smg_sho_peqbox = {
		sub_type = "laser",
		unit = "units/payday2/weapons/wpn_fps_upg_fl_ass_smg_sho_peqbox/wpn_fps_upg_fl_ass_smg_sho_peqbox",
		type = "gadget",
		name_id = "bm_wp_upg_fl_ass_smg_sho_peqbox",
		a_obj = "a_fl",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 5,
			spread_moving = -1,
			concealment = -1
		},
		adds = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_upg_fl_pis_laser = {
		sub_type = "laser",
		unit = "units/payday2/weapons/wpn_fps_upg_fl_pis_laser/wpn_fps_upg_fl_pis_laser",
		type = "gadget",
		name_id = "bm_wp_upg_fl_pis_laser",
		a_obj = "a_fl",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 5,
			spread_moving = -1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_upg_fl_pis_tlr1 = {
		sub_type = "flashlight",
		unit = "units/payday2/weapons/wpn_fps_upg_fl_pis_tlr1/wpn_fps_upg_fl_pis_tlr1",
		type = "gadget",
		name_id = "bm_wp_upg_fl_pis_tlr1",
		a_obj = "a_fl",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = -1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_upg_fl_ass_smg_sho_surefire.third_unit = "units/payday2/weapons/wpn_third_upg_fl_ass_smg_sho_surefire/wpn_third_upg_fl_ass_smg_sho_surefire"
	self.parts.wpn_fps_upg_fl_ass_smg_sho_peqbox.third_unit = "units/payday2/weapons/wpn_third_upg_fl_ass_smg_sho_peqbox/wpn_third_upg_fl_ass_smg_sho_peqbox"
	self.parts.wpn_fps_upg_fl_pis_laser.third_unit = "units/payday2/weapons/wpn_third_upg_fl_pis_laser/wpn_third_upg_fl_pis_laser"
	self.parts.wpn_fps_upg_fl_pis_tlr1.third_unit = "units/payday2/weapons/wpn_third_upg_fl_pis_tlr1/wpn_third_upg_fl_pis_tlr1"
end

function WeaponFactoryTweakData:_init_vertical_grips()
	self.parts.wpn_fps_upg_vg_ass_smg_verticalgrip = {
		a_obj = "a_vg",
		type = "vertical_grip",
		name_id = "bm_wp_upg_vg_ass_smg_verticalgrip",
		unit = "units/payday2/weapons/wpn_fps_upg_vg_ass_smg_verticalgrip/wpn_fps_upg_vg_ass_smg_verticalgrip",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_vg_ass_smg_stubby = {
		a_obj = "a_vg",
		type = "vertical_grip",
		name_id = "bm_wp_upg_vg_ass_smg_stubby",
		unit = "units/payday2/weapons/wpn_fps_upg_vg_ass_smg_stubby/wpn_fps_upg_vg_ass_smg_stubby",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_vg_ass_smg_afg = {
		a_obj = "a_vg",
		type = "vertical_grip",
		name_id = "bm_wp_upg_vg_ass_smg_afg",
		unit = "units/payday2/weapons/wpn_fps_upg_vg_ass_smg_afg/wpn_fps_upg_vg_ass_smg_afg",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_vg_ass_smg_verticalgrip.third_unit = "units/payday2/weapons/wpn_third_upg_vg_ass_smg_verticalgrip/wpn_third_upg_vg_ass_smg_verticalgrip"
	self.parts.wpn_fps_upg_vg_ass_smg_stubby.third_unit = "units/payday2/weapons/wpn_third_upg_vg_ass_smg_stubby/wpn_third_upg_vg_ass_smg_stubby"
	self.parts.wpn_fps_upg_vg_ass_smg_afg.third_unit = "units/payday2/weapons/wpn_third_upg_vg_ass_smg_afg/wpn_third_upg_vg_ass_smg_afg"
	self.parts.wpn_fps_upg_vg_ass_smg_verticalgrip_vanilla = deep_clone(self.parts.wpn_fps_upg_vg_ass_smg_verticalgrip)
	self.parts.wpn_fps_upg_vg_ass_smg_verticalgrip_vanilla.stats = nil
	self.parts.wpn_fps_upg_vg_ass_smg_verticalgrip_vanilla.pc = nil
end

function WeaponFactoryTweakData:_init_sights()
	self.parts.wpn_fps_upg_o_specter = {
		type = "sight",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_specter",
		unit = "units/payday2/weapons/wpn_fps_upg_o_specter/wpn_fps_upg_o_specter",
		pcs = {
			30,
			40
		},
		stats = {
			zoom = 4,
			recoil = 1,
			concealment = -3,
			value = 8,
			spread_moving = -3
		},
		perks = {"scope"},
		stance_mod = {
			wpn_fps_ass_m4 = {translation = Vector3(0, 0, -0.58)},
			wpn_fps_ass_amcar = {translation = Vector3(0, 0, -0.1)},
			wpn_fps_ass_m16 = {translation = Vector3(0, 0, -0.12)},
			wpn_fps_smg_olympic = {translation = Vector3(0, 0, -0.12)},
			wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.1)},
			wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.2)},
			wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.2)},
			wpn_fps_shot_saiga = {translation = Vector3(0, 0, -3)},
			wpn_fps_shot_r870 = {translation = Vector3(0.01, 0, -3.3)},
			wpn_fps_shot_serbu = {translation = Vector3(0, 0, -3.3)},
			wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -3.35)},
			wpn_fps_ass_ak5 = {translation = Vector3(0.025, 0, -3.725)},
			wpn_fps_ass_aug = {translation = Vector3(0, 0, -2.8)},
			wpn_fps_ass_g36 = {translation = Vector3(0, 0, -3)},
			wpn_fps_smg_p90 = {translation = Vector3(0, 0, -2.97)},
			wpn_fps_ass_m14 = {translation = Vector3(-0.04, 0, -3.87)},
			wpn_fps_smg_mp9 = {translation = Vector3(0, 0, -3.47)},
			wpn_fps_smg_mp5 = {translation = Vector3(0, 0, -3)},
			wpn_fps_smg_mac10 = {translation = Vector3(0, -10, -3)},
			wpn_fps_ass_s552 = {translation = Vector3(-0.08, 0, -2.1)},
			wpn_fps_smg_m45 = {translation = Vector3(0, 0, -3.9)},
			wpn_fps_smg_mp7 = {translation = Vector3(0, 0, -2.8)},
			wpn_fps_ass_scar = {translation = Vector3(0, 0, -0.25)},
			wpn_fps_pis_rage = {translation = Vector3(-0.05, -10, -4.65)},
			wpn_fps_pis_deagle = {
				translation = Vector3(0, -15, -4.25),
				rotation = Rotation(0, -0.5, 0)
			},
			wpn_fps_snp_m95 = {translation = Vector3(0, 4, -3.8)},
			wpn_fps_snp_msr = {translation = Vector3(0, -7, -3.55)},
			wpn_fps_snp_r93 = {translation = Vector3(-0.022, -7, -3.782)},
			wpn_fps_ass_fal = {translation = Vector3(0, 4, -3.5)},
			wpn_fps_sho_ben = {translation = Vector3(0, 0, -3.2)},
			wpn_fps_sho_striker = {translation = Vector3(0, 0, -2.8)},
			wpn_fps_sho_ksg = {translation = Vector3(0, 0, -1.3)},
			wpn_fps_smg_scorpion = {translation = Vector3(0, -10, -5.2)},
			wpn_fps_smg_tec9 = {
				translation = Vector3(0, -8, -5),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_uzi = {translation = Vector3(0, -8, -5.1)},
			wpn_fps_pis_judge = {translation = Vector3(-0.02, -10, -5.406)},
			wpn_fps_ass_g3 = {translation = Vector3(0.025, -8, -3.42)},
			wpn_fps_ass_galil = {translation = Vector3(-0.01, -5, -3.25)},
			wpn_fps_ass_famas = {translation = Vector3(0, 7, -6.2)},
			wpn_fps_sho_spas12 = {translation = Vector3(-0.2, 0, -3.9)},
			wpn_fps_smg_sterling = {translation = Vector3(0, -14, -3.61)},
			wpn_fps_snp_mosin = {translation = Vector3(0, -28, -4.3)},
			wpn_fps_smg_thompson = {translation = Vector3(0, -24, -4.2)},
			wpn_fps_ass_l85a2 = {translation = Vector3(0, 2, 1.85)},
			wpn_fps_ass_vhs = {translation = Vector3(-0.01, -3, -1.205)},
			wpn_fps_rpg7 = {
				translation = Vector3(0, 5, 0.04),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_sho_aa12 = {
				translation = Vector3(-0.01, 0, 0.07),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_gre_m32 = {
				translation = Vector3(0, 5, -3.5),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_polymer = {
				translation = Vector3(0, 2, -0.65),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_wa2000 = {
				translation = Vector3(0, -10, 0.75),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_model70 = {
				translation = Vector3(0, -10, -4.05),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_shot_m37 = {
				translation = Vector3(0, -10, -4.05),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_sr2 = {
				translation = Vector3(0, 5, -4.6),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_tecci = {
				translation = Vector3(-0.01, 5, -1.7),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_hajk = {
				translation = Vector3(0, 5, -0.5),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_desertfox = {
				translation = Vector3(0, -12, -3.9),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_schakal = {
				translation = Vector3(0, 0, -2.8),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_sho_rota = {
				translation = Vector3(0, 0, -0.4),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_gre_arbiter = {
				translation = Vector3(0, 0, -0.4),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_contraband = {
				translation = Vector3(-0.01, 5, -1.7),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_tti = {
				translation = Vector3(0, 5, -0.1),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_siltstone = {
				translation = Vector3(0, 5, -4.04),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_flint = {
				translation = Vector3(0, 5, -2.65),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_coal = {
				translation = Vector3(0, 5, -4),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_ching = {
				translation = Vector3(0, 5, -2.77),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_erma = {
				translation = Vector3(0, 5, -3.85),
				rotation = Rotation(0, 0, 0)
			}
		},
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up",
			"wpn_fps_upg_o_xpsg33_magnifier"
		},
		texture_switch = {
			material = "sight",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_aimpoint = {
		type = "sight",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_aimpoint",
		unit = "units/payday2/weapons/wpn_fps_upg_o_aimpoint/wpn_fps_upg_o_aimpoint",
		pcs = {
			30,
			40
		},
		stats = {
			zoom = 4,
			recoil = 1,
			concealment = -3,
			value = 8,
			spread_moving = -3
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up",
			"wpn_fps_upg_o_xpsg33_magnifier"
		},
		texture_switch = {
			material = "sight",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_aimpoint_2 = {
		type = "sight",
		dlc = "preorder",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_aimpoint",
		unit = "units/payday2/weapons/wpn_fps_upg_o_aimpoint/wpn_fps_upg_o_aimpoint_preorder",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			zoom = 4,
			recoil = 1,
			concealment = -3,
			value = 1,
			spread_moving = -3
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up",
			"wpn_fps_upg_o_xpsg33_magnifier"
		},
		texture_switch = {
			material = "sight",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_docter = {
		type = "sight",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_docter",
		unit = "units/payday2/weapons/wpn_fps_upg_o_docter/wpn_fps_upg_o_docter",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			zoom = 2,
			recoil = 1,
			concealment = -1,
			value = 5,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up"
		},
		texture_switch = {
			material = "sight",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_eotech = {
		type = "sight",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_eotech",
		unit = "units/payday2/weapons/wpn_fps_upg_o_eotech/wpn_fps_upg_o_eotech",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			zoom = 3,
			recoil = 1,
			concealment = -2,
			value = 3,
			spread_moving = -2
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up"
		},
		texture_switch = {
			material = "gfx_reddot",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_t1micro = {
		type = "sight",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_t1micro",
		unit = "units/payday2/weapons/wpn_fps_upg_o_t1micro/wpn_fps_upg_o_t1micro",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			zoom = 3,
			recoil = 1,
			concealment = -1,
			value = 3,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up"
		},
		texture_switch = {
			material = "sight",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_upg_o_marksmansight_rear = {
		type = "sight",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_marksmansight_rear",
		unit = "units/payday2/weapons/wpn_fps_upg_o_marksmansight/wpn_upg_o_marksmansight_rear",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			zoom = 1,
			recoil = 1,
			value = 5,
			spread = 1
		},
		perks = {"scope"},
		adds = {"wpn_upg_o_marksmansight_front"},
		stance_mod = {wpn_fps_pis_beretta = {
			translation = Vector3(0, 0, -0.25),
			rotation = Rotation(0, -0.1, 0)
		}},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_upg_o_marksmansight_front = {
		name_id = "bm_wp_upg_o_marksmansight_front",
		unit = "units/payday2/weapons/wpn_fps_upg_o_marksmansight/wpn_upg_o_marksmansight_front",
		a_obj = "a_o",
		type = "extra"
	}
	self.parts.wpn_fps_upg_o_dd_rear = {
		a_obj = "a_o_r",
		type = "sight",
		name_id = "bm_wp_upg_o_dd_rear",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_upg_o_dd/wpn_fps_upg_o_dd_rear",
		stats = {value = 1},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		adds = {"wpn_fps_upg_o_dd_front"},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_upg_o_dd_front = {
		name_id = "bm_wp_upg_o_dd_front",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_upg_o_dd/wpn_fps_upg_o_dd_front",
		a_obj = "a_o_f",
		type = "extra"
	}
	self.parts.wpn_fps_upg_o_specter.third_unit = "units/payday2/weapons/wpn_third_upg_o_specter/wpn_third_upg_o_specter"
	self.parts.wpn_fps_upg_o_docter.third_unit = "units/payday2/weapons/wpn_third_upg_o_docter/wpn_third_upg_o_docter"
	self.parts.wpn_fps_upg_o_aimpoint.third_unit = "units/payday2/weapons/wpn_third_upg_o_aimpoint/wpn_third_upg_o_aimpoint"
	self.parts.wpn_fps_upg_o_aimpoint_2.third_unit = "units/payday2/weapons/wpn_third_upg_o_aimpoint/wpn_third_upg_o_aimpoint_preorder"
	self.parts.wpn_fps_upg_o_eotech.third_unit = "units/payday2/weapons/wpn_third_upg_o_eotech/wpn_third_upg_o_eotech"
	self.parts.wpn_fps_upg_o_t1micro.third_unit = "units/payday2/weapons/wpn_third_upg_o_t1micro/wpn_third_upg_o_t1micro"
	self.parts.wpn_upg_o_marksmansight_rear.third_unit = "units/payday2/weapons/wpn_third_upg_o_marksmansight/wpn_third_upg_o_marksmansight_rear"
	self.parts.wpn_upg_o_marksmansight_front.third_unit = "units/payday2/weapons/wpn_third_upg_o_marksmansight/wpn_third_upg_o_marksmansight_front"
	self.parts.wpn_fps_upg_o_dd_rear.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_upg_o_dd/wpn_third_upg_o_dd_rear"
	self.parts.wpn_fps_upg_o_dd_front.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_upg_o_dd/wpn_third_upg_o_dd_front"
	self.parts.wpn_upg_o_marksmansight_rear_vanilla = deep_clone(self.parts.wpn_upg_o_marksmansight_rear)
	self.parts.wpn_upg_o_marksmansight_rear_vanilla.stats = nil
	self.parts.wpn_upg_o_marksmansight_rear_vanilla.pcs = nil
	self.parts.wpn_upg_o_marksmansight_rear_vanilla.perks = nil
	self.parts.wpn_upg_o_marksmansight_front_vanilla = deep_clone(self.parts.wpn_upg_o_marksmansight_front)
	self.parts.wpn_upg_o_marksmansight_front_vanilla.stats = nil
	self.parts.wpn_upg_o_marksmansight_front_vanilla.pc = nil
	self.parts.wpn_upg_o_marksmansight_front_vanilla.perks = nil
	self.parts.wpn_fps_extra_zoom = {
		sub_type = "flashlight",
		type = "extra",
		a_obj = "a_o",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_extra_zoom/wpn_fps_extra_zoom",
		stats = {
			value = 1,
			zoom = 8
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_upg_o_45iron = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		dlc = "gage_pack_snp",
		a_obj = "a_o",
		type = "gadget",
		sub_type = "second_sight",
		name_id = "bm_wpn_fps_upg_o_45iron",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_upg_o_45iron/wpn_fps_upg_o_45iron",
		pcs = {},
		stats = {
			value = 1,
			gadget_zoom = 1
		},
		perks = {"gadget"},
		stance_mod = {
			wpn_fps_snp_m95 = {
				translation = Vector3(-0.5, 5.8, -14.5),
				rotation = Rotation(-0.4, 0, -45)
			},
			wpn_fps_snp_msr = {
				translation = Vector3(-2.4, 8, -11.8),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_r93 = {
				translation = Vector3(-2.495, 7.8, -13.8),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_mosin = {
				translation = Vector3(-2.44, -5, -12.4),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_wa2000 = {
				translation = Vector3(-2.4, 0, -9),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_model70 = {
				translation = Vector3(-2.75, -4, -11.82),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_desertfox = {
				translation = Vector3(-3.4, -4, -11.4),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_tti = {
				translation = Vector3(-3.01, 1, -9.1),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_siltstone = {
				translation = Vector3(-1.87, 5, -12.6),
				rotation = Rotation(0, 0, -45)
			}
		}
	}
	self.parts.wpn_fps_upg_o_shortdot = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		dlc = "gage_pack_snp",
		a_obj = "a_o",
		type = "sight",
		reticle_obj = "g_reddot",
		name_id = "bm_wp_upg_o_specter",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_upg_o_shortdot/wpn_fps_upg_o_shortdot",
		stats = {
			value = 1,
			zoom = 6
		},
		perks = {"scope"},
		stance_mod = {
			wpn_fps_snp_m95 = {translation = Vector3(-0.013, -22, -4.595)},
			wpn_fps_snp_msr = {translation = Vector3(0, -32, -4.3)},
			wpn_fps_snp_r93 = {translation = Vector3(0, -28, -4.52)},
			wpn_fps_snp_mosin = {translation = Vector3(-0.01, -51, -5.04)},
			wpn_fps_snp_wa2000 = {translation = Vector3(0, -28, 0)},
			wpn_fps_snp_model70 = {translation = Vector3(0, -30, -4.79)},
			wpn_fps_snp_desertfox = {translation = Vector3(0, -38.5, -4.7)},
			wpn_fps_snp_tti = {translation = Vector3(0, -21, -0.86)},
			wpn_fps_snp_siltstone = {translation = Vector3(0, -17, -4.78)}
		},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"},
		texture_switch = {
			material = "gfx_reddot1",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_leupold = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		dlc = "gage_pack_snp",
		a_obj = "a_o",
		type = "sight",
		reticle_obj = "g_reticle",
		name_id = "bm_wp_upg_o_leupold",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_upg_o_leupold/wpn_fps_upg_o_leupold",
		pcs = {},
		stats = {
			zoom = 10,
			recoil = 1,
			concealment = -3,
			value = 8,
			spread_moving = -3
		},
		perks = {
			"scope",
			"highlight"
		},
		stance_mod = {
			wpn_fps_snp_m95 = {translation = Vector3(0, -23, -4.68)},
			wpn_fps_snp_msr = {translation = Vector3(0, -34, -4.3951)},
			wpn_fps_snp_r93 = {translation = Vector3(-0.002, -30, -4.622)},
			wpn_fps_snp_mosin = {translation = Vector3(-0.005, -53, -5.14)},
			wpn_fps_snp_wa2000 = {translation = Vector3(0, -27, -0.1)},
			wpn_fps_snp_model70 = {translation = Vector3(0, -27, -4.89)},
			wpn_fps_snp_desertfox = {translation = Vector3(0, -40, -4.8)},
			wpn_fps_snp_tti = {translation = Vector3(0, -23, -0.955)},
			wpn_fps_snp_siltstone = {translation = Vector3(0, -19, -4.872)}
		},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"},
		texture_switch = {
			material = "gfx_reddot1",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_45iron.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_upg_o_45iron/wpn_third_upg_o_45iron"
	self.parts.wpn_fps_upg_o_shortdot.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_upg_o_shortdot/wpn_third_upg_o_shortdot"
	self.parts.wpn_fps_upg_o_leupold.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_upg_o_leupold/wpn_third_upg_o_leupold"
	self.parts.wpn_fps_upg_o_shortdot_vanilla = deep_clone(self.parts.wpn_fps_upg_o_shortdot)
	self.parts.wpn_fps_upg_o_shortdot_vanilla.stats = {zoom = 6}
	self.parts.wpn_fps_upg_o_shortdot_vanilla.pcs = nil
end

function WeaponFactoryTweakData:_init_content_dlc1()
	self.parts.wpn_fps_upg_o_cmore = {
		type = "sight",
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_cmore",
		unit = "units/pd2_dlc1/weapons/wpn_fps_upg_o_cmore/wpn_fps_upg_o_cmore",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			zoom = 3,
			recoil = 1,
			concealment = -1,
			value = 5,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up"
		},
		texture_switch = {
			material = "gfx_reddot",
			channel = "diffuse_texture"
		},
		third_unit = "units/pd2_dlc1/weapons/wpn_third_upg_o_cmore/wpn_third_upg_o_cmore"
	}
end

function WeaponFactoryTweakData:_init_content_dlc2()
	self.parts.wpn_fps_upg_i_singlefire = {
		type = "custom",
		internal_part = true,
		a_obj = "a_body",
		dlc = "gage_pack",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		sub_type = "singlefire",
		name_id = "bm_wp_upg_i_singlefire",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			recoil = -2,
			value = 5
		},
		perks = {"fire_mode_single"}
	}
	self.parts.wpn_fps_upg_i_autofire = {
		type = "custom",
		internal_part = true,
		a_obj = "a_body",
		dlc = "gage_pack",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		sub_type = "autofire",
		name_id = "bm_wp_upg_i_autofire",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 8,
			spread_moving = 2,
			damage = 1,
			spread = -1,
			recoil = 2
		},
		perks = {"fire_mode_auto"}
	}
	self.parts.wpn_fps_upg_m4_g_hgrip = {
		texture_bundle_folder = "gage_pack",
		dlc = "gage_pack",
		type = "grip",
		name_id = "bm_wp_upg_m4_g_hgrip",
		a_obj = "a_g",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_upg_m4_g_hgrip/wpn_fps_upg_m4_g_hgrip",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = 2,
			recoil = 1,
			spread = 1
		},
		third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_upg_m4_g_hgrip/wpn_third_upg_m4_g_hgrip"
	}
	self.parts.wpn_fps_upg_m4_g_mgrip = {
		texture_bundle_folder = "gage_pack",
		dlc = "gage_pack",
		type = "grip",
		name_id = "bm_wp_upg_m4_g_mgrip",
		a_obj = "a_g",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_upg_m4_g_mgrip/wpn_fps_upg_m4_g_mgrip",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = 2,
			concealment = 2
		},
		third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_upg_m4_g_mgrip/wpn_third_upg_m4_g_mgrip"
	}
	self.parts.wpn_fps_upg_m4_g_hgrip_vanilla = deep_clone(self.parts.wpn_fps_upg_m4_g_hgrip)
	self.parts.wpn_fps_upg_m4_g_hgrip_vanilla.stats = nil
	self.parts.wpn_fps_upg_m4_g_hgrip_vanilla.pcs = nil
end

function WeaponFactoryTweakData:_init_content_dlc2_dec16()
	self.parts.wpn_fps_upg_o_acog = {
		type = "sight",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_acog",
		unit = "units/pd2_dlc2/weapons/wpn_fps_upg_o_acog/wpn_fps_upg_o_acog",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			zoom = 5,
			recoil = 1,
			concealment = -3,
			value = 6,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = {
			wpn_fps_ass_m4 = {translation = Vector3(0, 0, -0.58)},
			wpn_fps_ass_amcar = {translation = Vector3(0, 0, -0.1)},
			wpn_fps_ass_m16 = {translation = Vector3(0, 0, -0.12)},
			wpn_fps_smg_olympic = {translation = Vector3(0, 0, -0.12)},
			wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.1)},
			wpn_fps_ass_akm = {translation = Vector3(-0.02, -16, -3.15)},
			wpn_fps_ass_akm_gold = {translation = Vector3(-0.02, -16, -3.15)},
			wpn_fps_shot_saiga = {translation = Vector3(0, 0, -3)},
			wpn_fps_shot_r870 = {translation = Vector3(0.015, 0, -3.25)},
			wpn_fps_shot_serbu = {translation = Vector3(0, 0, -3.25)},
			wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -3.3)},
			wpn_fps_ass_ak5 = {
				translation = Vector3(0.025, 0, -3.45),
				rotation = Rotation(0, -0.35, 0)
			},
			wpn_fps_ass_aug = {translation = Vector3(0, 0, -2.8)},
			wpn_fps_ass_g36 = {translation = Vector3(0, 0, -3)},
			wpn_fps_smg_p90 = {translation = Vector3(0, 0, -2.97)},
			wpn_fps_ass_m14 = {translation = Vector3(-0.02, -15, -3.85)},
			wpn_fps_smg_mp9 = {translation = Vector3(0, 0, -3.47)},
			wpn_fps_smg_mp5 = {translation = Vector3(0, 0, -3)},
			wpn_fps_smg_mac10 = {translation = Vector3(0, -10, -3)},
			wpn_fps_ass_s552 = {translation = Vector3(-0.08, 0, -2.1)},
			wpn_fps_smg_m45 = {translation = Vector3(0, -10, -3.9)},
			wpn_fps_smg_mp7 = {translation = Vector3(0, 0, -2.8)},
			wpn_fps_ass_scar = {translation = Vector3(0, 0, -0.25)},
			wpn_fps_lmg_hk21 = {translation = Vector3(0, 0, -3.2)},
			wpn_fps_lmg_m249 = {translation = Vector3(0, 0, -3.2)},
			wpn_fps_pis_rage = {translation = Vector3(-0.05, -15, -4.65)},
			wpn_fps_pis_deagle = {
				translation = Vector3(0, -18, -4.2),
				rotation = Rotation(0, -0.5, 0)
			},
			wpn_fps_snp_m95 = {translation = Vector3(0, -1, -3.8)},
			wpn_fps_snp_msr = {translation = Vector3(0, -7, -3.52)},
			wpn_fps_snp_r93 = {translation = Vector3(-0.01, -7, -3.755)},
			wpn_fps_ass_fal = {translation = Vector3(0, 7, -3.5)},
			wpn_fps_sho_ben = {translation = Vector3(0, 0, -3.2)},
			wpn_fps_sho_striker = {translation = Vector3(0, 5, -2.8)},
			wpn_fps_sho_ksg = {translation = Vector3(0, 0, -1.3)},
			wpn_fps_smg_scorpion = {translation = Vector3(0, -8, -5.2)},
			wpn_fps_smg_tec9 = {translation = Vector3(0, 0, -4.9)},
			wpn_fps_smg_uzi = {translation = Vector3(0, 0, -5.1)},
			wpn_fps_pis_judge = {translation = Vector3(0, -10, -5.4)},
			wpn_fps_ass_g3 = {translation = Vector3(0.02, -8, -3.4)},
			wpn_fps_ass_galil = {translation = Vector3(0, -2, -3.2)},
			wpn_fps_ass_famas = {translation = Vector3(-0.01, -5, -6.25)},
			wpn_fps_sho_spas12 = {translation = Vector3(-0.2, 5, -3.9)},
			wpn_fps_smg_sterling = {translation = Vector3(0, -14, -3.6)},
			wpn_fps_snp_mosin = {translation = Vector3(0, -28, -4.3)},
			wpn_fps_smg_thompson = {translation = Vector3(0, -24, -4.2)},
			wpn_fps_ass_l85a2 = {translation = Vector3(-0.01, 8, 1.885)},
			wpn_fps_ass_vhs = {translation = Vector3(-0.005, -1, -1.18)},
			wpn_fps_gre_m32 = {
				translation = Vector3(0, 5, -3.45),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_sho_aa12 = {
				translation = Vector3(-0.01, 0, 0.1),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_rpg7 = {
				translation = Vector3(0, 5, 0.03),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_polymer = {
				translation = Vector3(0, 2, -0.65),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_wa2000 = {
				translation = Vector3(0, -5, 0.75),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_model70 = {
				translation = Vector3(0, -10, -4.05),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_shot_m37 = {
				translation = Vector3(0, -10, -4.05),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_sr2 = {
				translation = Vector3(0, 12, -4.6),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_tecci = {
				translation = Vector3(-0.01, 10, -1.68),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_hajk = {
				translation = Vector3(0, 8, -0.5),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_desertfox = {
				translation = Vector3(0, -15, -3.9),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_schakal = {
				translation = Vector3(0, 0, -2.8),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_sho_rota = {
				translation = Vector3(0, 0, -0.42),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_gre_arbiter = {
				translation = Vector3(0, 0, -0.4),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_contraband = {
				translation = Vector3(-0.01, 0, -1.68),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_tti = {
				translation = Vector3(0, 1, -0.1),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_siltstone = {
				translation = Vector3(0, 5, -4),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_flint = {
				translation = Vector3(0, 5, -2.6),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_coal = {
				translation = Vector3(0, 15, -4),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_ching = {
				translation = Vector3(0, 5, -2.77),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_erma = {
				translation = Vector3(0, 5, -3.85),
				rotation = Rotation(0, 0, 0)
			}
		},
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up",
			"wpn_fps_upg_o_xpsg33_magnifier"
		},
		texture_switch = {
			material = "gfx_reddot",
			channel = "diffuse_texture"
		},
		third_unit = "units/pd2_dlc2/weapons/wpn_fps_upg_o_acog/wpn_third_upg_o_acog"
	}
end

function WeaponFactoryTweakData:_init_content_jobs()
	self.parts.wpn_fps_pis_rage_o_adapter = {
		a_obj = "a_o",
		texture_bundle_folder = "gage_pack_jobs",
		type = "extra",
		name_id = "bm_wp_pis_rage_o_adapter",
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_o_adapter"
	}
	self.parts.wpn_fps_pis_rage_extra = {
		name_id = "bm_wp_pis_rage_extra",
		texture_bundle_folder = "gage_pack_jobs",
		type = "extra",
		a_obj = "a_o",
		dlc = "gage_pack_jobs",
		internal_part = true,
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_pis_rage_extra/wpn_fps_pis_rage_extra",
		pcs = {},
		stats = {value = 2},
		override = {
			wpn_fps_pis_rage_body_smooth = {adds = {}},
			wpn_fps_pis_rage_body_standard = {adds = {}}
		}
	}
	self.parts.wpn_fps_pis_rage_lock = {
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_pis_rage_extra",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_pis_rage_extra/wpn_fps_pis_rage_extra",
		stats = {value = 1},
		forbids = {
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.parts.wpn_fps_pis_deagle_extra = {
		name_id = "bm_wp_pis_deagle_extra",
		texture_bundle_folder = "gage_pack_jobs",
		type = "extra",
		a_obj = "a_quite",
		dlc = "gage_pack_jobs",
		internal_part = true,
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_pis_deagle_extra/wpn_fps_pis_deagle_extra",
		pcs = {},
		stats = {value = 2},
		override = {
			wpn_fps_pis_deagle_body_standard = {adds = {}},
			wpn_fps_pis_rage_o_adapter = {a_obj = "a_quite"}
		}
	}
	self.parts.wpn_fps_pis_deagle_lock = {
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_quite",
		type = "extra",
		name_id = "bm_wp_pis_rage_extra",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_pis_rage_extra/wpn_fps_pis_rage_extra",
		stats = {value = 1},
		forbids = {
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.parts.wpn_fps_pis_rage_o_adapter.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_o_adapter"
	self.parts.wpn_fps_m4_upg_b_sd_smr = {
		texture_bundle_folder = "gage_pack_jobs",
		parent = "barrel",
		type = "barrel",
		name_id = "bm_wp_m4_upg_b_sd_smr",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fg_smr/wpn_fps_m4_upg_b_sd_smr",
		a_obj = "a_b",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_fg_jp = {
		texture_bundle_folder = "gage_pack_jobs",
		dlc = "gage_pack_jobs",
		type = "foregrip",
		name_id = "bm_wp_upg_fg_jp",
		a_obj = "a_fg",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fg_jp/wpn_fps_upg_fg_jp",
		pcs = {},
		stats = {
			concealment = 2,
			value = 5,
			damage = 1,
			recoil = -3,
			spread = 2,
			spread_moving = 2
		}
	}
	self.parts.wpn_fps_upg_fg_smr = {
		type = "foregrip",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_fg",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_fg_smr",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fg_smr/wpn_fps_upg_fg_smr",
		pcs = {},
		stats = {
			concealment = -2,
			value = 5,
			damage = 2,
			recoil = 1,
			spread = -1,
			spread_moving = -2
		},
		override = {wpn_fps_m4_uupg_b_sd = {
			third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_fg_smr/wpn_third_m4_upg_b_sd_smr",
			unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fg_smr/wpn_fps_m4_upg_b_sd_smr"
		}}
	}
	self.parts.wpn_fps_upg_m4_m_quad = {
		type = "magazine",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_m",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_m4_m_quad",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_m4_m_quad/wpn_fps_upg_m4_m_quad",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 15,
			value = 3,
			recoil = 1,
			spread = -1,
			concealment = -3,
			spread_moving = -2
		}
	}
	self.parts.wpn_fps_m4_upg_b_sd_smr.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_fg_smr/wpn_third_m4_upg_b_sd_smr"
	self.parts.wpn_fps_upg_fg_jp.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_fg_jp/wpn_third_upg_fg_jp"
	self.parts.wpn_fps_upg_fg_smr.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_fg_smr/wpn_third_upg_fg_smr"
	self.parts.wpn_fps_upg_m4_m_quad.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_m4_m_quad/wpn_third_upg_m4_m_quad"
	self.parts.wpn_fps_upg_ak_fg_tapco = {
		texture_bundle_folder = "gage_pack_jobs",
		dlc = "gage_pack_jobs",
		type = "foregrip",
		name_id = "bm_wp_upg_ak_fg_tapco",
		a_obj = "a_fg",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_ak_fg_tapco/wpn_fps_upg_ak_fg_tapco",
		pcs = {},
		stats = {
			value = 5,
			spread_moving = 1,
			concealment = 3,
			spread = 1
		}
	}
	self.parts.wpn_fps_upg_fg_midwest = {
		type = "foregrip",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_fg",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_fg_midwest",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fg_midwest/wpn_fps_upg_fg_midwest",
		pcs = {},
		stats = {
			spread_moving = -1,
			value = 5,
			spread = 1,
			concealment = -2,
			recoil = 3
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_upg_ak_b_draco = {
		texture_bundle_folder = "gage_pack_jobs",
		dlc = "gage_pack_jobs",
		type = "barrel",
		name_id = "bm_wp_upg_ak_b_draco",
		a_obj = "a_b",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_ak_b_draco/wpn_fps_upg_ak_b_draco",
		pcs = {},
		stats = {
			value = 2,
			spread = -2,
			damage = 2,
			concealment = 1,
			spread_moving = 2
		}
	}
	self.parts.wpn_fps_upg_ak_m_quad = {
		type = "magazine",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_m",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_ak_m_quad",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_ak_m_quad/wpn_fps_upg_ak_m_quad",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 15,
			value = 3,
			recoil = 1,
			spread = -1,
			concealment = -3,
			spread_moving = -2
		}
	}
	self.parts.wpn_fps_upg_ak_g_hgrip = {
		type = "grip",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_g",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_ak_g_hgrip",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_ak_g_hgrip/wpn_fps_upg_ak_g_hgrip",
		pcs = {},
		stats = {
			value = 2,
			spread_moving = 2,
			recoil = 2,
			concealment = 2
		},
		forbids = {"wpn_upg_ak_g_standard"}
	}
	self.parts.wpn_fps_upg_ak_g_pgrip = {
		type = "grip",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_g",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_ak_g_pgrip",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_ak_g_pgrip/wpn_fps_upg_ak_g_pgrip",
		pcs = {},
		stats = {
			value = 2,
			spread_moving = -2,
			recoil = -2,
			spread = 2
		},
		forbids = {"wpn_upg_ak_g_standard"}
	}
	self.parts.wpn_fps_upg_ak_g_wgrip = {
		type = "grip",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_g",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_ak_g_wgrip",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_ak_g_wgrip/wpn_fps_upg_ak_g_wgrip",
		pcs = {},
		stats = {
			value = 2,
			spread_moving = 1,
			recoil = 3,
			concealment = -1
		},
		forbids = {"wpn_upg_ak_g_standard"}
	}
	self.parts.wpn_fps_upg_ak_fg_tapco.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_ak_fg_tapco/wpn_third_upg_ak_fg_tapco"
	self.parts.wpn_fps_upg_fg_midwest.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_fg_midwest/wpn_third_upg_fg_midwest"
	self.parts.wpn_fps_upg_ak_b_draco.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_ak_b_draco/wpn_third_upg_ak_b_draco"
	self.parts.wpn_fps_upg_ak_m_quad.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_ak_m_quad/wpn_third_upg_ak_m_quad"
	self.parts.wpn_fps_upg_ak_g_pgrip.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_ak_g_pgrip/wpn_third_upg_ak_g_pgrip"
	self.parts.wpn_fps_upg_ak_g_wgrip.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_ak_g_wgrip/wpn_third_upg_ak_g_wgrip"
	self.parts.wpn_fps_upg_ak_g_hgrip.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_ak_g_hgrip/wpn_third_upg_ak_g_hgrip"
	self.parts.wpn_fps_upg_ass_ns_jprifles = {
		type = "barrel_ext",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_ass_ns_jprifles",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_barrel_extentions/wpn_fps_upg_ass_ns_jprifles",
		pcs = {},
		stats = {
			spread = 1,
			concealment = -2,
			damage = 2,
			suppression = -1,
			value = 5,
			recoil = 3
		}
	}
	self.parts.wpn_fps_upg_ass_ns_linear = {
		type = "barrel_ext",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_ass_ns_linear",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_barrel_extentions/wpn_fps_upg_ass_ns_linear",
		pcs = {},
		stats = {
			value = 5,
			concealment = -2,
			damage = 4,
			suppression = -5,
			spread = -2
		}
	}
	self.parts.wpn_fps_upg_ass_ns_surefire = {
		type = "barrel_ext",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_ass_ns_surefire",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_barrel_extentions/wpn_fps_upg_ass_ns_surefire",
		pcs = {},
		stats = {
			spread = 3,
			concealment = -2,
			damage = 1,
			suppression = 0,
			value = 5,
			recoil = -1
		}
	}
	self.parts.wpn_fps_upg_pis_ns_flash = {
		type = "barrel_ext",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_co",
		parent = "slide",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_pis_ns_flash",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_barrel_extentions/wpn_fps_upg_pis_ns_flash",
		pcs = {},
		stats = {
			spread = -1,
			concealment = 0,
			damage = 2,
			suppression = 0,
			value = 4,
			recoil = 3
		}
	}
	self.parts.wpn_fps_upg_shot_ns_king = {
		type = "barrel_ext",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_shot_ns_king",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_barrel_extentions/wpn_fps_upg_shot_ns_king",
		pcs = {},
		stats = {
			value = 5,
			concealment = -2,
			damage = 1,
			suppression = -5,
			spread = 3
		}
	}
	self.parts.wpn_fps_upg_ass_ns_jprifles.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_barrel_extentions/wpn_third_upg_ass_ns_jprifles"
	self.parts.wpn_fps_upg_ass_ns_linear.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_barrel_extentions/wpn_third_upg_ass_ns_linear"
	self.parts.wpn_fps_upg_ass_ns_surefire.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_barrel_extentions/wpn_third_upg_ass_ns_surefire"
	self.parts.wpn_fps_upg_pis_ns_flash.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_barrel_extentions/wpn_third_upg_pis_ns_flash"
	self.parts.wpn_fps_upg_shot_ns_king.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_barrel_extentions/wpn_third_upg_shot_ns_king"
	self.parts.wpn_fps_upg_ns_pis_medium_slim = {
		sub_type = "silencer",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_ns",
		type = "barrel_ext",
		dlc = "gage_pack_jobs",
		parent = "slide",
		name_id = "bm_wp_upg_ns_pis_medium_slim",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_ns_pis_medium_slim/wpn_fps_upg_ns_pis_medium_slim",
		pcs = {},
		stats = {
			alert_size = 12,
			value = 1,
			spread_moving = 2,
			suppression = 12,
			spread = -2,
			recoil = -1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"},
		third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_ns_pis_medium_slim/wpn_third_upg_ns_pis_medium_slim"
	}
	self.parts.wpn_fps_upg_fl_ass_peq15 = {
		type = "gadget",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_fl",
		sub_type = "laser",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_fl_ass_peq15",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fl_ass_peq15/wpn_fps_upg_fl_ass_peq15",
		pcs = {},
		stats = {
			value = 5,
			spread_moving = -1,
			concealment = -2,
			recoil = 1
		},
		perks = {"gadget"},
		adds = {
			"wpn_fps_addon_ris",
			"wpn_fps_upg_fl_ass_peq15_flashlight"
		}
	}
	self.parts.wpn_fps_upg_fl_ass_peq15_flashlight = {
		parent = "gadget",
		type = "extra",
		sub_type = "flashlight",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fl_ass_peq15/wpn_fps_upg_fl_ass_peq15_flashlight",
		a_obj = "a_fl",
		stats = {value = 1},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_upg_fl_ass_laser = {
		type = "gadget",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_fl",
		sub_type = "laser",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_fl_ass_laser",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fl_ass_laser/wpn_fps_upg_fl_ass_laser",
		pcs = {},
		stats = {
			value = 2,
			spread_moving = 1,
			concealment = 0
		},
		perks = {"gadget"},
		adds = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_upg_fl_ass_peq15.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_fl_ass_peq15/wpn_third_upg_fl_ass_peq15"
	self.parts.wpn_fps_upg_fl_ass_laser.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_fl_ass_laser/wpn_third_upg_fl_ass_laser"
	self.parts.wpn_fps_upg_m4_s_crane = {
		type = "stock",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_s",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_m4_s_crane",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_m4_s_crane/wpn_fps_upg_m4_s_crane",
		pcs = {},
		stats = {
			value = 2,
			recoil = 1,
			concealment = 1,
			spread_moving = 1
		},
		adds_type = {"stock_adapter"},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_upg_m4_s_mk46 = {
		type = "stock",
		texture_bundle_folder = "gage_pack_jobs",
		a_obj = "a_s",
		dlc = "gage_pack_jobs",
		name_id = "bm_wp_upg_m4_s_mk46",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_m4_s_mk46/wpn_fps_upg_m4_s_mk46",
		pcs = {},
		stats = {
			recoil = -1,
			value = 6,
			spread = 2,
			concealment = -3,
			spread_moving = -3
		},
		adds_type = {"stock_adapter"},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_upg_m4_s_crane.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_m4_s_crane/wpn_third_upg_m4_s_crane"
	self.parts.wpn_fps_upg_m4_s_mk46.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_m4_s_mk46/wpn_third_upg_m4_s_mk46"
	self.parts.wpn_fps_upg_o_rmr = {
		type = "sight",
		texture_bundle_folder = "gage_pack_jobs",
		dlc = "gage_pack_jobs",
		a_obj = "a_rds",
		parent = "body",
		name_id = "bm_wp_upg_o_rmr",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_o_rmr/wpn_fps_upg_o_rmr",
		pcs = {},
		stats = {
			zoom = 3,
			spread = 1,
			concealment = -1,
			value = 6,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = {
			wpn_fps_pis_1911 = {translation = Vector3(0, 0, -0.45)},
			wpn_fps_pis_beretta = {
				translation = Vector3(0, 0, -0.7),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_pis_deagle = {translation = Vector3(0, 0, -0.78)},
			wpn_fps_pis_g17 = {translation = Vector3(0, 0, -0.85)},
			wpn_fps_pis_g18c = {translation = Vector3(0, 0, -0.45)},
			wpn_fps_pis_usp = {translation = Vector3(-0.015, 0, -0.34)},
			wpn_fps_pis_ppk = {translation = Vector3(0, 0, -1)},
			wpn_fps_pis_p226 = {translation = Vector3(0, 0, -0.6)},
			wpn_fps_pis_g22c = {translation = Vector3(0, 0, -0.45)},
			wpn_fps_pis_g26 = {translation = Vector3(-0.01, 0, -0.35)},
			wpn_fps_pis_c96 = {translation = Vector3(0, 0, -1.2)},
			wpn_fps_pis_hs2000 = {translation = Vector3(0, 0, -0.75)},
			wpn_fps_bow_hunter = {translation = Vector3(0, 8, 0.8)},
			wpn_fps_pis_sparrow = {translation = Vector3(0, 0, -0.93)},
			wpn_fps_pis_pl14 = {translation = Vector3(0, 0, -0.85)},
			wpn_fps_pis_packrat = {translation = Vector3(0, 0, -1.15)},
			wpn_fps_pis_lemming = {translation = Vector3(0, 5, -0.75)},
			wpn_fps_pis_chinchilla = {translation = Vector3(0, 5, -0.75)},
			wpn_fps_pis_breech = {translation = Vector3(0, 5, -0.65)}
		},
		texture_switch = {
			material = "gfx_reddot",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_eotech_xps = {
		type = "sight",
		texture_bundle_folder = "gage_pack_jobs",
		dlc = "gage_pack_jobs",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_eotech_xps",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_o_eotech_xps/wpn_fps_upg_o_eotech_xps",
		pcs = {},
		stats = {
			zoom = 3,
			recoil = 1,
			concealment = -2,
			value = 5,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up"
		},
		texture_switch = {
			material = "gfx_reddot",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_reflex = {
		type = "sight",
		texture_bundle_folder = "gage_pack_jobs",
		dlc = "gage_pack_jobs",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_reflex",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_o_reflex/wpn_fps_upg_o_reflex",
		pcs = {},
		stats = {
			zoom = 3,
			recoil = 1,
			concealment = -1,
			value = 5,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up"
		},
		texture_switch = {
			material = "gfx_reddot",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_rx01 = {
		type = "sight",
		texture_bundle_folder = "gage_pack_jobs",
		dlc = "gage_pack_jobs",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_rx01",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_o_rx01/wpn_fps_upg_o_rx01",
		pcs = {},
		stats = {
			zoom = 4,
			recoil = 1,
			concealment = -1,
			value = 5,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up"
		},
		texture_switch = {
			material = "gfx_reddot",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_rx30 = {
		type = "sight",
		texture_bundle_folder = "gage_pack_jobs",
		dlc = "gage_pack_jobs",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_rx30",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_o_rx30/wpn_fps_upg_o_rx30",
		pcs = {},
		stats = {
			zoom = 4,
			recoil = 1,
			concealment = -2,
			value = 5,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up"
		},
		texture_switch = {
			material = "gfx_reddot",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_cs = {
		type = "sight",
		texture_bundle_folder = "gage_pack_jobs",
		dlc = "gage_pack_jobs",
		a_obj = "a_o",
		name_id = "bm_wp_upg_o_cs",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_o_cs/wpn_fps_upg_o_cs",
		pcs = {},
		stats = {
			zoom = 3,
			recoil = 1,
			concealment = -1,
			value = 3,
			spread_moving = -1
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up",
			"wpn_fps_upg_o_xpsg33_magnifier"
		},
		texture_switch = {
			material = "gfx_reddot",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_rmr.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_o_rmr/wpn_third_upg_o_rmr"
	self.parts.wpn_fps_upg_o_eotech_xps.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_o_eotech_xps/wpn_third_upg_o_eotech_xps"
	self.parts.wpn_fps_upg_o_reflex.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_o_reflex/wpn_third_upg_o_reflex"
	self.parts.wpn_fps_upg_o_rx01.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_o_rx01/wpn_third_upg_o_rx01"
	self.parts.wpn_fps_upg_o_rx30.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_o_rx30/wpn_third_upg_o_rx30"
	self.parts.wpn_fps_upg_o_cs.third_unit = "units/pd2_dlc_gage_jobs/weapons/wpn_third_upg_o_cs/wpn_third_upg_o_cs"
end

function WeaponFactoryTweakData:_init_content_unfinished()
	local unfinished_content = {}

	for i, id in ipairs(unfinished_content) do
		local part = self.parts[id]

		if part then
			part.pc = nil
			part.pcs = nil
			part.texture_bundle_folder = "unfinished"
			part.unit = string.gsub(part.unit, "payday2", "pd2_backlog")
			part.third_unit = string.gsub(part.third_unit, "payday2", "pd2_backlog")
		end
	end

	for id, data in pairs(self) do
		if data.uses_parts then
			for i = #data.uses_parts, 1, -1 do
				if table.contains(unfinished_content, data.uses_parts[i]) then
					table.remove(data.uses_parts, i)
				end
			end
		end
	end
end

function WeaponFactoryTweakData:_cleanup_unfinished_content()
end

function WeaponFactoryTweakData:_cleanup_unfinished_parts()
	for id, data in pairs(self) do
		if id ~= "parts" and data.uses_parts then
			for i = #data.uses_parts, 1, -1 do
				if not self.parts[data.uses_parts[i]] then
					Application:error("[WeaponFactoryTweakData:_cleanup_unfinished_parts] Uses Parts: Removing part that do not exists!", data.uses_parts[i])
					table.remove(data.uses_parts, i)
				end
			end
		end

		if data.default_blueprint then
			for i = #data.default_blueprint, 1, -1 do
				if not self.parts[data.default_blueprint[i]] then
					Application:error("[WeaponFactoryTweakData:_cleanup_unfinished_parts] Default Blueprint: Removing part that do not exists!", data.default_blueprint[i])
					table.remove(data.default_blueprint, i)
				end
			end
		end

		if data.adds then
			for part_id, part_data in pairs(data.adds) do
				for i = #part_data, 1, -1 do
					if not self.parts[part_data[i]] then
						Application:error("[WeaponFactoryTweakData:_cleanup_unfinished_parts] Adds: Removing part that do not exists!", part_data[i])
						table.remove(part_data, i)
					end
				end
			end
		end
	end

	for id, data in pairs(self.parts) do
		if data.adds then
			for i = #data.adds, 1, -1 do
				if not self.parts[data.adds[i]] then
					Application:error("[WeaponFactoryTweakData:_cleanup_unfinished_parts] Part Adds: Removing part that do not exists!", data.adds[i])
					table.remove(data.adds, i)
				end
			end
		end
	end
end

function WeaponFactoryTweakData:_init_m4()
	self.parts.wpn_fps_m4_lower_reciever = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_lower_reciever",
		stats = {value = 1}
	}
	self.parts.wpn_fps_m4_upper_reciever_edge = {
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_upper_reciever_edge",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_m4_upper_reciever_edge",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			recoil = 1,
			damage = 1
		},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_m4_upper_reciever_round = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_m4_upper_reciever_round",
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_upper_reciever_round",
		stats = {value = 1},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_m4_uupg_b_long = {
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_long",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m4_uupg_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			concealment = -2,
			damage = 2,
			spread = 1,
			spread_moving = -3
		}
	}
	self.parts.wpn_fps_m4_uupg_b_short = {
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_short",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m4_uupg_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			spread_moving = 2,
			value = 5,
			concealment = 2
		}
	}
	self.parts.wpn_fps_m4_uupg_b_medium = {
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_medium",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m4_uupg_b_medium",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_m4_uupg_b_sd = {
		type = "barrel",
		a_obj = "a_b",
		sub_type = "silencer",
		name_id = "bm_wp_m4_uupg_b_sd",
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_b_sd",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			value = 6,
			damage = -2,
			suppression = 12,
			spread = -1,
			recoil = 1,
			spread_moving = 1,
			concealment = 1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"},
		forbids = {
			"wpn_fps_m4_uupg_fg_rail_ext",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ass_ns_battle"
		}
	}
	self.parts.wpn_fps_m4_uupg_fg_lr300 = {
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_fg_lr300",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m4_uupg_fg_lr300",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 5,
			spread_moving = 1,
			concealment = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_m4_uupg_fg_rail = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m4_uupg_fg_rail",
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_fg_rail",
		stats = {value = 1},
		adds = {"wpn_fps_m4_uupg_fg_rail_ext"},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_m4_uupg_m_std = {
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_m_std",
		type = "magazine",
		name_id = "bm_wp_m4_uupg_m_std",
		a_obj = "a_m",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 4,
			value = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_m4_uupg_s_fold = {
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_s_fold",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m4_uupg_s_fold",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 5,
			recoil = -1,
			concealment = 3,
			spread_moving = 2
		}
	}
	self.parts.wpn_fps_m4_uupg_o_flipup = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_m4_uupg_o_flipup",
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_o_flipup",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_m4_uupg_draghandle = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_m4_uupg_draghandle",
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_draghandle",
		stats = {value = 1}
	}
	self.parts.wpn_fps_m4_uupg_fg_rail_ext = {
		a_obj = "a_fg",
		type = "foregrip_ext",
		name_id = "bm_wp_m4_uupg_fg_rail_ext",
		unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_fg_rail_ext",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_m4_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_m4_g_standard",
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_m4_g_ergo = {
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_g_ergo",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_m4_g_ergo",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = 2,
			recoil = 1
		}
	}
	self.parts.wpn_fps_upg_m4_g_sniper = {
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_g_sniper",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_m4_g_sniper",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 1,
			spread = 1,
			concealment = -1,
			value = 6,
			spread_moving = -2
		}
	}
	self.parts.wpn_fps_upg_m4_m_drum = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m4_m_drum",
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_m_drum",
		stats = {
			extra_ammo = 20,
			value = 9,
			concealment = -5
		}
	}
	self.parts.wpn_fps_upg_m4_m_pmag = {
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_m_pmag",
		type = "magazine",
		name_id = "bm_wp_m4_m_pmag",
		a_obj = "a_m",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 28,
			prefix = "g_bullet_"
		},
		stats = {
			value = 3,
			spread_moving = 1,
			concealment = 0,
			extra_ammo = 2
		}
	}
	self.parts.wpn_fps_upg_m4_m_straight = {
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_m_straight",
		type = "magazine",
		name_id = "bm_wp_m4_m_straight",
		a_obj = "a_m",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {
			value = 2,
			spread_moving = 2,
			concealment = 1,
			extra_ammo = -4
		}
	}
	self.parts.wpn_fps_upg_m4_s_standard = {
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_s_standard",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m4_s_standard",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread_moving = -1,
			concealment = -1,
			recoil = 1
		},
		adds_type = {"stock_adapter"},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_upg_m4_s_pts = {
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_s_pts",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m4_s_pts",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread_moving = 1,
			spread = 0,
			concealment = -1,
			value = 3,
			recoil = 1
		},
		adds_type = {"stock_adapter"},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_upg_m4_s_adapter = {
		a_obj = "a_s",
		type = "stock_adapter",
		name_id = "bm_wp_m4_s_adapter",
		unit = "units/payday2/weapons/wpn_fps_upg_m4_reusable/wpn_fps_upg_m4_s_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_m4_lower_reciever.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_lower_reciever"
	self.parts.wpn_fps_m4_upper_reciever_edge.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_upper_reciever_edge"
	self.parts.wpn_fps_m4_upper_reciever_round.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_upper_reciever_round"
	self.parts.wpn_fps_m4_uupg_b_long.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_b_long"
	self.parts.wpn_fps_m4_uupg_b_short.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_b_short"
	self.parts.wpn_fps_m4_uupg_b_medium.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_b_medium"
	self.parts.wpn_fps_m4_uupg_b_sd.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_b_sd"
	self.parts.wpn_fps_m4_uupg_draghandle.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_draghandle"
	self.parts.wpn_fps_m4_uupg_fg_lr300.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_fg_lr300"
	self.parts.wpn_fps_m4_uupg_fg_rail.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_fg_rail"
	self.parts.wpn_fps_m4_uupg_fg_rail_ext.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_fg_rail_ext"
	self.parts.wpn_fps_m4_uupg_m_std.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_m_std"
	self.parts.wpn_fps_m4_uupg_o_flipup.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_o_flipup"
	self.parts.wpn_fps_m4_uupg_s_fold.third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_s_fold"
	self.parts.wpn_fps_upg_m4_g_ergo.third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_g_ergo"
	self.parts.wpn_fps_upg_m4_g_sniper.third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_g_sniper"
	self.parts.wpn_fps_upg_m4_g_standard.third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_g_standard"
	self.parts.wpn_fps_upg_m4_m_drum.third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_m_drum"
	self.parts.wpn_fps_upg_m4_m_pmag.third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_m_pmag"
	self.parts.wpn_fps_upg_m4_m_straight.third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_m_straight"
	self.parts.wpn_fps_upg_m4_s_adapter.third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_s_adapter"
	self.parts.wpn_fps_upg_m4_s_pts.third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_s_pts"
	self.parts.wpn_fps_upg_m4_s_standard.third_unit = "units/payday2/weapons/wpn_third_upg_m4_reusable/wpn_third_upg_m4_s_standard"
	self.parts.wpn_fps_m4_upper_reciever_round_vanilla = deep_clone(self.parts.wpn_fps_m4_upper_reciever_round)
	self.parts.wpn_fps_m4_upper_reciever_round_vanilla.stats = nil
	self.parts.wpn_fps_m4_upper_reciever_round_vanilla.pcs = nil
	self.parts.wpn_fps_m4_uupg_draghandle_vanilla = deep_clone(self.parts.wpn_fps_m4_uupg_draghandle)
	self.parts.wpn_fps_m4_uupg_draghandle_vanilla.stats = nil
	self.parts.wpn_fps_m4_uupg_draghandle_vanilla.pcs = nil
	self.parts.wpn_fps_m4_uupg_m_std_vanilla = deep_clone(self.parts.wpn_fps_m4_uupg_m_std)
	self.parts.wpn_fps_m4_uupg_m_std_vanilla.stats = nil
	self.parts.wpn_fps_m4_uupg_m_std_vanilla.pcs = nil
	self.parts.wpn_fps_upg_m4_m_straight_vanilla = deep_clone(self.parts.wpn_fps_upg_m4_m_straight)
	self.parts.wpn_fps_upg_m4_m_straight_vanilla.stats = nil
	self.parts.wpn_fps_upg_m4_m_straight_vanilla.pcs = nil
	self.parts.wpn_fps_upg_m4_s_standard_vanilla = deep_clone(self.parts.wpn_fps_upg_m4_s_standard)
	self.parts.wpn_fps_upg_m4_s_standard_vanilla.stats = nil
	self.parts.wpn_fps_upg_m4_s_standard_vanilla.pcs = nil
	self.parts.wpn_fps_upg_m4_g_standard_vanilla = deep_clone(self.parts.wpn_fps_upg_m4_g_standard)
	self.parts.wpn_fps_upg_m4_g_standard_vanilla.stats = nil
	self.parts.wpn_fps_upg_m4_g_standard_vanilla.pc = nil
	self.parts.wpn_fps_m4_uupg_b_medium_vanilla = deep_clone(self.parts.wpn_fps_m4_uupg_b_medium)
	self.parts.wpn_fps_m4_uupg_b_medium_vanilla.stats = nil
	self.parts.wpn_fps_m4_uupg_b_medium_vanilla.pcs = nil
	self.parts.wpn_fps_m4_uupg_b_short_vanilla = deep_clone(self.parts.wpn_fps_m4_uupg_b_short)
	self.parts.wpn_fps_m4_uupg_b_short_vanilla.stats = nil
	self.parts.wpn_fps_m4_uupg_b_short_vanilla.pcs = nil
	self.wpn_fps_ass_m4 = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		unit = "units/payday2/weapons/wpn_fps_ass_m4/wpn_fps_ass_m4",
		stock_adapter = "wpn_fps_upg_m4_s_adapter",
		default_blueprint = {
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_m4_lower_reciever",
			"wpn_fps_m4_upper_reciever_round",
			"wpn_fps_m4_uupg_b_medium_vanilla",
			"wpn_fps_m4_uupg_fg_rail",
			"wpn_fps_m4_uupg_m_std_vanilla",
			"wpn_fps_upg_m4_s_standard_vanilla",
			"wpn_fps_m4_uupg_draghandle",
			"wpn_fps_m4_uupg_o_flipup"
		},
		override = {wpn_fps_upg_ass_m4_b_beowulf = {a_obj = "a_b_beowulf"}},
		uses_parts = {
			"wpn_fps_m4_lower_reciever",
			"wpn_fps_m4_upper_reciever_edge",
			"wpn_fps_m4_upper_reciever_round",
			"wpn_fps_m4_uupg_b_long",
			"wpn_fps_m4_uupg_b_medium_vanilla",
			"wpn_fps_m4_uupg_b_short",
			"wpn_fps_m4_uupg_b_sd",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_m4_uupg_fg_rail",
			"wpn_fps_m4_uupg_fg_lr300",
			"wpn_fps_m4_uupg_m_std_vanilla",
			"wpn_fps_upg_m4_m_drum",
			"wpn_fps_upg_m4_m_pmag",
			"wpn_fps_upg_m4_m_straight",
			"wpn_fps_m4_uupg_s_fold",
			"wpn_fps_upg_m4_s_standard_vanilla",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_m4_uupg_draghandle",
			"wpn_fps_m4_uupg_o_flipup",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_m4_g_hgrip",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_fg_jp",
			"wpn_fps_upg_fg_smr",
			"wpn_fps_upg_m4_m_quad",
			"wpn_fps_ass_l85a2_m_emag",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_m4_m_l5",
			"wpn_fps_upg_ass_m4_upper_reciever_ballos",
			"wpn_fps_upg_ass_m4_upper_reciever_core",
			"wpn_fps_upg_ass_m4_lower_reciever_core",
			"wpn_fps_m4_uupg_draghandle_ballos",
			"wpn_fps_m4_uupg_draghandle_core",
			"wpn_fps_upg_ass_m4_b_beowulf",
			"wpn_fps_upg_ass_m4_fg_moe",
			"wpn_fps_upg_ass_m4_fg_lvoa",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_m4_upg_m_quick",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_m4_npc = deep_clone(self.wpn_fps_ass_m4)
	self.wpn_fps_ass_m4_npc.unit = "units/payday2/weapons/wpn_fps_ass_m4/wpn_fps_ass_m4_npc"
	self.wpn_fps_ass_m4_secondary = deep_clone(self.wpn_fps_ass_m4)
	self.wpn_fps_ass_m4_secondary.unit = "units/payday2/weapons/wpn_fps_ass_m4/wpn_fps_ass_m4_secondary"
	self.wpn_fps_ass_m4_secondary_npc = deep_clone(self.wpn_fps_ass_m4_npc)
	self.wpn_fps_ass_m4_secondary_npc.unit = "units/payday2/weapons/wpn_fps_ass_m4/wpn_fps_ass_m4_secondary_npc"
end

function WeaponFactoryTweakData:_init_g18c()
	self.parts.wpn_fps_pis_g18c_body_frame = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_g18c_body_frame",
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_body_frame",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_g18c_b_standard = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_g18c_b_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_b_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_g18c_co_1 = {
		parent = "slide",
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_co_1",
		type = "barrel_ext",
		name_id = "bm_wp_g18c_co_1",
		a_obj = "a_co",
		pcs = {
			30,
			40
		},
		stats = {
			concealment = -1,
			damage = 1,
			suppression = -5,
			value = 4,
			recoil = -1
		}
	}
	self.parts.wpn_fps_pis_g18c_co_comp_2 = {
		parent = "slide",
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_co_comp_2",
		type = "barrel_ext",
		name_id = "bm_wp_g18c_co_comp_2",
		a_obj = "a_co",
		pcs = {
			30,
			40
		},
		stats = {
			concealment = -1,
			damage = 1,
			suppression = -1,
			value = 5,
			recoil = 4
		}
	}
	self.parts.wpn_fps_pis_g18c_m_mag_33rnd = {
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_m_mag_33rnd",
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_g18c_m_mag_33rnd",
		pcs = {
			30,
			40
		},
		stats = {
			value = 6,
			spread_moving = -3,
			extra_ammo = 6,
			concealment = -2
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_g18c_m_mag_17rnd = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_g18c_m_mag_17rnd",
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_m_mag_17rnd",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_g18c_s_stock = {
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_s_stock",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_g18c_s_stock",
		pcs = {
			30,
			40
		},
		stats = {
			value = 8,
			recoil = 2,
			concealment = -2
		}
	}
	self.parts.wpn_fps_pis_g18c_g_ergo = {
		unit = "units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_g_ergo",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_g18c_g_ergo",
		pcs = {
			30,
			40
		},
		stats = {
			value = 4,
			recoil = 2,
			spread_moving = 1
		}
	}
	self.parts.wpn_fps_pis_g18c_body_frame.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_body_standard"
	self.parts.wpn_fps_pis_g18c_b_standard.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_b_standard"
	self.parts.wpn_fps_pis_g18c_co_comp_2.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_co_2"
	self.parts.wpn_fps_pis_g18c_co_1.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_co_1"
	self.parts.wpn_fps_pis_g18c_m_mag_33rnd.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_m_mag_33rnd"
	self.parts.wpn_fps_pis_g18c_m_mag_17rnd.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_m_mag_17rnd"
	self.parts.wpn_fps_pis_g18c_s_stock.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_s_stock"
	self.parts.wpn_fps_pis_g18c_g_ergo.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_g_ergo"
	self.wpn_fps_pis_g18c = {
		unit = "units/payday2/weapons/wpn_fps_pis_g18c/wpn_fps_pis_g18c",
		optional_types = {
			"barrel_ext",
			"gadget",
			"stock",
			"grip"
		},
		override = {
			wpn_fps_upg_o_rmr = {parent = "slide"},
			wpn_fps_pis_g26_g_gripforce = {a_obj = "a_g_2"},
			wpn_fps_pis_g26_g_laser = {a_obj = "a_g_2"}
		},
		default_blueprint = {
			"wpn_fps_pis_g18c_body_frame",
			"wpn_fps_pis_g18c_b_standard",
			"wpn_fps_pis_g18c_m_mag_17rnd"
		},
		uses_parts = {
			"wpn_fps_pis_g18c_body_frame",
			"wpn_fps_pis_g18c_b_standard",
			"wpn_fps_pis_g18c_co_1",
			"wpn_fps_pis_g18c_co_comp_2",
			"wpn_fps_pis_g18c_m_mag_33rnd",
			"wpn_fps_pis_g18c_m_mag_17rnd",
			"wpn_fps_pis_g18c_s_stock",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_pis_g18c_g_ergo",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_pis_g26_g_gripforce",
			"wpn_fps_pis_g26_g_laser",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_g18c_npc = deep_clone(self.wpn_fps_pis_g18c)
	self.wpn_fps_pis_g18c_npc.unit = "units/payday2/weapons/wpn_fps_pis_g18c/wpn_fps_pis_g18c_npc"
	self.wpn_fps_pis_g18c_primary = deep_clone(self.wpn_fps_pis_g18c)
	self.wpn_fps_pis_g18c_primary.unit = "units/payday2/weapons/wpn_fps_pis_g18c/wpn_fps_pis_g18c_primary"
	self.wpn_fps_pis_g18c_primary_npc = deep_clone(self.wpn_fps_pis_g18c_npc)
	self.wpn_fps_pis_g18c_primary_npc.unit = "units/payday2/weapons/wpn_fps_pis_g18c/wpn_fps_pis_g18c_primary_npc"
end

function WeaponFactoryTweakData:_init_amcar()
	self.parts.wpn_fps_amcar_uupg_body_upperreciever = {
		a_obj = "a_body",
		type = "sight",
		name_id = "bm_wp_g18c_m_mag_17rnd",
		unit = "units/payday2/weapons/wpn_fps_ass_amcar_pts/wpn_fps_amcar_uupg_body_upperreciever",
		adds = {"wpn_fps_ass_m16_os_frontsight"},
		forbids = {
			"wpn_fps_m4_upper_reciever_round_vanilla",
			"wpn_fps_m4_uupg_draghandle_vanilla",
			"wpn_fps_m4_uupg_fg_rail_ext",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.parts.wpn_fps_amcar_uupg_fg_amcar = {
		a_obj = "a_fg",
		unit = "units/payday2/weapons/wpn_fps_ass_amcar_pts/wpn_fps_amcar_uupg_fg_amcar",
		type = "foregrip"
	}
	self.parts.wpn_fps_amcar_uupg_body_upperreciever.third_unit = "units/payday2/weapons/wpn_third_ass_amcar_pts/wpn_third_amcar_uupg_body_upperreciever"
	self.parts.wpn_fps_amcar_uupg_fg_amcar.third_unit = "units/payday2/weapons/wpn_third_ass_amcar_pts/wpn_third_amcar_uupg_fg_amcar"
	self.wpn_fps_ass_amcar = {
		unit = "units/payday2/weapons/wpn_fps_ass_amcar/wpn_fps_ass_amcar",
		stock_adapter = "wpn_fps_upg_m4_s_adapter",
		adds = {
			wpn_fps_upg_o_specter = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_aimpoint = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_aimpoint_2 = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_docter = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_eotech = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_t1micro = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_cmore = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_eotech_xps = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_reflex = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_rx01 = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_rx30 = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_acog = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_cs = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			},
			wpn_fps_upg_o_spot = {
				"wpn_fps_m4_upper_reciever_round_vanilla",
				"wpn_fps_m4_uupg_draghandle_vanilla",
				"wpn_fps_m4_uupg_fg_rail_ext"
			}
		},
		default_blueprint = {
			"wpn_fps_m4_uupg_b_medium_vanilla",
			"wpn_fps_m4_lower_reciever",
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_amcar_uupg_fg_amcar",
			"wpn_fps_upg_m4_m_straight_vanilla",
			"wpn_fps_upg_m4_s_standard_vanilla",
			"wpn_fps_upg_m4_g_standard_vanilla"
		},
		uses_parts = {
			"wpn_fps_m4_uupg_b_medium_vanilla",
			"wpn_fps_m4_lower_reciever",
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_m4_upper_reciever_round_vanilla",
			"wpn_fps_amcar_uupg_fg_amcar",
			"wpn_fps_upg_m4_m_straight_vanilla",
			"wpn_fps_m4_uupg_m_std",
			"wpn_fps_upg_m4_s_standard_vanilla",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_m_quad",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_m4_m_l5",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_m4_upg_m_quick",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_amcar_npc = deep_clone(self.wpn_fps_ass_amcar)
	self.wpn_fps_ass_amcar_npc.unit = "units/payday2/weapons/wpn_fps_ass_amcar/wpn_fps_ass_amcar_npc"
end

function WeaponFactoryTweakData:_init_m16()
	self.parts.wpn_fps_m16_fg_railed = {
		unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_m16_fg_railed",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m16_fg_railed",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 7,
			spread_moving = -2,
			recoil = 2,
			concealment = -2
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_m16_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m16_fg_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_m16_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_m16_fg_vietnam = {
		unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_m16_fg_vietnam",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m16_fg_vietnam",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 10,
			spread_moving = 1,
			recoil = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_m16_s_solid = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m16_s_solid",
		unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_m16_s_solid",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_m16_o_handle_sight = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_m16_o_handle_sight",
		unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_ass_m16_o_handle_sight",
		stats = {value = 1},
		adds = {"wpn_fps_ass_m16_os_frontsight"},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_ass_m16_os_frontsight = {
		a_obj = "a_os",
		type = "sight_special",
		name_id = "bm_wp_m16_os_frontsight",
		unit = "units/payday2/weapons/wpn_fps_ass_m16_pts/wpn_fps_ass_m16_os_frontsight",
		stats = {value = 1}
	}
	self.parts.wpn_fps_m16_fg_railed.third_unit = "units/payday2/weapons/wpn_third_ass_m16_pts/wpn_third_m16_fg_railed"
	self.parts.wpn_fps_m16_fg_standard.third_unit = "units/payday2/weapons/wpn_third_ass_m16_pts/wpn_third_m16_fg_standard"
	self.parts.wpn_fps_m16_fg_vietnam.third_unit = "units/payday2/weapons/wpn_third_ass_m16_pts/wpn_third_m16_fg_vietnam"
	self.parts.wpn_fps_m16_s_solid.third_unit = "units/payday2/weapons/wpn_third_ass_m16_pts/wpn_third_m16_s_solid"
	self.parts.wpn_fps_ass_m16_o_handle_sight.third_unit = "units/payday2/weapons/wpn_third_ass_m16_pts/wpn_third_ass_m16_o_handle_sight"
	self.parts.wpn_fps_ass_m16_os_frontsight.third_unit = "units/payday2/weapons/wpn_third_ass_m16_pts/wpn_third_ass_m16_os_frontsight"
	self.parts.wpn_fps_m16_s_solid_vanilla = deep_clone(self.parts.wpn_fps_m16_s_solid)
	self.parts.wpn_fps_m16_s_solid_vanilla.stats = nil
	self.parts.wpn_fps_m16_s_solid_vanilla.pc = nil
	self.wpn_fps_ass_m16 = {
		unit = "units/payday2/weapons/wpn_fps_ass_m16/wpn_fps_ass_m16",
		stock_adapter = "wpn_fps_upg_m4_s_adapter",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		override = {wpn_fps_upg_ass_m4_b_beowulf = {
			stats = {
				spread = 4,
				total_ammo_mod = -4,
				damage = 80,
				concealment = -4,
				value = 1,
				recoil = -4
			},
			custom_stats = {
				ammo_pickup_max_mul = 0.8,
				ammo_pickup_min_mul = 0.8
			}
		}},
		default_blueprint = {
			"wpn_fps_m4_lower_reciever",
			"wpn_fps_m4_upper_reciever_round",
			"wpn_fps_m4_uupg_draghandle",
			"wpn_fps_upg_m4_m_straight_vanilla",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_m16_fg_standard",
			"wpn_fps_m4_uupg_b_medium_vanilla",
			"wpn_fps_ass_m16_o_handle_sight",
			"wpn_fps_m16_s_solid_vanilla"
		},
		uses_parts = {
			"wpn_fps_m16_fg_railed",
			"wpn_fps_m16_fg_standard",
			"wpn_fps_m16_fg_vietnam",
			"wpn_fps_m4_lower_reciever",
			"wpn_fps_m4_upper_reciever_edge",
			"wpn_fps_m4_uupg_draghandle",
			"wpn_fps_m4_uupg_b_long",
			"wpn_fps_m4_uupg_b_medium_vanilla",
			"wpn_fps_m4_upper_reciever_round",
			"wpn_fps_m16_s_solid_vanilla",
			"wpn_fps_m4_uupg_m_std",
			"wpn_fps_upg_m4_m_drum",
			"wpn_fps_upg_m4_m_pmag",
			"wpn_fps_upg_m4_m_straight_vanilla",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_ass_m16_o_handle_sight",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_m4_g_hgrip",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_m_quad",
			"wpn_fps_ass_l85a2_m_emag",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_m4_m_l5",
			"wpn_fps_upg_ass_m4_upper_reciever_ballos",
			"wpn_fps_upg_ass_m4_upper_reciever_core",
			"wpn_fps_upg_ass_m4_lower_reciever_core",
			"wpn_fps_m4_uupg_draghandle_ballos",
			"wpn_fps_m4_uupg_draghandle_core",
			"wpn_fps_upg_ass_m4_b_beowulf",
			"wpn_fps_upg_ass_m16_fg_stag",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_ass_m16_b_legend",
			"wpn_fps_ass_m16_fg_legend",
			"wpn_fps_ass_m16_s_legend",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_m4_upg_m_quick",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_m16_npc = deep_clone(self.wpn_fps_ass_m16)
	self.wpn_fps_ass_m16_npc.unit = "units/payday2/weapons/wpn_fps_ass_m16/wpn_fps_ass_m16_npc"
end

function WeaponFactoryTweakData:_init_olympic()
	self.parts.wpn_fps_smg_olympic_fg_railed = {
		unit = "units/payday2/weapons/wpn_fps_smg_olympic_pts/wpn_fps_smg_olympic_fg_railed",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_olympic_fg_railed",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 4,
			spread_moving = -1,
			recoil = 1,
			concealment = -1
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_smg_olympic_fg_olympic = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_olympic_fg_olympic",
		unit = "units/payday2/weapons/wpn_fps_smg_olympic_pts/wpn_fps_smg_olympic_fg_olympic",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_olympic_s_short = {
		unit = "units/payday2/weapons/wpn_fps_smg_olympic_pts/wpn_fps_smg_olympic_s_short",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_olympic_s_short",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 5,
			recoil = -1,
			spread_moving = 3,
			concealment = 2
		}
	}
	self.parts.wpn_fps_smg_olympic_s_adjust = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_olympic_s_adjust",
		unit = "units/payday2/weapons/wpn_fps_smg_olympic_pts/wpn_fps_smg_olympic_s_adjust",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_olympic_fg_railed.third_unit = "units/payday2/weapons/wpn_third_smg_olympic_pts/wpn_third_smg_olympic_fg_railed"
	self.parts.wpn_fps_smg_olympic_fg_olympic.third_unit = "units/payday2/weapons/wpn_third_smg_olympic_pts/wpn_third_smg_olympic_fg_olympic"
	self.parts.wpn_fps_smg_olympic_s_short.third_unit = "units/payday2/weapons/wpn_third_smg_olympic_pts/wpn_third_smg_olympic_s_short"
	self.parts.wpn_fps_smg_olympic_s_adjust.third_unit = "units/payday2/weapons/wpn_third_smg_olympic_pts/wpn_third_smg_olympic_s_adjust"
	self.wpn_fps_smg_olympic = {
		unit = "units/payday2/weapons/wpn_fps_smg_olympic/wpn_fps_smg_olympic",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		stock_adapter = "wpn_fps_upg_m4_s_adapter",
		default_blueprint = {
			"wpn_fps_smg_olympic_s_adjust",
			"wpn_fps_m4_uupg_draghandle",
			"wpn_fps_upg_m4_m_straight_vanilla",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_m4_uupg_b_short_vanilla",
			"wpn_fps_m4_upper_reciever_round",
			"wpn_fps_m4_lower_reciever",
			"wpn_fps_smg_olympic_fg_olympic",
			"wpn_fps_ass_m16_o_handle_sight"
		},
		uses_parts = {
			"wpn_fps_m4_lower_reciever",
			"wpn_fps_m4_upper_reciever_edge",
			"wpn_fps_m4_upper_reciever_round",
			"wpn_fps_m4_uupg_draghandle",
			"wpn_fps_smg_olympic_fg_olympic",
			"wpn_fps_smg_olympic_fg_railed",
			"wpn_fps_smg_olympic_s_short",
			"wpn_fps_smg_olympic_s_adjust",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_m4_uupg_b_short_vanilla",
			"wpn_fps_m4_uupg_b_medium",
			"wpn_fps_m4_uupg_m_std",
			"wpn_fps_upg_m4_m_drum",
			"wpn_fps_upg_m4_m_pmag",
			"wpn_fps_upg_m4_m_straight_vanilla",
			"wpn_fps_ass_m16_o_handle_sight",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_m4_g_hgrip",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_m_quad",
			"wpn_fps_ass_l85a2_m_emag",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_m4_m_l5",
			"wpn_fps_upg_ass_m4_upper_reciever_ballos",
			"wpn_fps_upg_ass_m4_upper_reciever_core",
			"wpn_fps_upg_ass_m4_lower_reciever_core",
			"wpn_fps_m4_uupg_draghandle_ballos",
			"wpn_fps_m4_uupg_draghandle_core",
			"wpn_fps_upg_smg_olympic_fg_lr300",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_m4_upg_m_quick",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_olympic_npc = deep_clone(self.wpn_fps_smg_olympic)
	self.wpn_fps_smg_olympic_npc.unit = "units/payday2/weapons/wpn_fps_smg_olympic/wpn_fps_smg_olympic_npc"
	self.wpn_fps_smg_olympic_primary = deep_clone(self.wpn_fps_smg_olympic)
	self.wpn_fps_smg_olympic_primary.unit = "units/payday2/weapons/wpn_fps_smg_olympic/wpn_fps_smg_olympic_primary"
	self.wpn_fps_smg_olympic_primary_npc = deep_clone(self.wpn_fps_smg_olympic_npc)
	self.wpn_fps_smg_olympic_primary_npc.unit = "units/payday2/weapons/wpn_fps_smg_olympic/wpn_fps_smg_olympic_primary_npc"
end

function WeaponFactoryTweakData:_init_ak_parts()
	self.parts.wpn_upg_ak_fg_combo1 = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ak_fg_combo1",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_fg_combo1",
		stats = {value = 1}
	}
	self.parts.wpn_upg_ak_fg_combo2 = {
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_fg_combo2",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ak_fg_combo2",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = -1,
			spread = 1,
			recoil = 1
		},
		forbids = {"wpn_fps_ak_extra_ris"}
	}
	self.parts.wpn_upg_ak_fg_combo3 = {
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_fg_combo3",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ak_fg_combo3",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread_moving = -2,
			value = 5,
			concealment = -1,
			spread = 1,
			recoil = 2
		},
		forbids = {
			"wpn_fps_addon_ris",
			"wpn_fps_ak_extra_ris"
		}
	}
	self.parts.wpn_upg_ak_fg_combo4 = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ak_fg_combo4",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_fg_combo4",
		stats = {value = 1}
	}
	self.parts.wpn_upg_ak_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ak_fg_standard",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_fg_standard",
		stats = {value = 1},
		override = {
			wpn_fps_upg_o_specter = {a_obj = "a_of"},
			wpn_fps_upg_o_aimpoint = {a_obj = "a_of"},
			wpn_fps_upg_o_aimpoint_2 = {a_obj = "a_of"},
			wpn_fps_upg_o_docter = {a_obj = "a_of"},
			wpn_fps_upg_o_eotech = {a_obj = "a_of"},
			wpn_fps_upg_o_t1micro = {a_obj = "a_of"},
			wpn_fps_upg_o_cmore = {a_obj = "a_of"},
			wpn_fps_upg_o_acog = {a_obj = "a_of"},
			wpn_fps_upg_o_cs = {a_obj = "a_of"},
			wpn_fps_upg_o_eotech_xps = {a_obj = "a_of"},
			wpn_fps_upg_o_reflex = {a_obj = "a_of"},
			wpn_fps_upg_o_rx01 = {a_obj = "a_of"},
			wpn_fps_upg_o_rx30 = {a_obj = "a_of"},
			wpn_fps_upg_o_spot = {a_obj = "a_of"}
		}
	}
	self.parts.wpn_upg_ak_fg_standard_gold = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ak_fg_standard_gold",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_fg_standard_gold",
		stats = {value = 1},
		override = {
			wpn_fps_upg_o_specter = {a_obj = "a_of"},
			wpn_fps_upg_o_aimpoint = {a_obj = "a_of"},
			wpn_fps_upg_o_aimpoint_2 = {a_obj = "a_of"},
			wpn_fps_upg_o_docter = {a_obj = "a_of"},
			wpn_fps_upg_o_eotech = {a_obj = "a_of"},
			wpn_fps_upg_o_t1micro = {a_obj = "a_of"},
			wpn_fps_upg_o_cmore = {a_obj = "a_of"},
			wpn_fps_upg_o_acog = {a_obj = "a_of"},
			wpn_fps_upg_o_cs = {a_obj = "a_of"},
			wpn_fps_upg_o_eotech_xps = {a_obj = "a_of"},
			wpn_fps_upg_o_reflex = {a_obj = "a_of"},
			wpn_fps_upg_o_rx01 = {a_obj = "a_of"},
			wpn_fps_upg_o_rx30 = {a_obj = "a_of"},
			wpn_fps_upg_o_spot = {a_obj = "a_of"}
		}
	}
	self.parts.wpn_upg_ak_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_ak_g_standard",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_upg_ak_m_akm = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_ak_m_akm",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_m_akm",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_upg_ak_m_akm_gold = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_ak_m_akm_gold",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_m_akm_gold",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_upg_ak_m_drum = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_ak_m_drum",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_m_drum",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			value = 5,
			concealment = -4
		}
	}
	self.parts.wpn_upg_ak_s_adapter = {
		a_obj = "a_s",
		type = "stock_adapter",
		name_id = "bm_wp_ak_s_adapter",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_s_adapter",
		stats = {value = 1},
		adds = {"wpn_upg_ak_g_standard"}
	}
	self.parts.wpn_upg_ak_s_folding = {
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_s_folding",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ak_s_folding",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = 2,
			recoil = -1,
			concealment = 2
		},
		adds = {"wpn_upg_ak_g_standard"}
	}
	self.parts.wpn_upg_ak_s_folding_vanilla_gold = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ak_s_folding",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_s_folding_gold",
		stats = {value = 1},
		adds = {"wpn_upg_ak_g_standard"}
	}
	self.parts.wpn_upg_ak_s_psl = {
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_s_psl",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ak_s_psl",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread_moving = -3,
			spread = 3,
			concealment = -3,
			value = 6,
			recoil = 0
		},
		forbids = {
			"wpn_upg_ak_g_standard",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_rk3"
		}
	}
	self.parts.wpn_upg_ak_s_skfoldable = {
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_s_skfoldable",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ak_s_skfoldable",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = 2,
			recoil = -1,
			concealment = 2
		},
		adds = {"wpn_upg_ak_g_standard"}
	}
	self.parts.wpn_fps_ak_extra_ris = {
		name_id = "bm_wp_ak_s_skfoldable",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_fps_ak_extra_ris",
		a_obj = "a_of",
		type = "extra"
	}
	self.parts.wpn_fps_ak_bolt = {
		name_id = "bm_wp_ak_s_skfoldable",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_fps_ak_bolt",
		a_obj = "a_bolt",
		type = "drag_handle"
	}
	self.parts.wpn_upg_ak_fg_combo1.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_fg_combo1"
	self.parts.wpn_upg_ak_fg_combo2.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_fg_combo2"
	self.parts.wpn_upg_ak_fg_combo3.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_fg_combo3"
	self.parts.wpn_upg_ak_fg_combo4.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_fg_combo4"
	self.parts.wpn_upg_ak_fg_standard.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_fg_standard"
	self.parts.wpn_upg_ak_fg_standard_gold.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_fg_standard_gold"
	self.parts.wpn_upg_ak_g_standard.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_g_standard"
	self.parts.wpn_upg_ak_m_akm.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_m_akm"
	self.parts.wpn_upg_ak_m_akm_gold.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_m_akm_gold"
	self.parts.wpn_upg_ak_m_drum.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_m_drum"
	self.parts.wpn_upg_ak_s_adapter.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_s_adapter"
	self.parts.wpn_upg_ak_s_folding.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_s_folding"
	self.parts.wpn_upg_ak_s_folding_vanilla_gold.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_s_folding_gold"
	self.parts.wpn_upg_ak_s_psl.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_s_psl"
	self.parts.wpn_upg_ak_s_skfoldable.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_s_skfoldable"
	self.parts.wpn_fps_ak_extra_ris.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_ak_extra_ris"
	self.parts.wpn_fps_ak_bolt.third_unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_third_ak_bolt"
	self.parts.wpn_upg_ak_s_folding_vanilla = deep_clone(self.parts.wpn_upg_ak_s_folding)
	self.parts.wpn_upg_ak_s_folding_vanilla.stats = nil
	self.parts.wpn_upg_ak_s_folding_vanilla.pcs = nil
	self.parts.wpn_upg_ak_s_skfoldable_vanilla = deep_clone(self.parts.wpn_upg_ak_s_skfoldable)
	self.parts.wpn_upg_ak_s_skfoldable_vanilla.stats = nil
	self.parts.wpn_upg_ak_s_skfoldable_vanilla.pcs = nil
	self.parts.wpn_fps_ass_akm_body_upperreceiver = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_akm_body_upperreceiver",
		unit = "units/payday2/weapons/wpn_fps_ass_akm_pts/wpn_fps_ass_akm_body_upperreceiver",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_akm_body_upperreceiver_gold = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_akm_body_upperreceiver_gold",
		unit = "units/payday2/weapons/wpn_fps_ass_akm_gold_pts/wpn_fps_ass_akm_body_upperreceiver_gold",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ak_body_lowerreceiver = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_ak_body_lowerreceiver",
		unit = "units/payday2/weapons/wpn_fps_ass_akm_pts/wpn_fps_ass_ak_body_lowerreceiver",
		stats = {value = 1},
		adds = {"wpn_fps_ak_bolt"}
	}
	self.parts.wpn_fps_ass_ak_body_lowerreceiver_gold = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_ak_body_lowerreceiver_gold",
		unit = "units/payday2/weapons/wpn_fps_ass_akm_gold_pts/wpn_fps_ass_ak_body_lowerreceiver_gold",
		stats = {value = 1},
		adds = {"wpn_fps_ak_bolt"}
	}
	self.parts.wpn_fps_ass_akm_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_akm_b_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_akm_pts/wpn_fps_ass_akm_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_akm_b_standard_gold = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_akm_b_standard_gold",
		unit = "units/payday2/weapons/wpn_fps_ass_akm_gold_pts/wpn_fps_ass_akm_b_standard_gold",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_akm_body_upperreceiver.third_unit = "units/payday2/weapons/wpn_third_ass_akm_pts/wpn_third_ass_akm_body_upperreceiver"
	self.parts.wpn_fps_ass_akm_body_upperreceiver_gold.third_unit = "units/payday2/weapons/wpn_third_ass_akm_pts/wpn_third_ass_akm_body_upperreceiver_gold"
	self.parts.wpn_fps_ass_akm_b_standard.third_unit = "units/payday2/weapons/wpn_third_ass_akm_pts/wpn_third_ass_akm_b_standard"
	self.parts.wpn_fps_ass_akm_b_standard_gold.third_unit = "units/payday2/weapons/wpn_third_ass_akm_pts/wpn_third_ass_akm_b_standard_gold"
	self.parts.wpn_fps_ass_ak_body_lowerreceiver.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_ass_ak_body_lowerreceiver"
	self.parts.wpn_fps_ass_ak_body_lowerreceiver_gold.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_ass_ak_body_lowerreceiver_gold"
	self.parts.wpn_fps_ass_akm_body_upperreceiver_vanilla = deep_clone(self.parts.wpn_fps_ass_akm_body_upperreceiver)
	self.parts.wpn_fps_ass_akm_body_upperreceiver_vanilla.stats = nil
	self.parts.wpn_fps_ass_akm_body_upperreceiver_vanilla.pc = nil
end

function WeaponFactoryTweakData:_init_ak74()
	self.parts.wpn_fps_ass_74_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_74_b_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_74_pts/wpn_fps_ass_74_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_74_body_upperreceiver = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_74_body_upperreceiver",
		unit = "units/payday2/weapons/wpn_fps_ass_74_pts/wpn_fps_ass_74_body_upperreceiver",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_74_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_74_m_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_74_pts/wpn_fps_ass_74_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_74_b_standard.third_unit = "units/payday2/weapons/wpn_third_ass_74_pts/wpn_third_ass_74_b_standard"
	self.parts.wpn_fps_ass_74_body_upperreceiver.third_unit = "units/payday2/weapons/wpn_third_ass_74_pts/wpn_third_ass_74_body_upperreceiver"
	self.parts.wpn_fps_ass_74_m_standard.third_unit = "units/payday2/weapons/wpn_third_ass_74_pts/wpn_third_ass_74_m_standard"
	self.wpn_fps_ass_74 = {
		unit = "units/payday2/weapons/wpn_fps_ass_74/wpn_fps_ass_74",
		stock_adapter = "wpn_upg_ak_s_adapter",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		override = {wpn_fps_upg_ass_ak_b_zastava = {
			stats = {
				spread = 3,
				total_ammo_mod = -12,
				damage = 120,
				concealment = -4,
				value = 1,
				recoil = -9
			},
			custom_stats = {
				ammo_pickup_max_mul = 0.5,
				ammo_pickup_min_mul = 0.5
			}
		}},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_docter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_acog = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cs = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_spot = {"wpn_fps_ak_extra_ris"}
		},
		default_blueprint = {
			"wpn_fps_ass_74_b_standard",
			"wpn_fps_ass_74_body_upperreceiver",
			"wpn_fps_ass_ak_body_lowerreceiver",
			"wpn_fps_ass_74_m_standard",
			"wpn_upg_ak_fg_standard",
			"wpn_upg_ak_s_skfoldable_vanilla"
		},
		uses_parts = {
			"wpn_fps_ass_74_b_standard",
			"wpn_fps_ass_74_body_upperreceiver",
			"wpn_fps_ass_akm_body_upperreceiver",
			"wpn_fps_ass_ak_body_lowerreceiver",
			"wpn_fps_ass_74_m_standard",
			"wpn_upg_ak_m_drum",
			"wpn_upg_ak_fg_standard",
			"wpn_upg_ak_fg_combo2",
			"wpn_upg_ak_fg_combo3",
			"wpn_upg_ak_fg_combo1",
			"wpn_upg_ak_fg_combo4",
			"wpn_upg_ak_g_standard",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_upg_ak_s_folding",
			"wpn_upg_ak_s_psl",
			"wpn_upg_ak_s_skfoldable_vanilla",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_ak_fg_tapco",
			"wpn_fps_upg_fg_midwest",
			"wpn_fps_upg_ak_b_draco",
			"wpn_fps_upg_ak_m_quad",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ak_g_rk3",
			"wpn_fps_upg_ak_s_solidstock",
			"wpn_fps_upg_o_ak_scopemount",
			"wpn_fps_upg_ns_ass_pbs1",
			"wpn_fps_upg_ak_m_uspalm",
			"wpn_fps_upg_ak_fg_krebs",
			"wpn_fps_upg_ak_fg_trax",
			"wpn_fps_upg_ak_b_ak105",
			"wpn_fps_upg_ak_ns_ak105",
			"wpn_fps_upg_ass_ak_b_zastava",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_ass_74_b_legend",
			"wpn_upg_ak_fg_legend",
			"wpn_upg_ak_g_legend",
			"wpn_upg_ak_s_legend",
			"wpn_upg_ak_fl_legend",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ak_m_quick",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_74_npc = deep_clone(self.wpn_fps_ass_74)
	self.wpn_fps_ass_74_npc.unit = "units/payday2/weapons/wpn_fps_ass_74/wpn_fps_ass_74_npc"
	self.wpn_fps_ass_74_secondary = deep_clone(self.wpn_fps_ass_74)
	self.wpn_fps_ass_74_secondary.unit = "units/payday2/weapons/wpn_fps_ass_74/wpn_fps_ass_74_secondary"
	self.wpn_fps_ass_74_secondary_npc = deep_clone(self.wpn_fps_ass_74_npc)
	self.wpn_fps_ass_74_secondary_npc.unit = "units/payday2/weapons/wpn_fps_ass_74/wpn_fps_ass_74_secondary_npc"
end

function WeaponFactoryTweakData:_init_akm()
	self.wpn_fps_ass_akm = {
		unit = "units/payday2/weapons/wpn_fps_ass_akm/wpn_fps_ass_akm",
		stock_adapter = "wpn_upg_ak_s_adapter",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip",
			"sight"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_docter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_acog = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cs = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_spot = {"wpn_fps_ak_extra_ris"}
		},
		default_blueprint = {
			"wpn_upg_ak_s_folding_vanilla",
			"wpn_upg_ak_fg_standard",
			"wpn_upg_ak_m_akm",
			"wpn_upg_ak_g_standard",
			"wpn_fps_ass_akm_b_standard",
			"wpn_fps_ass_akm_body_upperreceiver_vanilla",
			"wpn_fps_ass_ak_body_lowerreceiver"
		},
		uses_parts = {
			"wpn_fps_ass_akm_b_standard",
			"wpn_fps_ass_akm_body_upperreceiver_vanilla",
			"wpn_fps_ass_ak_body_lowerreceiver",
			"wpn_upg_ak_m_akm",
			"wpn_upg_ak_fg_standard",
			"wpn_upg_ak_fg_combo2",
			"wpn_upg_ak_fg_combo3",
			"wpn_upg_ak_g_standard",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_upg_ak_s_folding_vanilla",
			"wpn_upg_ak_s_psl",
			"wpn_upg_ak_s_skfoldable",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ak_fg_tapco",
			"wpn_fps_upg_fg_midwest",
			"wpn_fps_upg_ak_b_draco",
			"wpn_fps_upg_ak_m_quad",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ak_g_rk3",
			"wpn_fps_upg_ak_s_solidstock",
			"wpn_fps_upg_o_ak_scopemount",
			"wpn_fps_upg_ns_ass_pbs1",
			"wpn_fps_upg_ak_m_uspalm",
			"wpn_fps_upg_ak_fg_krebs",
			"wpn_fps_upg_ak_fg_trax",
			"wpn_fps_upg_ak_b_ak105",
			"wpn_fps_upg_ak_ns_ak105",
			"wpn_fps_upg_ass_ak_b_zastava",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ak_m_quick",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_akm_npc = deep_clone(self.wpn_fps_ass_akm)
	self.wpn_fps_ass_akm_npc.unit = "units/payday2/weapons/wpn_fps_ass_akm/wpn_fps_ass_akm_npc"
end

function WeaponFactoryTweakData:_init_akm_gold()
	self.wpn_fps_ass_akm_gold = {
		unit = "units/payday2/weapons/wpn_fps_ass_akm_gold/wpn_fps_ass_akm_gold",
		stock_adapter = "wpn_upg_ak_s_adapter",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip",
			"sight"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_docter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_acog = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cs = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_spot = {"wpn_fps_ak_extra_ris"}
		},
		default_blueprint = {
			"wpn_upg_ak_s_folding_vanilla_gold",
			"wpn_upg_ak_fg_standard_gold",
			"wpn_upg_ak_m_akm_gold",
			"wpn_upg_ak_g_standard",
			"wpn_fps_ass_akm_b_standard_gold",
			"wpn_fps_ass_akm_body_upperreceiver_gold",
			"wpn_fps_ass_ak_body_lowerreceiver_gold"
		},
		uses_parts = {
			"wpn_fps_ass_akm_b_standard_gold",
			"wpn_fps_ass_akm_body_upperreceiver_gold",
			"wpn_fps_ass_ak_body_lowerreceiver_gold",
			"wpn_upg_ak_m_akm_gold",
			"wpn_upg_ak_fg_standard_gold",
			"wpn_upg_ak_fg_combo2",
			"wpn_upg_ak_fg_combo3",
			"wpn_upg_ak_g_standard",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_upg_ak_s_folding_vanilla_gold",
			"wpn_upg_ak_s_psl",
			"wpn_upg_ak_s_skfoldable",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ak_fg_tapco",
			"wpn_fps_upg_fg_midwest",
			"wpn_fps_upg_ak_b_draco",
			"wpn_fps_upg_ak_m_quad",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ak_g_rk3",
			"wpn_fps_upg_ak_s_solidstock",
			"wpn_fps_upg_o_ak_scopemount",
			"wpn_fps_upg_ns_ass_pbs1",
			"wpn_fps_upg_ak_m_uspalm",
			"wpn_fps_upg_ak_fg_krebs",
			"wpn_fps_upg_ak_fg_trax",
			"wpn_fps_upg_ak_b_ak105",
			"wpn_fps_upg_ak_ns_ak105",
			"wpn_fps_upg_ass_ak_b_zastava",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ak_m_quick",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_akm_gold_npc = deep_clone(self.wpn_fps_ass_akm_gold)
	self.wpn_fps_ass_akm_gold_npc.unit = "units/payday2/weapons/wpn_fps_ass_akm_gold/wpn_fps_ass_akm_gold_npc"
end

function WeaponFactoryTweakData:_init_akmsu()
	self.parts.wpn_fps_smg_akmsu_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_akmsu_b_standard",
		unit = "units/payday2/weapons/wpn_fps_smg_akmsu_pts/wpn_fps_smg_akmsu_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_akmsu_body_lowerreceiver = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_akmsu_body_lowerreceiver",
		unit = "units/payday2/weapons/wpn_fps_smg_akmsu_pts/wpn_fps_smg_akmsu_body_lowerreceiver",
		stats = {value = 1},
		adds = {"wpn_fps_ak_bolt"}
	}
	self.parts.wpn_fps_smg_akmsu_fg_rail = {
		unit = "units/payday2/weapons/wpn_fps_smg_akmsu_pts/wpn_fps_smg_akmsu_fg_rail",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_akmsu_fg_rail",
		pcs = {
			30,
			40
		},
		stats = {
			value = 5,
			spread_moving = -2,
			recoil = 2,
			concealment = -2
		},
		forbids = {
			"wpn_fps_addon_ris",
			"wpn_fps_ak_extra_ris"
		}
	}
	self.parts.wpn_fps_smg_akmsu_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_akmsu_fg_standard",
		unit = "units/payday2/weapons/wpn_fps_smg_akmsu_pts/wpn_fps_smg_akmsu_fg_standard",
		stats = {value = 1},
		override = {
			wpn_fps_upg_o_specter = {a_obj = "a_of"},
			wpn_fps_upg_o_aimpoint = {a_obj = "a_of"},
			wpn_fps_upg_o_aimpoint_2 = {a_obj = "a_of"},
			wpn_fps_upg_o_docter = {a_obj = "a_of"},
			wpn_fps_upg_o_eotech = {a_obj = "a_of"},
			wpn_fps_upg_o_t1micro = {a_obj = "a_of"},
			wpn_fps_upg_o_cmore = {a_obj = "a_of"},
			wpn_fps_upg_o_acog = {a_obj = "a_of"},
			wpn_fps_upg_o_cs = {a_obj = "a_of"},
			wpn_fps_upg_o_eotech_xps = {a_obj = "a_of"},
			wpn_fps_upg_o_reflex = {a_obj = "a_of"},
			wpn_fps_upg_o_rx01 = {a_obj = "a_of"},
			wpn_fps_upg_o_rx30 = {a_obj = "a_of"},
			wpn_fps_upg_o_rx30 = {a_obj = "a_of"}
		}
	}
	self.parts.wpn_fps_smg_akmsu_b_standard.third_unit = "units/payday2/weapons/wpn_third_smg_akmsu_pts/wpn_third_smg_akmsu_b_standard"
	self.parts.wpn_fps_smg_akmsu_body_lowerreceiver.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_akmsu_body_lowerreceiver"
	self.parts.wpn_fps_smg_akmsu_fg_rail.third_unit = "units/payday2/weapons/wpn_third_smg_akmsu_pts/wpn_third_smg_akmsu_fg_rail"
	self.parts.wpn_fps_smg_akmsu_fg_standard.third_unit = "units/payday2/weapons/wpn_third_smg_akmsu_pts/wpn_third_smg_akmsu_fg_standard"
	self.wpn_fps_smg_akmsu = {
		unit = "units/payday2/weapons/wpn_fps_smg_akmsu/wpn_fps_smg_akmsu",
		stock_adapter = "wpn_upg_ak_s_adapter",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_docter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_acog = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cs = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_spot = {"wpn_fps_ak_extra_ris"}
		},
		default_blueprint = {
			"wpn_fps_smg_akmsu_body_lowerreceiver",
			"wpn_fps_ass_akm_body_upperreceiver_vanilla",
			"wpn_fps_smg_akmsu_b_standard",
			"wpn_fps_smg_akmsu_fg_standard",
			"wpn_upg_ak_s_folding_vanilla",
			"wpn_upg_ak_g_standard",
			"wpn_upg_ak_m_akm"
		},
		uses_parts = {
			"wpn_fps_smg_akmsu_body_lowerreceiver",
			"wpn_fps_ass_akm_body_upperreceiver_vanilla",
			"wpn_fps_smg_akmsu_b_standard",
			"wpn_fps_smg_akmsu_fg_standard",
			"wpn_fps_smg_akmsu_fg_rail",
			"wpn_upg_ak_g_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_upg_ak_m_akm",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_upg_ak_s_folding_vanilla",
			"wpn_upg_ak_s_psl",
			"wpn_upg_ak_s_skfoldable",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_ak_m_quad",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ak_g_rk3",
			"wpn_fps_upg_ak_s_solidstock",
			"wpn_fps_upg_o_ak_scopemount",
			"wpn_fps_upg_ns_ass_pbs1",
			"wpn_fps_upg_ak_m_uspalm",
			"wpn_fps_upg_ak_fg_zenit",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ak_m_quick",
			"wpn_fps_snp_tti_s_vltor"
		}
	}
	self.wpn_fps_smg_akmsu_npc = deep_clone(self.wpn_fps_smg_akmsu)
	self.wpn_fps_smg_akmsu_npc.unit = "units/payday2/weapons/wpn_fps_smg_akmsu/wpn_fps_smg_akmsu_npc"
	self.wpn_fps_smg_akmsu_primary = deep_clone(self.wpn_fps_smg_akmsu)
	self.wpn_fps_smg_akmsu_primary.unit = "units/payday2/weapons/wpn_fps_smg_akmsu/wpn_fps_smg_akmsu_primary"
	self.wpn_fps_smg_akmsu_primary_npc = deep_clone(self.wpn_fps_smg_akmsu_npc)
	self.wpn_fps_smg_akmsu_primary_npc.unit = "units/payday2/weapons/wpn_fps_smg_akmsu/wpn_fps_smg_akmsu_primary_npc"
end

function WeaponFactoryTweakData:_init_saiga()
	self.parts.wpn_fps_shot_saiga_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_saiga_b_standard",
		unit = "units/payday2/weapons/wpn_fps_shot_saiga_pts/wpn_fps_shot_saiga_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_saiga_m_5rnd = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_saiga_m_5rnd",
		unit = "units/payday2/weapons/wpn_fps_shot_saiga_pts/wpn_fps_shot_saiga_m_5rnd",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_upg_saiga_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_saiga_fg_standard",
		unit = "units/payday2/weapons/wpn_fps_shot_saiga_pts/wpn_upg_saiga_fg_standard",
		stats = {value = 1},
		override = {
			wpn_fps_upg_o_specter = {a_obj = "a_of"},
			wpn_fps_upg_o_aimpoint = {a_obj = "a_of"},
			wpn_fps_upg_o_aimpoint_2 = {a_obj = "a_of"},
			wpn_fps_upg_o_docter = {a_obj = "a_of"},
			wpn_fps_upg_o_eotech = {a_obj = "a_of"},
			wpn_fps_upg_o_t1micro = {a_obj = "a_of"},
			wpn_fps_upg_o_cmore = {a_obj = "a_of"},
			wpn_fps_upg_o_acog = {a_obj = "a_of"},
			wpn_fps_upg_o_cs = {a_obj = "a_of"}
		}
	}
	self.parts.wpn_upg_saiga_fg_lowerrail = {
		unit = "units/payday2/weapons/wpn_fps_shot_saiga_pts/wpn_upg_saiga_fg_lowerrail",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_saiga_fg_lowerrail",
		pcs = {
			30,
			40
		},
		stats = {
			value = 5,
			recoil = 2,
			spread_moving = -2,
			concealment = -2
		},
		forbids = {
			"wpn_fps_addon_ris",
			"wpn_fps_smg_mac10_body_ris_special"
		}
	}
	self.parts.wpn_fps_shot_saiga_b_standard.third_unit = "units/payday2/weapons/wpn_third_shot_saiga_pts/wpn_third_shot_saiga_b_standard"
	self.parts.wpn_fps_shot_saiga_m_5rnd.third_unit = "units/payday2/weapons/wpn_third_shot_saiga_pts/wpn_third_shot_saiga_m_5rnd"
	self.parts.wpn_upg_saiga_fg_standard.third_unit = "units/payday2/weapons/wpn_third_shot_saiga_pts/wpn_third_upg_saiga_fg_standard"
	self.parts.wpn_upg_saiga_fg_lowerrail.third_unit = "units/payday2/weapons/wpn_third_shot_saiga_pts/wpn_third_upg_saiga_fg_lowerrail"
	self.wpn_fps_shot_saiga = {
		unit = "units/payday2/weapons/wpn_fps_shot_saiga/wpn_fps_shot_saiga",
		stock_adapter = "wpn_upg_ak_s_adapter",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		override = {
			wpn_upg_o_marksmansight_rear_vanilla = {
				a_obj = "a_or",
				forbids = {"wpn_fps_upg_o_ak_scopemount"}
			},
			wpn_upg_o_marksmansight_front = {a_obj = "a_of"}
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_docter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_acog = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cs = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_spot = {"wpn_fps_ak_extra_ris"}
		},
		default_blueprint = {
			"wpn_fps_smg_akmsu_body_lowerreceiver",
			"wpn_fps_ass_akm_body_upperreceiver_vanilla",
			"wpn_fps_shot_saiga_b_standard",
			"wpn_fps_shot_saiga_m_5rnd",
			"wpn_upg_ak_s_folding_vanilla",
			"wpn_upg_saiga_fg_standard",
			"wpn_upg_ak_g_standard",
			"wpn_upg_o_marksmansight_rear_vanilla"
		},
		uses_parts = {
			"wpn_fps_smg_akmsu_body_lowerreceiver",
			"wpn_fps_ass_akm_body_upperreceiver_vanilla",
			"wpn_upg_saiga_fg_standard",
			"wpn_upg_saiga_fg_lowerrail",
			"wpn_fps_shot_saiga_b_standard",
			"wpn_fps_shot_saiga_m_5rnd",
			"wpn_upg_ak_g_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_upg_o_marksmansight_rear_vanilla",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_upg_ak_s_folding_vanilla",
			"wpn_upg_ak_s_psl",
			"wpn_upg_ak_s_skfoldable",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ak_g_rk3",
			"wpn_fps_upg_ak_s_solidstock",
			"wpn_fps_upg_o_ak_scopemount",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_sho_saiga_b_short",
			"wpn_fps_sho_saiga_fg_holy",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_snp_tti_s_vltor"
		}
	}
	self.wpn_fps_shot_saiga_npc = deep_clone(self.wpn_fps_shot_saiga)
	self.wpn_fps_shot_saiga_npc.unit = "units/payday2/weapons/wpn_fps_shot_saiga/wpn_fps_shot_saiga_npc"
end

function WeaponFactoryTweakData:_init_ak5()
	self.parts.wpn_fps_ass_ak5_b_std = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_ak5_b_std",
		unit = "units/payday2/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_b_std",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ak5_body_ak5 = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_ak5_body_ak5",
		unit = "units/payday2/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_body_ak5",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_ak5_body_rail = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_ak5_body_rail",
		unit = "units/payday2/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_body_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ak5_fg_ak5a = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ak5_fg_ak5a",
		unit = "units/payday2/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_fg_ak5a",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ak5_fg_ak5c = {
		unit = "units/payday2/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_fg_ak5c",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ak5_fg_ak5c",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 2,
			concealment = -2,
			damage = 1,
			value = 7,
			spread_moving = -2
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_ass_ak5_fg_fnc = {
		unit = "units/payday2/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_fg_fnc",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ak5_fg_fnc",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 10,
			spread_moving = 2,
			recoil = -1,
			concealment = 1
		}
	}
	self.parts.wpn_fps_ass_ak5_s_ak5a = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ak5_s_ak5a",
		unit = "units/payday2/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_s_ak5a",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ak5_s_ak5b = {
		unit = "units/payday2/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_s_ak5b",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ak5_s_ak5b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 0,
			value = 5,
			concealment = -1,
			spread = 1,
			spread_moving = -3
		},
		adds = {"wpn_fps_ass_ak5_s_ak5a"},
		stance_mod = {wpn_fps_ass_ak5 = {translation = Vector3(0, -8, 0)}}
	}
	self.parts.wpn_fps_ass_ak5_s_ak5c = {
		unit = "units/payday2/weapons/wpn_fps_ass_ak5_pts/wpn_fps_ass_ak5_s_ak5c",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ak5_s_ak5c",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 7,
			recoil = 2,
			spread_moving = 2,
			concealment = 2
		}
	}
	self.parts.wpn_fps_ass_ak5_b_std.third_unit = "units/payday2/weapons/wpn_third_ass_ak5_pts/wpn_third_ass_ak5_b_std"
	self.parts.wpn_fps_ass_ak5_body_ak5.third_unit = "units/payday2/weapons/wpn_third_ass_ak5_pts/wpn_third_ass_ak5_body_ak5"
	self.parts.wpn_fps_ass_ak5_body_rail.third_unit = "units/payday2/weapons/wpn_third_ass_ak5_pts/wpn_third_ass_ak5_body_rail"
	self.parts.wpn_fps_ass_ak5_fg_ak5a.third_unit = "units/payday2/weapons/wpn_third_ass_ak5_pts/wpn_third_ass_ak5_fg_ak5a"
	self.parts.wpn_fps_ass_ak5_fg_ak5c.third_unit = "units/payday2/weapons/wpn_third_ass_ak5_pts/wpn_third_ass_ak5_fg_ak5c"
	self.parts.wpn_fps_ass_ak5_fg_fnc.third_unit = "units/payday2/weapons/wpn_third_ass_ak5_pts/wpn_third_ass_ak5_fg_fnc"
	self.parts.wpn_fps_ass_ak5_s_ak5a.third_unit = "units/payday2/weapons/wpn_third_ass_ak5_pts/wpn_third_ass_ak5_s_ak5a"
	self.parts.wpn_fps_ass_ak5_s_ak5b.third_unit = "units/payday2/weapons/wpn_third_ass_ak5_pts/wpn_third_ass_ak5_s_ak5b"
	self.parts.wpn_fps_ass_ak5_s_ak5c.third_unit = "units/payday2/weapons/wpn_third_ass_ak5_pts/wpn_third_ass_ak5_s_ak5c"
	self.wpn_fps_ass_ak5 = {
		unit = "units/payday2/weapons/wpn_fps_ass_ak5/wpn_fps_ass_ak5",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip",
			"sight"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ass_ak5_body_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_ass_ak5_body_rail"}
		},
		default_blueprint = {
			"wpn_fps_ass_ak5_b_std",
			"wpn_fps_ass_ak5_body_ak5",
			"wpn_fps_ass_ak5_fg_ak5a",
			"wpn_fps_ass_ak5_s_ak5a",
			"wpn_fps_m4_uupg_m_std_vanilla"
		},
		uses_parts = {
			"wpn_fps_ass_ak5_b_std",
			"wpn_fps_ass_ak5_body_ak5",
			"wpn_fps_ass_ak5_body_rail",
			"wpn_fps_ass_ak5_fg_ak5a",
			"wpn_fps_ass_ak5_fg_ak5c",
			"wpn_fps_ass_ak5_fg_fnc",
			"wpn_fps_ass_ak5_s_ak5a",
			"wpn_fps_ass_ak5_s_ak5b",
			"wpn_fps_ass_ak5_s_ak5c",
			"wpn_fps_m4_uupg_m_std_vanilla",
			"wpn_fps_upg_m4_m_drum",
			"wpn_fps_upg_m4_m_pmag",
			"wpn_fps_upg_m4_m_straight",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_m_quad",
			"wpn_fps_ass_l85a2_m_emag",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_m4_m_l5",
			"wpn_fps_ass_ak5_b_short",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_m4_upg_m_quick",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_ak5_npc = deep_clone(self.wpn_fps_ass_ak5)
	self.wpn_fps_ass_ak5_npc.unit = "units/payday2/weapons/wpn_fps_ass_ak5/wpn_fps_ass_ak5_npc"
end

function WeaponFactoryTweakData:_init_aug()
	self.parts.wpn_fps_aug_b_long = {
		unit = "units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_b_long",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_aug_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread_moving = -2,
			value = 7,
			damage = 1,
			concealment = -3,
			spread = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_aug_b_medium = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_aug_b_medium",
		unit = "units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_b_medium",
		stats = {value = 1}
	}
	self.parts.wpn_fps_aug_b_short = {
		unit = "units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_b_short",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_aug_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread_moving = 3,
			value = 5,
			concealment = 2,
			spread = -1,
			recoil = 2
		}
	}
	self.parts.wpn_fps_aug_m_pmag = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_aug_m_pmag",
		unit = "units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_m_pmag",
		bullet_objects = {
			amount = 21,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_aug_body_aug = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_aug_body_aug",
		unit = "units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_body_aug",
		stats = {value = 1},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_aug_fg_a3 = {
		a_obj = "a_fg",
		type = "extra",
		name_id = "bm_wp_aug_fg_a3",
		unit = "units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_fg_a3",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 2,
			concealment = -2,
			damage = 1,
			value = 7,
			spread_moving = -2
		},
		override = {wpn_fps_aug_b_short = {
			third_unit = "units/payday2/weapons/wpn_third_ass_aug_pts/wpn_third_ass_aug_b_medium",
			unit = "units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_b_medium"
		}}
	}
	self.parts.wpn_fps_aug_ris_special = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_aug_body_ris",
		unit = "units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_ris_special",
		stats = {value = 1}
	}
	self.parts.wpn_fps_aug_b_long.third_unit = "units/payday2/weapons/wpn_third_ass_aug_pts/wpn_third_ass_aug_b_long"
	self.parts.wpn_fps_aug_b_medium.third_unit = "units/payday2/weapons/wpn_third_ass_aug_pts/wpn_third_ass_aug_b_medium"
	self.parts.wpn_fps_aug_b_short.third_unit = "units/payday2/weapons/wpn_third_ass_aug_pts/wpn_third_ass_aug_b_short"
	self.parts.wpn_fps_aug_body_aug.third_unit = "units/payday2/weapons/wpn_third_ass_aug_pts/wpn_third_ass_aug_body_aug"
	self.parts.wpn_fps_aug_fg_a3.third_unit = "units/payday2/weapons/wpn_third_ass_aug_pts/wpn_third_ass_aug_fg_a3"
	self.parts.wpn_fps_aug_m_pmag.third_unit = "units/payday2/weapons/wpn_third_ass_aug_pts/wpn_third_aug_m_pmag"
	self.parts.wpn_fps_aug_ris_special.third_unit = "units/payday2/weapons/wpn_third_ass_aug_pts/wpn_third_aug_ris_special"
	self.wpn_fps_ass_aug = {
		unit = "units/payday2/weapons/wpn_fps_ass_aug/wpn_fps_ass_aug",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		},
		adds = {
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {"wpn_fps_aug_ris_special"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {"wpn_fps_aug_ris_special"},
			wpn_fps_upg_fl_ass_peq15 = {"wpn_fps_aug_ris_special"},
			wpn_fps_upg_fl_ass_laser = {"wpn_fps_aug_ris_special"},
			wpn_fps_upg_fl_ass_utg = {"wpn_fps_aug_ris_special"}
		},
		override = {
			wpn_upg_o_marksmansight_rear_vanilla = {a_obj = "a_or"},
			wpn_upg_o_marksmansight_front_vanilla = {a_obj = "a_of"},
			wpn_upg_o_marksmansight_front = {a_obj = "a_of"}
		},
		default_blueprint = {
			"wpn_fps_aug_body_aug",
			"wpn_fps_aug_b_medium",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_aug_m_pmag",
			"wpn_upg_o_marksmansight_rear_vanilla"
		},
		uses_parts = {
			"wpn_fps_aug_body_aug",
			"wpn_fps_aug_fg_a3",
			"wpn_fps_aug_ris_special",
			"wpn_fps_aug_b_long",
			"wpn_fps_aug_b_medium",
			"wpn_fps_aug_b_short",
			"wpn_fps_aug_m_pmag",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_upg_o_marksmansight_rear_vanilla",
			"wpn_upg_o_marksmansight_front_vanilla",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_aug_body_f90",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_ass_aug_m_quick",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_aug_npc = deep_clone(self.wpn_fps_ass_aug)
	self.wpn_fps_ass_aug_npc.unit = "units/payday2/weapons/wpn_fps_ass_aug/wpn_fps_ass_aug_npc"
	self.wpn_fps_ass_aug_secondary = deep_clone(self.wpn_fps_ass_aug)
	self.wpn_fps_ass_aug_secondary.unit = "units/payday2/weapons/wpn_fps_ass_aug/wpn_fps_ass_aug_secondary"
	self.wpn_fps_ass_aug_secondary_npc = deep_clone(self.wpn_fps_ass_aug_npc)
	self.wpn_fps_ass_aug_secondary_npc.unit = "units/payday2/weapons/wpn_fps_ass_aug/wpn_fps_ass_aug_secondary_npc"
end

function WeaponFactoryTweakData:_init_g36()
	self.parts.wpn_fps_ass_g36_body_sl8 = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_g36_body_sl8",
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_body_sl8",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_g36_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_g36_body_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_g36_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_g36_g_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_g36_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_g36_m_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_m_standard",
		bullet_objects = {
			amount = 28,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_g36_b_long = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_g36_b_long",
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_b_long",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_g36_b_short = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_g36_b_short",
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_b_short",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_g36_fg_c = {
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_fg_c",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_g36_fg_c",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 4,
			spread_moving = 2,
			recoil = -1,
			concealment = 2
		},
		forbids = {
			"wpn_fps_ass_g36_b_long",
			"wpn_fps_upg_g36_b_ultra"
		},
		adds = {"wpn_fps_ass_g36_b_short"}
	}
	self.parts.wpn_fps_ass_g36_fg_k = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_g36_fg_k",
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_fg_k",
		stats = {value = 1},
		forbids = {
			"wpn_fps_ass_g36_b_short",
			"wpn_fps_upg_g36_b_ultra"
		},
		adds = {"wpn_fps_ass_g36_b_long"}
	}
	self.parts.wpn_fps_ass_g36_fg_ksk = {
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_fg_ksk",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_g36_fg_ksk",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			spread_moving = -2,
			value = 5,
			concealment = -2,
			spread = 1,
			recoil = 2
		},
		forbids = {
			"wpn_fps_ass_g36_b_short",
			"wpn_fps_upg_g36_b_ultra"
		},
		adds = {"wpn_fps_ass_g36_b_long"}
	}
	self.parts.wpn_fps_ass_g36_s_kv = {
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_s_kv",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_g36_s_kv",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 4,
			spread_moving = 2,
			concealment = 2
		},
		adds = {
			"wpn_fps_ass_g36_body_standard",
			"wpn_fps_ass_g36_g_standard"
		},
		forbids = {"wpn_fps_ass_g36_body_sl8"}
	}
	self.parts.wpn_fps_ass_g36_s_sl8 = {
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_s_sl8",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_g36_s_sl8",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			recoil = 2,
			value = 9,
			concealment = -3,
			spread = 1,
			spread_moving = -3
		},
		adds = {"wpn_fps_ass_g36_body_sl8"},
		forbids = {
			"wpn_fps_ass_g36_body_standard",
			"wpn_fps_ass_g36_g_standard"
		}
	}
	self.parts.wpn_fps_ass_g36_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_g36_s_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_g36_pts/wpn_fps_ass_g36_s_standard",
		stats = {value = 1},
		adds = {
			"wpn_fps_ass_g36_body_standard",
			"wpn_fps_ass_g36_g_standard"
		},
		forbids = {"wpn_fps_ass_g36_body_sl8"}
	}
	self.parts.wpn_fps_ass_g36_body_sl8.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_ass_g36_body_sl8"
	self.parts.wpn_fps_ass_g36_body_standard.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_ass_g36_body_standard"
	self.parts.wpn_fps_ass_g36_g_standard.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_ass_g36_g_standard"
	self.parts.wpn_fps_ass_g36_m_standard.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_ass_g36_m_standard"
	self.parts.wpn_fps_ass_g36_b_long.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_upg_g36_b_long"
	self.parts.wpn_fps_ass_g36_b_short.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_upg_g36_b_short"
	self.parts.wpn_fps_ass_g36_fg_c.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_upg_g36_fg_c"
	self.parts.wpn_fps_ass_g36_fg_k.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_upg_g36_fg_k"
	self.parts.wpn_fps_ass_g36_fg_ksk.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_upg_g36_fg_ksk"
	self.parts.wpn_fps_ass_g36_s_kv.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_upg_g36_s_kv"
	self.parts.wpn_fps_ass_g36_s_sl8.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_upg_g36_s_sl8"
	self.parts.wpn_fps_ass_g36_s_standard.third_unit = "units/payday2/weapons/wpn_third_ass_g36_pts/wpn_third_upg_g36_s_standard"
	self.wpn_fps_ass_g36 = {
		unit = "units/payday2/weapons/wpn_fps_ass_g36/wpn_fps_ass_g36",
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		default_blueprint = {
			"wpn_fps_ass_g36_s_standard",
			"wpn_fps_ass_g36_m_standard",
			"wpn_fps_ass_g36_b_long",
			"wpn_fps_ass_g36_fg_k"
		},
		uses_parts = {
			"wpn_fps_ass_g36_body_standard",
			"wpn_fps_ass_g36_body_sl8",
			"wpn_fps_ass_g36_g_standard",
			"wpn_fps_ass_g36_m_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_ass_g36_b_long",
			"wpn_fps_ass_g36_b_short",
			"wpn_fps_ass_g36_fg_c",
			"wpn_fps_ass_g36_fg_k",
			"wpn_fps_ass_g36_fg_ksk",
			"wpn_fps_ass_g36_s_standard",
			"wpn_fps_ass_g36_s_kv",
			"wpn_fps_ass_g36_s_sl8",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_ass_g36_o_vintage",
			"wpn_fps_upg_g36_fg_long",
			"wpn_fps_ass_g36_m_quick",
			"wpn_fps_upg_g36_b_ultra",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_g36_npc = deep_clone(self.wpn_fps_ass_g36)
	self.wpn_fps_ass_g36_npc.unit = "units/payday2/weapons/wpn_fps_ass_g36/wpn_fps_ass_g36_npc"
end

function WeaponFactoryTweakData:_init_p90()
	self.parts.wpn_fps_smg_p90_b_long = {
		unit = "units/payday2/weapons/wpn_fps_smg_p90_pts/wpn_fps_smg_p90_b_long",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_p90_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			recoil = 3,
			damage = 2,
			concealment = -2,
			value = 8,
			spread_moving = -3
		}
	}
	self.parts.wpn_fps_smg_p90_b_short = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_p90_b_short",
		unit = "units/payday2/weapons/wpn_fps_smg_p90_pts/wpn_fps_smg_p90_b_short",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_p90_body_p90 = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_p90_body_p90",
		unit = "units/payday2/weapons/wpn_fps_smg_p90_pts/wpn_fps_smg_p90_body_p90",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_p90_m_std = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_p90_m_std",
		unit = "units/payday2/weapons/wpn_fps_smg_p90_pts/wpn_fps_smg_p90_m_std",
		bullet_objects = {
			amount = 50,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_p90_b_long.third_unit = "units/payday2/weapons/wpn_third_smg_p90_pts/wpn_third_smg_p90_b_long"
	self.parts.wpn_fps_smg_p90_b_short.third_unit = "units/payday2/weapons/wpn_third_smg_p90_pts/wpn_third_smg_p90_b_short"
	self.parts.wpn_fps_smg_p90_body_p90.third_unit = "units/payday2/weapons/wpn_third_smg_p90_pts/wpn_third_smg_p90_body_p90"
	self.parts.wpn_fps_smg_p90_m_std.third_unit = "units/payday2/weapons/wpn_third_smg_p90_pts/wpn_third_smg_p90_m_std"
	self.wpn_fps_smg_p90 = {
		unit = "units/payday2/weapons/wpn_fps_smg_p90/wpn_fps_smg_p90",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {
			wpn_upg_o_marksmansight_rear_vanilla = {a_obj = "a_or"},
			wpn_upg_o_marksmansight_front = {a_obj = "a_of"}
		},
		default_blueprint = {
			"wpn_fps_smg_p90_body_p90",
			"wpn_fps_smg_p90_b_short",
			"wpn_fps_smg_p90_m_std",
			"wpn_upg_o_marksmansight_rear_vanilla"
		},
		uses_parts = {
			"wpn_fps_smg_p90_body_p90",
			"wpn_fps_smg_p90_m_std",
			"wpn_fps_smg_p90_b_short",
			"wpn_fps_smg_p90_b_long",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_upg_o_marksmansight_rear_vanilla",
			"wpn_upg_o_marksmansight_front",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_smg_p90_b_civilian",
			"wpn_fps_smg_p90_b_ninja",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_smg_p90_b_legend",
			"wpn_fps_upg_o_spot",
			"wpn_fps_smg_p90_m_strap"
		}
	}
	self.wpn_fps_smg_p90_npc = deep_clone(self.wpn_fps_smg_p90)
	self.wpn_fps_smg_p90_npc.unit = "units/payday2/weapons/wpn_fps_smg_p90/wpn_fps_smg_p90_npc"
end

function WeaponFactoryTweakData:_init_m14()
	self.parts.wpn_fps_ass_m14_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m14_b_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_m14_pts/wpn_fps_ass_m14_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_m14_body_dmr = {
		a_obj = "a_body",
		type = "stock",
		name_id = "bm_wp_m14_body_dmr",
		unit = "units/payday2/weapons/wpn_fps_ass_m14_pts/wpn_fps_ass_m14_body_dmr",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_m14_body_ebr = {
		unit = "units/payday2/weapons/wpn_fps_ass_m14_pts/wpn_fps_ass_m14_body_ebr",
		a_obj = "a_body",
		type = "stock",
		name_id = "bm_wp_m14_body_ebr",
		pcs = {
			30,
			40
		},
		stats = {
			value = 6,
			spread_moving = 3,
			recoil = 2,
			concealment = 2
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_ass_m14_body_jae = {
		unit = "units/payday2/weapons/wpn_fps_ass_m14_pts/wpn_fps_ass_m14_body_jae",
		a_obj = "a_body",
		type = "stock",
		name_id = "bm_wp_m14_body_jae",
		pcs = {
			30,
			40
		},
		stats = {
			spread_moving = -2,
			value = 10,
			spread = 1,
			concealment = -2,
			recoil = 3
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_ass_m14_body_lower = {
		a_obj = "a_body",
		type = "lower_body",
		name_id = "bm_wp_m14_body_lower",
		unit = "units/payday2/weapons/wpn_fps_ass_m14_pts/wpn_fps_ass_m14_body_lower",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_m14_body_upper = {
		a_obj = "a_body",
		type = "upper_body",
		name_id = "bm_wp_m14_body_upper",
		unit = "units/payday2/weapons/wpn_fps_ass_m14_pts/wpn_fps_ass_m14_body_upper",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_m14_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/payday2/weapons/wpn_fps_ass_m14_pts/wpn_fps_ass_m14_m_standard",
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_m14_b_standard.third_unit = "units/payday2/weapons/wpn_third_ass_m14_pts/wpn_third_ass_m14_b_standard"
	self.parts.wpn_fps_ass_m14_body_dmr.third_unit = "units/payday2/weapons/wpn_third_ass_m14_pts/wpn_third_ass_m14_body_dmr"
	self.parts.wpn_fps_ass_m14_body_ebr.third_unit = "units/payday2/weapons/wpn_third_ass_m14_pts/wpn_third_ass_m14_body_ebr"
	self.parts.wpn_fps_ass_m14_body_jae.third_unit = "units/payday2/weapons/wpn_third_ass_m14_pts/wpn_third_ass_m14_body_jae"
	self.parts.wpn_fps_ass_m14_body_lower.third_unit = "units/payday2/weapons/wpn_third_ass_m14_pts/wpn_third_ass_m14_body_lower"
	self.parts.wpn_fps_ass_m14_body_upper.third_unit = "units/payday2/weapons/wpn_third_ass_m14_pts/wpn_third_ass_m14_body_upper"
	self.parts.wpn_fps_ass_m14_m_standard.third_unit = "units/payday2/weapons/wpn_third_ass_m14_pts/wpn_third_ass_m14_m_standard"
	self.wpn_fps_ass_m14 = {
		unit = "units/payday2/weapons/wpn_fps_ass_m14/wpn_fps_ass_m14",
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		default_blueprint = {
			"wpn_fps_ass_m14_b_standard",
			"wpn_fps_ass_m14_body_lower",
			"wpn_fps_ass_m14_body_upper",
			"wpn_fps_ass_m14_body_dmr",
			"wpn_fps_ass_m14_m_standard"
		},
		uses_parts = {
			"wpn_fps_ass_m14_b_standard",
			"wpn_fps_ass_m14_body_dmr",
			"wpn_fps_ass_m14_body_ebr",
			"wpn_fps_ass_m14_body_jae",
			"wpn_fps_ass_m14_body_lower",
			"wpn_fps_ass_m14_body_upper",
			"wpn_fps_ass_m14_m_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_m14_scopemount",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_ass_m14_b_legendary",
			"wpn_fps_ass_m14_body_legendary",
			"wpn_fps_ass_m14_body_upper_legendary",
			"wpn_fps_ass_m14_body_lower_legendary",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_m14_npc = deep_clone(self.wpn_fps_ass_m14)
	self.wpn_fps_ass_m14_npc.unit = "units/payday2/weapons/wpn_fps_ass_m14/wpn_fps_ass_m14_npc"
end

function WeaponFactoryTweakData:_init_mp9()
	self.parts.wpn_fps_smg_mp9_body_mp9 = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_mp9_body_mp9",
		unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_body_mp9",
		stats = {value = 1},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_smg_mp9_m_extended = {
		unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_m_extended",
		type = "magazine",
		name_id = "bm_wp_mp9_m_extended",
		a_obj = "a_m",
		pcs = {
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {
			concealment = -2,
			spread_moving = -2,
			value = 4,
			extra_ammo = 6
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mp9_m_short = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_mp9_m_short",
		unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_m_short",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mp9_s_fold = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mp9_s_fold",
		unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_s_fold",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp9_s_skel = {
		unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_s_skel",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mp9_s_skel",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			recoil = 3,
			value = 5,
			concealment = -3,
			spread = 1,
			spread_moving = -3
		}
	}
	self.parts.wpn_fps_smg_mp9_b_dummy = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_mp9_b_dummy",
		unit = "units/payday2/weapons/wpn_fps_smg_mp9_pts/wpn_fps_smg_mp9_b_dummy",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp9_body_mp9.third_unit = "units/payday2/weapons/wpn_third_smg_mp9_pts/wpn_third_smg_mp9_body_mp9"
	self.parts.wpn_fps_smg_mp9_m_extended.third_unit = "units/payday2/weapons/wpn_third_smg_mp9_pts/wpn_third_smg_mp9_m_extended"
	self.parts.wpn_fps_smg_mp9_m_short.third_unit = "units/payday2/weapons/wpn_third_smg_mp9_pts/wpn_third_smg_mp9_m_short"
	self.parts.wpn_fps_smg_mp9_s_fold.third_unit = "units/payday2/weapons/wpn_third_smg_mp9_pts/wpn_third_smg_mp9_s_fold"
	self.parts.wpn_fps_smg_mp9_s_skel.third_unit = "units/payday2/weapons/wpn_third_smg_mp9_pts/wpn_third_smg_mp9_s_skel"
	self.wpn_fps_smg_mp9 = {
		unit = "units/payday2/weapons/wpn_fps_smg_mp9/wpn_fps_smg_mp9",
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight",
			"vertical_grip"
		},
		default_blueprint = {
			"wpn_fps_smg_mp9_body_mp9",
			"wpn_fps_smg_mp9_s_fold",
			"wpn_fps_smg_mp9_m_short",
			"wpn_fps_smg_mp9_b_dummy"
		},
		uses_parts = {
			"wpn_fps_smg_mp9_body_mp9",
			"wpn_fps_smg_mp9_m_short",
			"wpn_fps_smg_mp9_m_extended",
			"wpn_fps_smg_mp9_s_skel",
			"wpn_fps_smg_mp9_s_fold",
			"wpn_fps_smg_mp9_b_dummy",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_smg_mp9_b_suppressed",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_mp9_npc = deep_clone(self.wpn_fps_smg_mp9)
	self.wpn_fps_smg_mp9_npc.unit = "units/payday2/weapons/wpn_fps_smg_mp9/wpn_fps_smg_mp9_npc"
end

function WeaponFactoryTweakData:_init_deagle()
	self.parts.wpn_fps_pis_deagle_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_deagle_body_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_body_standard",
		stats = {value = 1},
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		},
		adds = {"wpn_fps_pis_deagle_lock"}
	}
	self.parts.wpn_fps_pis_deagle_b_long = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_deagle_b_long",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 7,
			concealment = -3,
			damage = 2,
			spread = 2,
			spread_moving = -3
		},
		forbids = {
			"wpn_fps_pis_deagle_co_long",
			"wpn_fps_pis_deagle_co_short",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp"
		},
		override = {wpn_upg_o_marksmansight_front = {a_obj = "a_ol"}}
	}
	self.parts.wpn_fps_pis_deagle_b_standard = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_deagle_b_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_deagle_co_long = {
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_co_long",
		a_obj = "a_co",
		type = "barrel_ext",
		name_id = "bm_wp_deagle_co_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 2,
			concealment = -2,
			damage = 2,
			value = 8,
			spread_moving = -2
		}
	}
	self.parts.wpn_fps_pis_deagle_co_short = {
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_co_short",
		a_obj = "a_co",
		type = "barrel_ext",
		name_id = "bm_wp_deagle_co_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 1,
			concealment = -1,
			damage = 1,
			suppression = -5,
			value = 6,
			spread_moving = -1
		}
	}
	self.parts.wpn_fps_pis_deagle_fg_rail = {
		a_obj = "a_fg",
		type = "extra",
		name_id = "bm_wp_deagle_fg_rail",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_fg_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_deagle_g_bling = {
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_g_bling",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_deagle_g_bling",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 10,
			spread_moving = -2,
			recoil = 2,
			concealment = 1
		}
	}
	self.parts.wpn_fps_pis_deagle_g_ergo = {
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_g_ergo",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_deagle_g_ergo",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread_moving = 2,
			value = 6,
			concealment = -1,
			spread = 1,
			recoil = -1
		}
	}
	self.parts.wpn_fps_pis_deagle_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_deagle_g_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_deagle_m_extended = {
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_m_extended",
		type = "magazine",
		name_id = "bm_wp_deagle_m_extended",
		a_obj = "a_m",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 5,
			prefix = "g_bullet_"
		},
		stats = {
			concealment = -2,
			spread_moving = -2,
			value = 7,
			extra_ammo = 3
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_deagle_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_deagle_m_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_m_standard",
		bullet_objects = {
			amount = 5,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_deagle_o_standard_rear = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_deagle_o_standard_rear",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_o_standard_rear",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_deagle_o_standard_front = {
		a_obj = "a_os",
		type = "extra",
		name_id = "bm_wp_deagle_o_standard_front",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_o_standard_front",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_deagle_o_standard_front_long = {
		a_obj = "a_ol",
		type = "extra",
		name_id = "bm_wp_deagle_o_standard_front_long",
		unit = "units/payday2/weapons/wpn_fps_pis_deagle_pts/wpn_fps_pis_deagle_o_standard_front_long",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_deagle_body_standard.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_body_standard"
	self.parts.wpn_fps_pis_deagle_b_long.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_b_long"
	self.parts.wpn_fps_pis_deagle_b_standard.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_b_standard"
	self.parts.wpn_fps_pis_deagle_co_long.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_co_long"
	self.parts.wpn_fps_pis_deagle_co_short.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_co_short"
	self.parts.wpn_fps_pis_deagle_fg_rail.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_fg_rail"
	self.parts.wpn_fps_pis_deagle_g_bling.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_g_bling"
	self.parts.wpn_fps_pis_deagle_g_ergo.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_g_ergo"
	self.parts.wpn_fps_pis_deagle_g_standard.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_g_standard"
	self.parts.wpn_fps_pis_deagle_m_extended.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_m_extended"
	self.parts.wpn_fps_pis_deagle_m_standard.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_m_standard"
	self.parts.wpn_fps_pis_deagle_o_standard_rear.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_o_standard_rear"
	self.parts.wpn_fps_pis_deagle_o_standard_front.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_o_standard_front"
	self.parts.wpn_fps_pis_deagle_o_standard_front_long.third_unit = "units/payday2/weapons/wpn_third_pis_deagle_pts/wpn_third_pis_deagle_o_standard_front_long"
	self.wpn_fps_pis_deagle = {
		unit = "units/payday2/weapons/wpn_fps_pis_deagle/wpn_fps_pis_deagle",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_pis_deagle_b_standard = {
				"wpn_fps_pis_deagle_o_standard_rear",
				"wpn_fps_pis_deagle_o_standard_front"
			},
			wpn_fps_pis_deagle_b_long = {
				"wpn_fps_pis_deagle_o_standard_rear",
				"wpn_fps_pis_deagle_o_standard_front_long"
			},
			wpn_fps_upg_o_specter = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_docter = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_eotech = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_cmore = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_acog = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_cs = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_reflex = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_spot = {"wpn_fps_pis_rage_o_adapter"}
		},
		override = {
			wpn_upg_o_marksmansight_rear = {
				a_obj = "a_o",
				forbids = {
					"wpn_fps_pis_deagle_o_standard_front",
					"wpn_fps_pis_deagle_o_standard_front_long",
					"wpn_fps_pis_deagle_o_standard_rear"
				}
			},
			wpn_upg_o_marksmansight_front = {a_obj = "a_os"},
			wpn_fps_upg_o_specter = {a_obj = "a_quite"},
			wpn_fps_upg_o_aimpoint = {a_obj = "a_quite"},
			wpn_fps_upg_o_aimpoint_2 = {a_obj = "a_quite"},
			wpn_fps_upg_o_docter = {a_obj = "a_quite"},
			wpn_fps_upg_o_eotech = {a_obj = "a_quite"},
			wpn_fps_upg_o_t1micro = {a_obj = "a_quite"},
			wpn_fps_upg_o_cmore = {a_obj = "a_quite"},
			wpn_fps_upg_o_acog = {a_obj = "a_quite"},
			wpn_fps_upg_o_cs = {a_obj = "a_quite"},
			wpn_fps_upg_o_eotech_xps = {a_obj = "a_quite"},
			wpn_fps_upg_o_reflex = {a_obj = "a_quite"},
			wpn_fps_upg_o_rx01 = {a_obj = "a_quite"},
			wpn_fps_upg_o_rx30 = {a_obj = "a_quite"},
			wpn_fps_upg_o_rmr = {parent = "lower_reciever"},
			wpn_fps_upg_o_spot = {a_obj = "a_quite"}
		},
		default_blueprint = {
			"wpn_fps_pis_deagle_body_standard",
			"wpn_fps_pis_deagle_b_standard",
			"wpn_fps_pis_deagle_g_standard",
			"wpn_fps_pis_deagle_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_deagle_body_standard",
			"wpn_fps_pis_deagle_b_standard",
			"wpn_fps_pis_deagle_b_long",
			"wpn_fps_pis_deagle_co_long",
			"wpn_fps_pis_deagle_co_short",
			"wpn_fps_pis_deagle_fg_rail",
			"wpn_fps_pis_deagle_g_bling",
			"wpn_fps_pis_deagle_g_ergo",
			"wpn_fps_pis_deagle_g_standard",
			"wpn_fps_pis_deagle_m_extended",
			"wpn_fps_pis_deagle_m_standard",
			"wpn_fps_pis_deagle_o_standard_rear",
			"wpn_fps_pis_deagle_o_standard_front",
			"wpn_fps_pis_deagle_o_standard_front_long",
			"wpn_upg_o_marksmansight_rear",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_pis_deagle_extra",
			"wpn_fps_pis_rage_o_adapter",
			"wpn_fps_pis_deagle_lock",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle",
			"wpn_fps_pis_deagle_b_legend",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_pis_deagle_npc = deep_clone(self.wpn_fps_pis_deagle)
	self.wpn_fps_pis_deagle_npc.unit = "units/payday2/weapons/wpn_fps_pis_deagle/wpn_fps_pis_deagle_npc"
	self.wpn_fps_pis_deagle_primary = deep_clone(self.wpn_fps_pis_deagle)
	self.wpn_fps_pis_deagle_primary.unit = "units/payday2/weapons/wpn_fps_pis_deagle/wpn_fps_pis_deagle_primary"
	self.wpn_fps_pis_deagle_primary_npc = deep_clone(self.wpn_fps_pis_deagle_npc)
	self.wpn_fps_pis_deagle_primary_npc.unit = "units/payday2/weapons/wpn_fps_pis_deagle/wpn_fps_pis_deagle_primary_npc"
end

function WeaponFactoryTweakData:_init_mp5()
	self.parts.wpn_fps_smg_mp5_b_m5k = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_mp5_b_m5k",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_b_m5k",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp5_b_mp5a4 = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_mp5_b_mp5a4",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_b_mp5a4",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp5_b_mp5a5 = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_mp5_b_mp5a5",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_b_mp5a5",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp5_b_mp5sd = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_mp5_b_mp5sd",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_b_mp5sd",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp5_body_mp5 = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_mp5_body_mp5",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_body_mp5",
		stats = {value = 1},
		animations = {fire = "recoil"}
	}
	self.parts.wpn_fps_smg_mp5_body_rail = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_mp5_body_rail",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_body_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp5_fg_mp5a4 = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_mp5_fg_mp5a4",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_fg_mp5a4",
		stats = {value = 1},
		adds = {"wpn_fps_smg_mp5_b_mp5a5"},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_smg_mp5_fg_m5k = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_mp5_fg_m5k",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_fg_m5k",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 4,
			spread_moving = 3,
			recoil = -3,
			concealment = 3
		},
		adds = {"wpn_fps_smg_mp5_b_m5k"},
		animations = {reload = "reload"},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_smg_mp5_fg_mp5a5 = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_mp5_fg_mp5a5",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_fg_mp5a5",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 5,
			spread_moving = -2,
			recoil = 2,
			concealment = -3
		},
		adds = {"wpn_fps_smg_mp5_b_mp5a5"},
		animations = {reload = "reload"},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_smg_mp5_fg_mp5sd = {
		type = "foregrip",
		a_obj = "a_fg",
		sub_type = "silencer",
		name_id = "bm_wp_mp5_fg_mp5sd",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_fg_mp5sd",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			recoil = 3,
			damage = -4,
			suppression = 12,
			value = 10,
			spread_moving = 1,
			concealment = 1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"},
		adds = {"wpn_fps_smg_mp5_b_mp5sd"},
		forbids = {
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ass_ns_battle"
		},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_smg_mp5_m_drum = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_mp5_m_drum",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_m_drum",
		stats = {value = 5},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mp5_m_std = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_mp5_m_std",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_m_std",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mp5_s_adjust = {
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_s_adjust",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mp5_s_adjust",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = 1,
			concealment = 3
		}
	}
	self.parts.wpn_fps_smg_mp5_s_ring = {
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_s_ring",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mp5_s_ring",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = 4,
			recoil = -3,
			concealment = 4
		}
	}
	self.parts.wpn_fps_smg_mp5_s_solid = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mp5_s_solid",
		unit = "units/payday2/weapons/wpn_fps_smg_mp5_pts/wpn_fps_smg_mp5_s_solid",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp5_body_mp5.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_body_mp5"
	self.parts.wpn_fps_smg_mp5_body_rail.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_body_rail"
	self.parts.wpn_fps_smg_mp5_fg_m5k.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_fg_mp5k"
	self.parts.wpn_fps_smg_mp5_fg_mp5a4.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_fg_mp5a4"
	self.parts.wpn_fps_smg_mp5_fg_mp5a5.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_fg_mp5a5"
	self.parts.wpn_fps_smg_mp5_fg_mp5sd.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_fg_mp5sd"
	self.parts.wpn_fps_smg_mp5_m_drum.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_m_drum"
	self.parts.wpn_fps_smg_mp5_m_std.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_m_std"
	self.parts.wpn_fps_smg_mp5_s_adjust.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_s_adjust"
	self.parts.wpn_fps_smg_mp5_s_ring.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_s_ring"
	self.parts.wpn_fps_smg_mp5_s_solid.third_unit = "units/payday2/weapons/wpn_third_smg_mp5_pts/wpn_third_smg_mp5_s_solid"
	self.wpn_fps_smg_mp5 = {
		unit = "units/payday2/weapons/wpn_fps_smg_mp5/wpn_fps_smg_mp5",
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight",
			"vertical_grip"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_mp5_body_rail"}
		},
		default_blueprint = {
			"wpn_fps_smg_mp5_body_mp5",
			"wpn_fps_smg_mp5_fg_mp5a4",
			"wpn_fps_smg_mp5_m_std",
			"wpn_fps_smg_mp5_s_solid"
		},
		uses_parts = {
			"wpn_fps_smg_mp5_body_mp5",
			"wpn_fps_smg_mp5_fg_m5k",
			"wpn_fps_smg_mp5_fg_mp5a4",
			"wpn_fps_smg_mp5_fg_mp5a5",
			"wpn_fps_smg_mp5_fg_mp5sd",
			"wpn_fps_smg_mp5_m_std",
			"wpn_fps_smg_mp5_m_drum",
			"wpn_fps_smg_mp5_s_ring",
			"wpn_fps_smg_mp5_s_adjust",
			"wpn_fps_smg_mp5_s_solid",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_smg_mp5_m_straight",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_smg_mp5_fg_flash",
			"wpn_fps_smg_mp5_s_folding",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_mp5_npc = deep_clone(self.wpn_fps_smg_mp5)
	self.wpn_fps_smg_mp5_npc.unit = "units/payday2/weapons/wpn_fps_smg_mp5/wpn_fps_smg_mp5_npc"
end

function WeaponFactoryTweakData:_init_colt_1911()
	self.parts.wpn_fps_pis_1911_b_long = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_1911_b_long",
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			recoil = 2,
			damage = 1,
			concealment = -2,
			spread = 2,
			spread_moving = -2
		},
		adds = {"wpn_fps_pis_1911_o_long"},
		override = {wpn_upg_o_marksmansight_front = {a_obj = "a_ol"}},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_1911_b_standard = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_1911_b_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_b_standard",
		stats = {value = 1},
		adds = {"wpn_fps_pis_1911_o_standard"},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_1911_b_vented = {
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_b_vented",
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_1911_b_vented",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 2,
			spread = -1,
			damage = 1,
			suppression = -2,
			value = 1,
			spread_moving = 2
		},
		adds = {"wpn_fps_pis_1911_o_standard"},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_1911_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_1911_body_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_body_standard",
		stats = {value = 1},
		animations = {
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_pis_1911_co_1 = {
		parent = "slide",
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_co_1",
		type = "barrel_ext",
		name_id = "bm_wp_1911_co_1",
		a_obj = "a_co",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 1,
			concealment = -1,
			damage = 1,
			suppression = -5,
			value = 5,
			spread_moving = -1
		}
	}
	self.parts.wpn_fps_pis_1911_co_2 = {
		parent = "slide",
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_co_2",
		type = "barrel_ext",
		name_id = "bm_wp_1911_co_2",
		a_obj = "a_co",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 2,
			concealment = -1,
			damage = 2,
			suppression = -1,
			value = 2,
			spread_moving = 1
		}
	}
	self.parts.wpn_fps_pis_1911_g_bling = {
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_g_bling",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_1911_g_bling",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			recoil = -1,
			value = 10
		}
	}
	self.parts.wpn_fps_pis_1911_g_ergo = {
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_g_ergo",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_1911_g_ergo",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_pis_1911_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_1911_g_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_1911_m_extended = {
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_m_extended",
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_1911_m_extended",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = -2,
			concealment = -1,
			extra_ammo = 3
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_1911_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_1911_m_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_1911_o_long = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_1911_o_long",
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_o_long",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_1911_o_standard = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_1911_o_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_1911_pts/wpn_fps_pis_1911_o_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_1911_b_long.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_b_long"
	self.parts.wpn_fps_pis_1911_b_standard.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_b_standard"
	self.parts.wpn_fps_pis_1911_b_vented.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_b_vented"
	self.parts.wpn_fps_pis_1911_body_standard.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_body_standard"
	self.parts.wpn_fps_pis_1911_co_1.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_co_1"
	self.parts.wpn_fps_pis_1911_co_2.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_co_2"
	self.parts.wpn_fps_pis_1911_g_bling.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_g_bling"
	self.parts.wpn_fps_pis_1911_g_ergo.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_g_ergo"
	self.parts.wpn_fps_pis_1911_g_standard.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_g_standard"
	self.parts.wpn_fps_pis_1911_m_extended.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_m_extended"
	self.parts.wpn_fps_pis_1911_m_standard.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_m_standard"
	self.parts.wpn_fps_pis_1911_o_long.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_o_long"
	self.parts.wpn_fps_pis_1911_o_standard.third_unit = "units/payday2/weapons/wpn_third_pis_1911_pts/wpn_third_pis_1911_o_standard"
	self.wpn_fps_pis_1911 = {
		unit = "units/payday2/weapons/wpn_fps_pis_1911/wpn_fps_pis_1911",
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		animations = {
			reload = "reload",
			fire = "recoil",
			magazine_empty = "last_recoil"
		},
		override = {
			wpn_upg_o_marksmansight_rear = {
				a_obj = "a_o",
				forbids = {
					"wpn_fps_pis_1911_o_long",
					"wpn_fps_pis_1911_o_standard"
				}
			},
			wpn_upg_o_marksmansight_front = {a_obj = "a_os"},
			wpn_fps_upg_o_rmr = {parent = "slide"}
		},
		default_blueprint = {
			"wpn_fps_pis_1911_body_standard",
			"wpn_fps_pis_1911_b_standard",
			"wpn_fps_pis_1911_g_standard",
			"wpn_fps_pis_1911_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_1911_body_standard",
			"wpn_fps_pis_1911_co_1",
			"wpn_fps_pis_1911_co_2",
			"wpn_fps_pis_1911_g_standard",
			"wpn_fps_pis_1911_g_bling",
			"wpn_fps_pis_1911_g_ergo",
			"wpn_fps_pis_1911_b_standard",
			"wpn_fps_pis_1911_b_long",
			"wpn_fps_pis_1911_b_vented",
			"wpn_fps_pis_1911_m_standard",
			"wpn_fps_pis_1911_m_extended",
			"wpn_fps_pis_1911_o_standard",
			"wpn_fps_pis_1911_o_long",
			"wpn_upg_o_marksmansight_rear",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_pis_1911_g_engraved",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle",
			"wpn_fps_pis_1911_m_big"
		}
	}
	self.wpn_fps_pis_1911_npc = deep_clone(self.wpn_fps_pis_1911)
	self.wpn_fps_pis_1911_npc.unit = "units/payday2/weapons/wpn_fps_pis_1911/wpn_fps_pis_1911_npc"
	self.wpn_fps_pis_1911_primary = deep_clone(self.wpn_fps_pis_1911)
	self.wpn_fps_pis_1911_primary.unit = "units/payday2/weapons/wpn_fps_pis_1911/wpn_fps_pis_1911_primary"
	self.wpn_fps_pis_1911_primary_npc = deep_clone(self.wpn_fps_pis_1911_npc)
	self.wpn_fps_pis_1911_primary_npc.unit = "units/payday2/weapons/wpn_fps_pis_1911/wpn_fps_pis_1911_primary_npc"
end

function WeaponFactoryTweakData:_init_mac10()
	self.parts.wpn_fps_smg_mac10_b_dummy = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_mac10_b_dummy",
		unit = "units/payday2/weapons/wpn_fps_smg_mac10_pts/wpn_fps_smg_mac10_b_dummy",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mac10_body_mac10 = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_mac10_body_mac10",
		unit = "units/payday2/weapons/wpn_fps_smg_mac10_pts/wpn_fps_smg_mac10_body_mac10",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_mac10_body_ris = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_mac10_body_ris",
		unit = "units/payday2/weapons/wpn_fps_smg_mac10_pts/wpn_fps_smg_mac10_body_ris",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 5,
			recoil = 2,
			spread_moving = -2,
			concealment = -2
		},
		adds = {"wpn_upg_o_marksmansight_rear_vanilla"},
		stance_mod = {wpn_fps_smg_mac10 = {
			translation = Vector3(0, 0, -1),
			rotation = Rotation(0, -0.899, 0)
		}},
		forbids = {
			"wpn_fps_addon_ris",
			"wpn_fps_smg_mac10_body_ris_special"
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_mac10_body_ris_special = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_mac10_body_ris_special",
		unit = "units/payday2/weapons/wpn_fps_smg_mac10_pts/wpn_fps_smg_mac10_body_ris_special",
		stats = {value = 1},
		stance_mod = {wpn_fps_smg_mac10 = {
			translation = Vector3(0, 0, -1),
			rotation = Rotation(0, -0.899, 0)
		}}
	}
	self.parts.wpn_fps_smg_mac10_m_extended = {
		unit = "units/payday2/weapons/wpn_fps_smg_mac10_pts/wpn_fps_smg_mac10_m_extended",
		type = "magazine",
		name_id = "bm_wp_mac10_m_extended",
		a_obj = "a_m",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 4,
			value = 2,
			spread_moving = -2,
			concealment = -2,
			recoil = 1
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mac10_m_short = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_mac10_m_short",
		unit = "units/payday2/weapons/wpn_fps_smg_mac10_pts/wpn_fps_smg_mac10_m_short",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mac10_ris_dummy = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_mac10_ris_dummy",
		unit = "units/payday2/weapons/wpn_fps_smg_mac10_pts/wpn_fps_smg_mac10_ris_dummy",
		stats = {value = 1},
		adds = {
			"wpn_fps_smg_mac10_body_mac10",
			"wpn_fps_smg_mac10_body_ris"
		}
	}
	self.parts.wpn_fps_smg_mac10_s_fold = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mac10_s_fold",
		unit = "units/payday2/weapons/wpn_fps_smg_mac10_pts/wpn_fps_smg_mac10_s_fold",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mac10_s_skel = {
		unit = "units/payday2/weapons/wpn_fps_smg_mac10_pts/wpn_fps_smg_mac10_s_skel",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mac10_s_skel",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread_moving = -3,
			value = 1,
			concealment = -2,
			spread = 1,
			recoil = 3
		}
	}
	self.parts.wpn_fps_smg_mac10_body_mac10.third_unit = "units/payday2/weapons/wpn_third_smg_mac10_pts/wpn_third_smg_mac10_body_mac10"
	self.parts.wpn_fps_smg_mac10_body_ris.third_unit = "units/payday2/weapons/wpn_third_smg_mac10_pts/wpn_third_smg_mac10_body_ris"
	self.parts.wpn_fps_smg_mac10_body_ris_special.third_unit = "units/payday2/weapons/wpn_third_smg_mac10_pts/wpn_third_smg_mac10_body_ris_special"
	self.parts.wpn_fps_smg_mac10_m_extended.third_unit = "units/payday2/weapons/wpn_third_smg_mac10_pts/wpn_third_smg_mac10_m_extended"
	self.parts.wpn_fps_smg_mac10_m_short.third_unit = "units/payday2/weapons/wpn_third_smg_mac10_pts/wpn_third_smg_mac10_m_short"
	self.parts.wpn_fps_smg_mac10_s_fold.third_unit = "units/payday2/weapons/wpn_third_smg_mac10_pts/wpn_third_smg_mac10_s_fold"
	self.parts.wpn_fps_smg_mac10_s_skel.third_unit = "units/payday2/weapons/wpn_third_smg_mac10_pts/wpn_third_smg_mac10_s_skel"
	self.wpn_fps_smg_mac10 = {
		unit = "units/payday2/weapons/wpn_fps_smg_mac10/wpn_fps_smg_mac10",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {
			wpn_upg_o_marksmansight_rear_vanilla = {a_obj = "a_or"},
			wpn_upg_o_marksmansight_front_vanilla = {a_obj = "a_of"}
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_mac10_body_ris_special"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_mac10_body_ris_special"}
		},
		default_blueprint = {
			"wpn_fps_smg_mac10_body_mac10",
			"wpn_fps_smg_mac10_b_dummy",
			"wpn_fps_smg_mac10_m_short",
			"wpn_fps_smg_mac10_s_fold"
		},
		uses_parts = {
			"wpn_fps_smg_mac10_b_dummy",
			"wpn_fps_smg_mac10_body_ris",
			"wpn_fps_smg_mac10_ris_dummy",
			"wpn_fps_smg_mac10_m_extended",
			"wpn_fps_smg_mac10_m_short",
			"wpn_fps_smg_mac10_body_mac10",
			"wpn_fps_smg_mac10_s_fold",
			"wpn_fps_smg_mac10_s_skel",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_upg_o_marksmansight_rear_vanilla",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_smg_mac10_m_quick",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_mac10_npc = deep_clone(self.wpn_fps_smg_mac10)
	self.wpn_fps_smg_mac10_npc.unit = "units/payday2/weapons/wpn_fps_smg_mac10/wpn_fps_smg_mac10_npc"
end

function WeaponFactoryTweakData:_init_r870()
	self.parts.wpn_fps_shot_r870_b_long = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_r870_b_long",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_b_long",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_r870_body_rack = {
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_body_rack",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_r870_body_rack",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = -1,
			concealment = -2,
			extra_ammo = 1
		}
	}
	self.parts.wpn_fps_shot_r870_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_r870_body_standard",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_body_standard",
		stats = {value = 1},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_shot_r870_fg_big = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_r870_fg_big",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_fg_big",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil_zoom"
		}
	}
	self.parts.wpn_fps_shot_r870_fg_railed = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_r870_fg_railed",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_fg_railed",
		stats = {
			value = 1,
			spread_moving = 2
		},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil_zoom"
		}
	}
	self.parts.wpn_fps_shot_r870_fg_small = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_r870_fg_small",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_fg_small",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil_zoom"
		}
	}
	self.parts.wpn_fps_shot_r870_fg_wood = {
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_fg_wood",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_r870_fg_wood",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			recoil = 1,
			spread_moving = 0
		},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil_zoom"
		}
	}
	self.parts.wpn_fps_shot_r870_m_extended = {
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_m_extended",
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_r870_m_extended",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			concealment = -1,
			spread_moving = -1,
			value = 6,
			extra_ammo = 1
		}
	}
	self.parts.wpn_fps_shot_r870_s_folding = {
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_s_folding",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_r870_s_folding",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 9,
			spread_moving = 1,
			recoil = -1,
			concealment = 1
		},
		forbids = {
			"wpn_fps_shot_r870_ris_special",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_spot"
		}
	}
	self.parts.wpn_fps_shot_r870_s_m4 = {
		a_obj = "a_s",
		type = "stock_adapter",
		name_id = "bm_wp_r870_s_m4",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_s_m4",
		stats = {value = 3},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_shot_r870_s_solid = {
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_s_solid",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_r870_s_solid",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = -2,
			recoil = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_shot_r870_s_nostock_big = {
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_s_nostock_big",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_r870_s_nostock_big",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			spread_moving = 1,
			recoil = -3,
			concealment = 1
		},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_shot_r870_s_nostock_single = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_r870_s_nostock_single",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_s_nostock_single",
		stats = {
			value = 3,
			spread_moving = 2,
			recoil = -3,
			concealment = 2
		},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_shot_r870_s_nostock = {
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_s_nostock",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_r870_s_nostock",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = 1,
			recoil = -3,
			concealment = 3
		}
	}
	self.parts.wpn_fps_shot_r870_s_solid_big = {
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_s_solid_big",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_r870_s_solid_big",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			spread_moving = -2,
			recoil = 2,
			concealment = -2
		},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_shot_r870_s_solid_single = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_r870_s_solid_single",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_s_solid_single",
		stats = {
			value = 3,
			spread_moving = -1,
			recoil = 1,
			concealment = -1
		},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_shot_r870_gadget_rail = {
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_wp_r870_s_solid_single",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_gadget_rail",
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_shot_r870_ris_special = {
		name_id = "bm_wp_r870_s_solid_single",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_ris_special",
		a_obj = "a_o",
		type = "extra"
	}
	self.parts.wpn_fps_shot_r870_b_long.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_b_long"
	self.parts.wpn_fps_shot_r870_body_rack.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_body_rack"
	self.parts.wpn_fps_shot_r870_body_standard.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_body_standard"
	self.parts.wpn_fps_shot_r870_fg_big.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_fg_big"
	self.parts.wpn_fps_shot_r870_fg_railed.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_fg_railed"
	self.parts.wpn_fps_shot_r870_fg_small.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_fg_small"
	self.parts.wpn_fps_shot_r870_fg_wood.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_fg_wood"
	self.parts.wpn_fps_shot_r870_m_extended.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_m_extended"
	self.parts.wpn_fps_shot_r870_s_folding.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_s_folding"
	self.parts.wpn_fps_shot_r870_s_m4.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_s_m4"
	self.parts.wpn_fps_shot_r870_s_solid.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_s_solid"
	self.parts.wpn_fps_shot_r870_s_solid_big.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_s_solid_big"
	self.parts.wpn_fps_shot_r870_s_solid_single.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_s_solid_single"
	self.parts.wpn_fps_shot_r870_ris_special.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_ris_special"
	self.parts.wpn_fps_shot_r870_gadget_rail.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_gadget_rail"
	self.parts.wpn_fps_shot_r870_s_nostock.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_s_nostock"
	self.parts.wpn_fps_shot_r870_s_nostock_big.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_s_nostock_big"
	self.parts.wpn_fps_shot_r870_s_nostock_single.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_s_nostock_single"
	self.parts.wpn_fps_shot_r870_s_nostock_vanilla = deep_clone(self.parts.wpn_fps_shot_r870_s_nostock)
	self.parts.wpn_fps_shot_r870_s_nostock_vanilla.stats = nil
	self.parts.wpn_fps_shot_r870_s_nostock_vanilla.pcs = nil
	self.parts.wpn_fps_shot_r870_s_solid_vanilla = deep_clone(self.parts.wpn_fps_shot_r870_s_solid)
	self.parts.wpn_fps_shot_r870_s_solid_vanilla.stats = nil
	self.parts.wpn_fps_shot_r870_s_solid_vanilla.pcs = nil
	self.parts.wpn_fps_shot_r870_fg_railed_vanilla = deep_clone(self.parts.wpn_fps_shot_r870_fg_railed)
	self.parts.wpn_fps_shot_r870_fg_railed_vanilla.stats = nil
	self.parts.wpn_fps_shot_r870_fg_railed_vanilla.pcs = nil
	self.wpn_fps_shot_r870 = {
		unit = "units/payday2/weapons/wpn_fps_shot_r870/wpn_fps_shot_r870",
		optional_types = {
			"barrel_ext",
			"gadget",
			"magazine"
		},
		stock_adapter = "wpn_fps_shot_r870_s_m4",
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_docter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cmore = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_acog = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cs = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_reflex = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_peq15 = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_laser = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_utg = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_shot_r870_ris_special"}
		},
		default_blueprint = {
			"wpn_fps_shot_r870_body_standard",
			"wpn_fps_shot_r870_b_long",
			"wpn_fps_shot_r870_fg_big",
			"wpn_fps_shot_r870_s_solid_vanilla",
			"wpn_fps_upg_m4_g_standard"
		},
		uses_parts = {
			"wpn_fps_shot_r870_body_rack",
			"wpn_fps_shot_r870_body_standard",
			"wpn_fps_shot_r870_b_long",
			"wpn_fps_shot_r870_fg_big",
			"wpn_fps_shot_r870_fg_railed",
			"wpn_fps_shot_r870_fg_wood",
			"wpn_fps_shot_r870_m_extended",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_shot_r870_s_folding",
			"wpn_fps_shot_r870_s_m4",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_shot_r870_s_nostock_big",
			"wpn_fps_shot_r870_s_nostock_single",
			"wpn_fps_shot_r870_s_nostock",
			"wpn_fps_shot_r870_s_solid_vanilla",
			"wpn_fps_shot_r870_s_solid_big",
			"wpn_fps_shot_r870_s_solid_single",
			"wpn_fps_upg_m4_g_standard",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_m4_g_hgrip",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_shot_r870_b_legendary",
			"wpn_fps_shot_r870_s_legendary",
			"wpn_fps_shot_r870_fg_legendary",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_shot_r870_npc = deep_clone(self.wpn_fps_shot_r870)
	self.wpn_fps_shot_r870_npc.unit = "units/payday2/weapons/wpn_fps_shot_r870/wpn_fps_shot_r870_npc"
end

function WeaponFactoryTweakData:_init_serbu()
	self.parts.wpn_fps_shot_shorty_m_extended_short = {
		unit = "units/payday2/weapons/wpn_fps_shot_shorty_pts/wpn_fps_shot_shorty_m_extended_short",
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_shorty_m_extended_short",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 1,
			extra_ammo = 1
		}
	}
	self.parts.wpn_fps_shot_r870_b_short = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_serbu_b_short",
		unit = "units/payday2/weapons/wpn_fps_shot_r870_pts/wpn_fps_shot_r870_b_short",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_shorty_s_nostock_short = {
		unit = "units/payday2/weapons/wpn_fps_shot_shorty_pts/wpn_fps_shot_shorty_s_nostock_short",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_serbu_s_nostock_short",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 4,
			spread_moving = 2,
			recoil = -4,
			concealment = 3
		},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_shot_shorty_s_solid_short = {
		unit = "units/payday2/weapons/wpn_fps_shot_shorty_pts/wpn_fps_shot_shorty_s_solid_short",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_serbu_s_solid_short",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = -2,
			recoil = 2,
			concealment = -3
		},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_shot_shorty_m_extended_short.third_unit = "units/payday2/weapons/wpn_third_shot_shorty_pts/wpn_third_shot_shorty_m_extended_short"
	self.parts.wpn_fps_shot_shorty_s_nostock_short.third_unit = "units/payday2/weapons/wpn_third_shot_shorty_pts/wpn_third_shot_shorty_s_nostock_short"
	self.parts.wpn_fps_shot_shorty_s_solid_short.third_unit = "units/payday2/weapons/wpn_third_shot_shorty_pts/wpn_third_shot_shorty_s_solid_short"
	self.wpn_fps_shot_serbu = {
		unit = "units/payday2/weapons/wpn_fps_shot_shorty/wpn_fps_shot_shorty",
		optional_types = {
			"barrel_ext",
			"gadget",
			"magazine"
		},
		stock_adapter = "wpn_fps_shot_r870_s_m4",
		override = {
			wpn_fps_upg_a_slug = {
				desc_id = "bm_wp_upg_a_slug2_desc",
				custom_stats = {
					armor_piercing_add = 1,
					can_shoot_through_shield = true,
					can_shoot_through_wall = true,
					damage_far_mul = 1.15,
					damage_near_mul = 2,
					can_shoot_through_enemy = true,
					rays = 1
				}
			},
			wpn_fps_upg_a_custom = {
				desc_id = "bm_wp_upg_a_custom2_desc",
				custom_stats = {}
			},
			wpn_fps_upg_a_custom_free = {
				desc_id = "bm_wp_upg_a_custom2_desc",
				custom_stats = {}
			}
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_docter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cmore = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_acog = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cs = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_reflex = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_peq15 = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_laser = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_utg = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_shot_r870_ris_special"}
		},
		default_blueprint = {
			"wpn_fps_shot_r870_body_standard",
			"wpn_fps_shot_r870_b_short",
			"wpn_fps_shot_r870_fg_small",
			"wpn_fps_shot_r870_s_nostock_vanilla",
			"wpn_fps_upg_m4_g_standard"
		},
		uses_parts = {
			"wpn_fps_shot_r870_body_rack",
			"wpn_fps_shot_r870_body_standard",
			"wpn_fps_shot_r870_b_short",
			"wpn_fps_shot_r870_fg_railed",
			"wpn_fps_shot_r870_fg_small",
			"wpn_fps_shot_shorty_m_extended_short",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_shot_r870_s_folding",
			"wpn_fps_shot_r870_s_m4",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_shot_shorty_s_nostock_short",
			"wpn_fps_shot_r870_s_nostock_single",
			"wpn_fps_shot_r870_s_nostock_vanilla",
			"wpn_fps_shot_r870_s_solid",
			"wpn_fps_shot_shorty_s_solid_short",
			"wpn_fps_shot_r870_s_solid_single",
			"wpn_fps_upg_m4_g_standard",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_m4_g_hgrip",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_shot_shorty_b_legendary",
			"wpn_fps_shot_shorty_s_legendary",
			"wpn_fps_shot_shorty_fg_legendary",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_shot_serbu_npc = deep_clone(self.wpn_fps_shot_serbu)
	self.wpn_fps_shot_serbu_npc.unit = "units/payday2/weapons/wpn_fps_shot_shorty/wpn_fps_shot_shorty_npc"
	self.parts.wpn_fps_shot_r870_b_short.third_unit = "units/payday2/weapons/wpn_third_shot_r870_pts/wpn_third_shot_r870_b_short"
end

function WeaponFactoryTweakData:_init_g17()
	self.parts.wpn_fps_pis_g17_b_standard = {
		a_obj = "a_b",
		type = "slide",
		unit = "units/payday2/weapons/wpn_fps_pis_g17_pts/wpn_fps_pis_g17_b_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_g17_body_standard = {
		unit = "units/payday2/weapons/wpn_fps_pis_g17_pts/wpn_fps_pis_g17_body_standard",
		a_obj = "a_body",
		type = "lower_reciever",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_g17_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		unit = "units/payday2/weapons/wpn_fps_pis_g17_pts/wpn_fps_pis_g17_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_g17_body_standard.third_unit = "units/payday2/weapons/wpn_third_pis_g17_pts/wpn_third_pis_g17_body_standard"
	self.parts.wpn_fps_pis_g17_b_standard.third_unit = "units/payday2/weapons/wpn_third_pis_g17_pts/wpn_third_pis_g17_b_standard"
	self.parts.wpn_fps_pis_g17_m_standard.third_unit = "units/payday2/weapons/wpn_third_pis_g17_pts/wpn_third_pis_g17_m_standard"
	self.wpn_fps_pis_g17 = {
		unit = "units/payday2/weapons/wpn_fps_pis_g17/wpn_fps_pis_g17",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {wpn_fps_upg_o_rmr = {parent = "slide"}},
		default_blueprint = {
			"wpn_fps_pis_g17_body_standard",
			"wpn_fps_pis_g17_b_standard",
			"wpn_fps_pis_g17_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_g17_body_standard",
			"wpn_fps_pis_g17_b_standard",
			"wpn_fps_pis_g17_m_standard",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_pis_g26_g_gripforce",
			"wpn_fps_pis_g26_g_laser",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle",
			"wpn_fps_pis_g18c_m_mag_33rnd"
		}
	}
	self.wpn_fps_pis_g17_npc = deep_clone(self.wpn_fps_pis_g17)
	self.wpn_fps_pis_g17_npc.unit = "units/payday2/weapons/wpn_fps_pis_g17/wpn_fps_pis_g17_npc"
end

function WeaponFactoryTweakData:_init_b92fs()
	self.parts.wpn_fps_pis_beretta_b_std = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_beretta_b_std",
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_b_std",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_beretta_body_beretta = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_beretta_body_beretta",
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_body_beretta",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_pis_beretta_body_rail = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_beretta_body_rail",
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_body_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_beretta_co_co1 = {
		parent = "slide",
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_co_co1",
		type = "barrel_ext",
		name_id = "bm_wp_beretta_co_co1",
		a_obj = "a_co",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			spread_moving = 1,
			damage = 1,
			concealment = -2,
			spread = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_pis_beretta_co_co2 = {
		parent = "slide",
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_co_co2",
		type = "barrel_ext",
		name_id = "bm_wp_beretta_co_co2",
		a_obj = "a_co",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			concealment = -2,
			damage = 2,
			suppression = -5,
			value = 3,
			spread_moving = 2
		}
	}
	self.parts.wpn_fps_pis_beretta_g_ergo = {
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_g_ergo",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_beretta_g_ergo",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_pis_beretta_g_std = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_beretta_g_std",
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_g_std",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_beretta_m_extended = {
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_m_extended",
		type = "magazine",
		name_id = "bm_wp_beretta_m_extended",
		a_obj = "a_m",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			value = 2,
			spread_moving = -2,
			concealment = -2,
			extra_ammo = 6
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_beretta_m_std = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_beretta_m_std",
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_m_std",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_beretta_o_std = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_beretta_o_std",
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_o_std",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_beretta_sl_brigadier = {
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_sl_brigadier",
		a_obj = "a_sl",
		type = "upper_reciever",
		name_id = "bm_wp_beretta_sl_brigadier",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 2,
			spread_moving = -2
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_beretta_sl_std = {
		a_obj = "a_sl",
		type = "upper_reciever",
		name_id = "bm_wp_beretta_sl_std",
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs_pts/wpn_fps_pis_beretta_sl_std",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_beretta_body_beretta.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_body_beretta"
	self.parts.wpn_fps_pis_beretta_body_rail.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_body_rail"
	self.parts.wpn_fps_pis_beretta_co_co1.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_co_1"
	self.parts.wpn_fps_pis_beretta_co_co2.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_co_2"
	self.parts.wpn_fps_pis_beretta_g_ergo.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_g_ergo"
	self.parts.wpn_fps_pis_beretta_g_std.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_g_std"
	self.parts.wpn_fps_pis_beretta_m_extended.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_m_extended"
	self.parts.wpn_fps_pis_beretta_m_std.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_m_std"
	self.parts.wpn_fps_pis_beretta_o_std.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_o_std"
	self.parts.wpn_fps_pis_beretta_sl_brigadier.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_sl_brigadier"
	self.parts.wpn_fps_pis_beretta_sl_std.third_unit = "units/payday2/weapons/wpn_third_pis_b92fs_pts/wpn_third_pis_beretta_sl_std"
	self.wpn_fps_pis_beretta = {
		unit = "units/payday2/weapons/wpn_fps_pis_b92fs/wpn_fps_pis_beretta",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_beretta_body_rail"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_beretta_body_rail"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_beretta_body_rail"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_beretta_body_rail"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_beretta_body_rail"},
			wpn_fps_upg_o_rmr = {"wpn_fps_pis_beretta_o_std"}
		},
		override = {
			wpn_upg_o_marksmansight_front = {a_obj = "a_os"},
			wpn_fps_upg_o_rmr = {parent = "upper_reciever"},
			wpn_fps_upg_pis_ns_flash = {parent = "lower_reciever"},
			wpn_fps_upg_ns_pis_medium_slim = {parent = "lower_reciever"},
			wpn_fps_upg_ns_ass_filter = {parent = "lower_reciever"},
			wpn_fps_upg_ns_pis_jungle = {parent = "lower_reciever"}
		},
		default_blueprint = {
			"wpn_fps_pis_beretta_body_beretta",
			"wpn_fps_pis_beretta_b_std",
			"wpn_fps_pis_beretta_g_std",
			"wpn_fps_pis_beretta_m_std",
			"wpn_fps_pis_beretta_o_std",
			"wpn_fps_pis_beretta_sl_std"
		},
		uses_parts = {
			"wpn_fps_pis_beretta_b_std",
			"wpn_fps_pis_beretta_body_beretta",
			"wpn_fps_pis_beretta_body_rail",
			"wpn_fps_pis_beretta_co_co1",
			"wpn_fps_pis_beretta_co_co2",
			"wpn_fps_pis_beretta_g_ergo",
			"wpn_fps_pis_beretta_g_std",
			"wpn_fps_pis_beretta_m_extended",
			"wpn_fps_pis_beretta_m_std",
			"wpn_fps_pis_beretta_o_std",
			"wpn_upg_o_marksmansight_rear",
			"wpn_fps_pis_beretta_sl_std",
			"wpn_fps_pis_beretta_sl_brigadier",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_pis_beretta_g_engraved",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_beretta_npc = deep_clone(self.wpn_fps_pis_beretta)
	self.wpn_fps_pis_beretta_npc.unit = "units/payday2/weapons/wpn_fps_pis_b92fs/wpn_fps_pis_beretta_npc"
	self.wpn_fps_pis_beretta_primary = deep_clone(self.wpn_fps_pis_beretta)
	self.wpn_fps_pis_beretta_primary.unit = "units/payday2/weapons/wpn_fps_pis_b92fs/wpn_fps_pis_beretta_primary"
	self.wpn_fps_pis_beretta_primary_npc = deep_clone(self.wpn_fps_pis_beretta_npc)
	self.wpn_fps_pis_beretta_primary_npc.unit = "units/payday2/weapons/wpn_fps_pis_b92fs/wpn_fps_pis_beretta_primary_npc"
end

function WeaponFactoryTweakData:_init_huntsman()
	self.parts.wpn_fps_shot_huntsman_b_long = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_huntsman_b_long",
		unit = "units/payday2/weapons/wpn_fps_shot_huntsman_pts/wpn_fps_shot_huntsman_b_long",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_shot_huntsman_b_short = {
		unit = "units/payday2/weapons/wpn_fps_shot_huntsman_pts/wpn_fps_shot_huntsman_b_short",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_huntsman_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = -4,
			value = 10,
			concealment = 10,
			spread = -4,
			spread_moving = 3
		},
		animations = {
			reload_not_empty = "reload",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_shot_huntsman_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_huntsman_body_standard",
		unit = "units/payday2/weapons/wpn_fps_shot_huntsman_pts/wpn_fps_shot_huntsman_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_huntsman_s_long = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_huntsman_s_long",
		unit = "units/payday2/weapons/wpn_fps_shot_huntsman_pts/wpn_fps_shot_huntsman_s_long",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_huntsman_s_short = {
		unit = "units/payday2/weapons/wpn_fps_shot_huntsman_pts/wpn_fps_shot_huntsman_s_short",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_huntsman_s_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = -4,
			value = 10,
			concealment = 10,
			spread = -4,
			spread_moving = 3
		}
	}
	self.parts.wpn_fps_shot_huntsman_b_long.third_unit = "units/payday2/weapons/wpn_third_shot_huntsman_pts/wpn_third_shot_huntsman_b_long"
	self.parts.wpn_fps_shot_huntsman_b_short.third_unit = "units/payday2/weapons/wpn_third_shot_huntsman_pts/wpn_third_shot_huntsman_b_short"
	self.parts.wpn_fps_shot_huntsman_body_standard.third_unit = "units/payday2/weapons/wpn_third_shot_huntsman_pts/wpn_third_shot_huntsman_body_standard"
	self.parts.wpn_fps_shot_huntsman_s_long.third_unit = "units/payday2/weapons/wpn_third_shot_huntsman_pts/wpn_third_shot_huntsman_s_long"
	self.parts.wpn_fps_shot_huntsman_s_short.third_unit = "units/payday2/weapons/wpn_third_shot_huntsman_pts/wpn_third_shot_huntsman_s_short"
	self.wpn_fps_shot_huntsman = {
		unit = "units/payday2/weapons/wpn_fps_shot_huntsman/wpn_fps_shot_huntsman",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {wpn_fps_upg_a_explosive = {custom_stats = {
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			bullet_class = "InstantExplosiveBulletBase",
			rays = 1
		}}},
		default_blueprint = {
			"wpn_fps_shot_huntsman_body_standard",
			"wpn_fps_shot_huntsman_b_long",
			"wpn_fps_shot_huntsman_s_long"
		},
		uses_parts = {
			"wpn_fps_shot_huntsman_body_standard",
			"wpn_fps_shot_huntsman_b_long",
			"wpn_fps_shot_huntsman_b_short",
			"wpn_fps_shot_huntsman_s_long",
			"wpn_fps_shot_huntsman_s_short"
		}
	}
	self.wpn_fps_shot_huntsman_npc = deep_clone(self.wpn_fps_shot_huntsman)
	self.wpn_fps_shot_huntsman_npc.unit = "units/payday2/weapons/wpn_fps_shot_huntsman/wpn_fps_shot_huntsman_npc"
end

function WeaponFactoryTweakData:_init_raging_bull()
	self.parts.wpn_fps_pis_rage_b_comp1 = {
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_b_comp1",
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_rage_b_comp1",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			spread_moving = -3,
			damage = 2,
			concealment = -3,
			spread = 2,
			recoil = 2
		}
	}
	self.parts.wpn_fps_pis_rage_b_comp2 = {
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_b_comp2",
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_rage_b_comp2",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			spread_moving = 1,
			damage = 1,
			suppression = -4,
			spread = -1,
			recoil = 1,
			concealment = -3
		}
	}
	self.parts.wpn_fps_pis_rage_b_long = {
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_b_long",
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_rage_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = 3,
			value = 5,
			concealment = -3,
			spread = 3,
			spread_moving = -3
		}
	}
	self.parts.wpn_fps_pis_rage_b_short = {
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_b_short",
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_rage_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = -3,
			value = 3,
			concealment = 3,
			spread = -2,
			spread_moving = 3
		}
	}
	self.parts.wpn_fps_pis_rage_b_standard = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_rage_b_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_rage_body_smooth = {
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_body_smooth",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_rage_body_smooth",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 6,
			recoil = 1,
			concealment = 1
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		adds = {"wpn_fps_pis_rage_lock"}
	}
	self.parts.wpn_fps_pis_rage_body_standard = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_rage_body_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_body_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		adds = {"wpn_fps_pis_rage_lock"}
	}
	self.parts.wpn_fps_pis_rage_g_ergo = {
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_g_ergo",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_rage_g_ergo",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_pis_rage_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_rage_g_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_rage_pts/wpn_fps_pis_rage_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_rage_b_comp1.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_b_comp1"
	self.parts.wpn_fps_pis_rage_b_comp2.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_b_comp2"
	self.parts.wpn_fps_pis_rage_b_long.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_b_long"
	self.parts.wpn_fps_pis_rage_b_short.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_b_short"
	self.parts.wpn_fps_pis_rage_b_standard.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_b_standard"
	self.parts.wpn_fps_pis_rage_body_smooth.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_body_smooth"
	self.parts.wpn_fps_pis_rage_body_standard.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_body_standard"
	self.parts.wpn_fps_pis_rage_g_ergo.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_g_ergo"
	self.parts.wpn_fps_pis_rage_g_standard.third_unit = "units/payday2/weapons/wpn_third_pis_rage_pts/wpn_third_pis_rage_g_standard"
	self.wpn_fps_pis_rage = {
		unit = "units/payday2/weapons/wpn_fps_pis_rage/wpn_fps_pis_rage",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_docter = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_eotech = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_cmore = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_acog = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_cs = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_reflex = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_spot = {"wpn_fps_pis_rage_o_adapter"}
		},
		default_blueprint = {
			"wpn_fps_pis_rage_body_standard",
			"wpn_fps_pis_rage_b_standard",
			"wpn_fps_pis_rage_g_standard"
		},
		uses_parts = {
			"wpn_fps_pis_rage_body_standard",
			"wpn_fps_pis_rage_body_smooth",
			"wpn_fps_pis_rage_b_standard",
			"wpn_fps_pis_rage_b_short",
			"wpn_fps_pis_rage_b_long",
			"wpn_fps_pis_rage_b_comp1",
			"wpn_fps_pis_rage_b_comp2",
			"wpn_fps_pis_rage_g_standard",
			"wpn_fps_pis_rage_g_ergo",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_pis_rage_extra",
			"wpn_fps_pis_rage_o_adapter",
			"wpn_fps_pis_rage_lock",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_pis_rage_npc = deep_clone(self.wpn_fps_pis_rage)
	self.wpn_fps_pis_rage_npc.unit = "units/payday2/weapons/wpn_fps_pis_rage/wpn_fps_pis_rage_npc"
	self.wpn_fps_pis_rage_primary = deep_clone(self.wpn_fps_pis_rage)
	self.wpn_fps_pis_rage_primary.unit = "units/payday2/weapons/wpn_fps_pis_rage/wpn_fps_pis_rage_primary"
	self.wpn_fps_pis_rage_primary_npc = deep_clone(self.wpn_fps_pis_rage_npc)
	self.wpn_fps_pis_rage_primary_npc.unit = "units/payday2/weapons/wpn_fps_pis_rage/wpn_fps_pis_rage_primary_npc"
end

function WeaponFactoryTweakData:_init_saw()
	self.parts.wpn_fps_saw_b_normal = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_saw_b_normal",
		unit = "units/payday2/weapons/wpn_fps_saw_pts/wpn_fps_saw_b_normal",
		stats = {value = 1}
	}
	self.parts.wpn_fps_saw_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_saw_body_standard",
		unit = "units/payday2/weapons/wpn_fps_saw_pts/wpn_fps_saw_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_saw_m_blade = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_saw_m_blade",
		unit = "units/payday2/weapons/wpn_fps_saw_pts/wpn_fps_saw_m_blade",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.wpn_fps_saw = {
		unit = "units/payday2/weapons/wpn_fps_saw/wpn_fps_saw",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		default_blueprint = {
			"wpn_fps_saw_b_normal",
			"wpn_fps_saw_body_standard",
			"wpn_fps_saw_m_blade"
		},
		uses_parts = {
			"wpn_fps_saw_b_normal",
			"wpn_fps_saw_body_standard",
			"wpn_fps_saw_m_blade",
			"wpn_fps_saw_body_silent",
			"wpn_fps_saw_body_speed",
			"wpn_fps_saw_m_blade_durable",
			"wpn_fps_saw_m_blade_sharp"
		}
	}
	self.wpn_fps_saw_npc = deep_clone(self.wpn_fps_saw)
	self.wpn_fps_saw_npc.unit = "units/payday2/weapons/wpn_fps_saw/wpn_fps_saw_npc"
	self.parts.wpn_fps_saw_b_normal.third_unit = "units/payday2/weapons/wpn_third_saw_pts/wpn_third_saw_b_normal"
	self.parts.wpn_fps_saw_body_standard.third_unit = "units/payday2/weapons/wpn_third_saw_pts/wpn_third_saw_body_standard"
	self.parts.wpn_fps_saw_m_blade.third_unit = "units/payday2/weapons/wpn_third_saw_pts/wpn_third_saw_m_blade"
	self.wpn_fps_saw_secondary = deep_clone(self.wpn_fps_saw)
	self.wpn_fps_saw_secondary.unit = "units/payday2/weapons/wpn_fps_saw/wpn_fps_saw_secondary"
	self.wpn_fps_saw_secondary_npc = deep_clone(self.wpn_fps_saw)
	self.wpn_fps_saw_secondary_npc.unit = "units/payday2/weapons/wpn_fps_saw/wpn_fps_saw_secondary_npc"
end

function WeaponFactoryTweakData:_init_usp()
	self.parts.wpn_fps_pis_usp_body_standard = {
		unit = "units/payday2/weapons/wpn_fps_pis_usp_pts/wpn_fps_pis_usp_body_standard",
		a_obj = "a_body",
		type = "lower_reciever",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_usp_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		unit = "units/payday2/weapons/wpn_fps_pis_usp_pts/wpn_fps_pis_usp_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_usp_fl_adapter = {
		unit = "units/payday2/weapons/wpn_fps_pis_usp_pts/wpn_fps_pis_usp_fl_adapter",
		a_obj = "a_fl",
		type = "extra",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_usp_body_standard.third_unit = "units/payday2/weapons/wpn_third_pis_usp_pts/wpn_third_pis_usp_body_standard"
	self.parts.wpn_fps_pis_usp_m_standard.third_unit = "units/payday2/weapons/wpn_third_pis_usp_pts/wpn_third_pis_usp_m_standard"
	self.parts.wpn_fps_pis_usp_fl_adapter.third_unit = "units/payday2/weapons/wpn_third_pis_usp_pts/wpn_third_pis_usp_fl_adapter"
	self.parts.wpn_fps_pis_usp_b_tactical = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_pis_usp_b_tactical",
		unit = "units/payday2/weapons/wpn_fps_pis_usp_pts/wpn_fps_pis_usp_b_tactical",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_usp_b_expert = {
		unit = "units/payday2/weapons/wpn_fps_pis_usp_pts/wpn_fps_pis_usp_b_expert",
		dlc = "pd2_clan",
		type = "slide",
		name_id = "bm_wp_pis_usp_b_expert",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 3,
			value = 2,
			concealment = -1
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_usp_b_match = {
		unit = "units/payday2/weapons/wpn_fps_pis_usp_pts/wpn_fps_pis_usp_b_match",
		dlc = "pd2_clan",
		type = "slide",
		name_id = "bm_wp_pis_usp_b_match",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			recoil = 2,
			spread = 1,
			concealment = -1
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_usp_m_extended = {
		unit = "units/payday2/weapons/wpn_fps_pis_usp_pts/wpn_fps_pis_usp_m_extended",
		dlc = "pd2_clan",
		type = "magazine",
		name_id = "bm_wp_pis_usp_m_extended",
		a_obj = "a_m",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			spread_moving = -1,
			concealment = -1,
			extra_ammo = 4
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_usp_b_expert.third_unit = "units/payday2/weapons/wpn_third_pis_usp_pts/wpn_third_pis_usp_b_expert"
	self.parts.wpn_fps_pis_usp_b_match.third_unit = "units/payday2/weapons/wpn_third_pis_usp_pts/wpn_third_pis_usp_b_match"
	self.parts.wpn_fps_pis_usp_b_tactical.third_unit = "units/payday2/weapons/wpn_third_pis_usp_pts/wpn_third_pis_usp_b_tactical"
	self.parts.wpn_fps_pis_usp_m_extended.third_unit = "units/payday2/weapons/wpn_third_pis_usp_pts/wpn_third_pis_usp_m_extended"
	self.parts.wpn_fps_pis_usp_co_comp_1 = {
		parent = "slide",
		dlc = "pd2_clan",
		type = "barrel_ext",
		name_id = "bm_wp_usp_co_comp_1",
		a_obj = "a_co",
		unit = "units/payday2/weapons/wpn_fps_pis_usp_pts/wpn_fps_pis_usp_co_comp_1",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			concealment = -1,
			damage = 2,
			suppression = -5,
			spread = -1
		}
	}
	self.parts.wpn_fps_pis_usp_co_comp_2 = {
		parent = "slide",
		dlc = "pd2_clan",
		type = "barrel_ext",
		name_id = "bm_wp_usp_co_comp_2",
		a_obj = "a_co",
		unit = "units/payday2/weapons/wpn_fps_pis_usp_pts/wpn_fps_pis_usp_co_comp_2",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 2,
			recoil = 2,
			value = 5,
			concealment = -1
		},
		third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_co_2"
	}
	self.parts.wpn_fps_pis_usp_co_comp_1.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_co_1"
	self.wpn_fps_pis_usp = {
		unit = "units/payday2/weapons/wpn_fps_pis_usp/wpn_fps_pis_usp",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_usp_fl_adapter"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_usp_fl_adapter"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_usp_fl_adapter"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_usp_fl_adapter"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_usp_fl_adapter"}
		},
		override = {wpn_fps_upg_o_rmr = {parent = "slide"}},
		default_blueprint = {
			"wpn_fps_pis_usp_b_tactical",
			"wpn_fps_pis_usp_body_standard",
			"wpn_fps_pis_usp_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_usp_b_match",
			"wpn_fps_pis_usp_body_standard",
			"wpn_fps_pis_usp_m_standard",
			"wpn_fps_pis_usp_m_extended",
			"wpn_fps_pis_usp_b_expert",
			"wpn_fps_pis_usp_b_tactical",
			"wpn_fps_pis_usp_co_comp_1",
			"wpn_fps_pis_usp_co_comp_2",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle",
			"wpn_fps_pis_usp_m_big"
		}
	}
	self.wpn_fps_pis_usp_npc = deep_clone(self.wpn_fps_pis_usp)
	self.wpn_fps_pis_usp_npc.unit = "units/payday2/weapons/wpn_fps_pis_usp/wpn_fps_pis_usp_npc"
end

function WeaponFactoryTweakData:_init_g22c()
	self.parts.wpn_fps_pis_g22c_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_g22c_body_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_g22c_pts/wpn_fps_pis_g22c_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_g22c_b_standard = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_g22c_b_standard",
		unit = "units/payday2/weapons/wpn_fps_pis_g22c_pts/wpn_fps_pis_g22c_b_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_g22c_b_long = {
		unit = "units/payday2/weapons/wpn_fps_pis_g22c_pts/wpn_fps_pis_g22c_b_long",
		dlc = "pd2_clan",
		type = "slide",
		name_id = "bm_wp_g22c_b_long",
		a_obj = "a_sl",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 5,
			spread_moving = 1,
			damage = 1,
			suppression = -2,
			spread = -1,
			recoil = 1
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_g22c_b_standard.third_unit = "units/payday2/weapons/wpn_third_pis_g22c_pts/wpn_third_pis_g22c_b_standard"
	self.parts.wpn_fps_pis_g22c_b_long.third_unit = "units/payday2/weapons/wpn_third_pis_g22c_pts/wpn_third_pis_g22c_b_long"
	self.parts.wpn_fps_pis_g22c_body_standard.third_unit = "units/payday2/weapons/wpn_third_pis_g22c_pts/wpn_third_pis_g22c_body_standard"
	self.wpn_fps_pis_g22c = {
		unit = "units/payday2/weapons/wpn_fps_pis_g22c/wpn_fps_pis_g22c",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {wpn_fps_upg_o_rmr = {parent = "slide"}},
		default_blueprint = {
			"wpn_fps_pis_g22c_b_standard",
			"wpn_fps_pis_g22c_body_standard",
			"wpn_fps_pis_g18c_m_mag_17rnd"
		},
		uses_parts = {
			"wpn_fps_pis_g22c_b_standard",
			"wpn_fps_pis_g22c_b_long",
			"wpn_fps_pis_g22c_body_standard",
			"wpn_fps_pis_g18c_g_ergo",
			"wpn_fps_pis_g18c_co_1",
			"wpn_fps_pis_g18c_co_comp_2",
			"wpn_fps_pis_g18c_m_mag_33rnd",
			"wpn_fps_pis_g18c_m_mag_17rnd",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_pis_g26_g_gripforce",
			"wpn_fps_pis_g26_g_laser",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_g22c_npc = deep_clone(self.wpn_fps_pis_g22c)
	self.wpn_fps_pis_g22c_npc.unit = "units/payday2/weapons/wpn_fps_pis_g22c/wpn_fps_pis_g22c_npc"
end

function WeaponFactoryTweakData:_init_judge()
	self.parts.wpn_fps_pis_judge_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_judge_body_standard",
		unit = "units/pd2_million/weapons/wpn_fps_pis_judge_pts/wpn_fps_pis_judge_body_standard",
		stats = {value = 1},
		forbids = {"wpn_fps_addon_ris"},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_pis_judge_b_standard = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_judge_b_standard",
		unit = "units/pd2_million/weapons/wpn_fps_pis_judge_pts/wpn_fps_pis_judge_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_judge_fl_adapter = {
		a_obj = "a_fl_body",
		type = "extra",
		name_id = "bm_wp_judge_b_standard",
		unit = "units/pd2_million/weapons/wpn_fps_pis_judge_pts/wpn_fps_pis_judge_fl_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_judge_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_judge_b_standard",
		unit = "units/pd2_million/weapons/wpn_fps_pis_judge_pts/wpn_fps_pis_judge_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_judge_body_standard.third_unit = "units/pd2_million/weapons/wpn_third_pis_judge_pts/wpn_third_pis_judge_body_standard"
	self.parts.wpn_fps_pis_judge_b_standard.third_unit = "units/pd2_million/weapons/wpn_third_pis_judge_pts/wpn_third_pis_judge_b_standard"
	self.parts.wpn_fps_pis_judge_fl_adapter.third_unit = "units/pd2_million/weapons/wpn_third_pis_judge_pts/wpn_third_pis_judge_fl_adapter"
	self.parts.wpn_fps_pis_judge_g_standard.third_unit = "units/pd2_million/weapons/wpn_third_pis_judge_pts/wpn_third_pis_judge_g_standard"
	self.wpn_fps_pis_judge = {
		unit = "units/pd2_million/weapons/wpn_fps_pis_judge/wpn_fps_pis_judge",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {
			wpn_fps_upg_ns_shot_shark = {parent = "slide"},
			wpn_fps_upg_ns_shot_thick = {parent = "slide"},
			wpn_fps_upg_shot_ns_king = {parent = "slide"},
			wpn_fps_upg_ns_sho_salvo_large = {parent = "slide"},
			wpn_fps_upg_ns_duck = {parent = "slide"},
			wpn_fps_upg_a_piercing = {custom_stats = {
				damage_near_mul = 2,
				armor_piercing_add = 1,
				damage_far_mul = 1.7
			}},
			wpn_fps_upg_a_explosive = {custom_stats = {
				ignore_statistic = true,
				damage_far_mul = 2.5,
				damage_near_mul = 2,
				bullet_class = "InstantExplosiveBulletBase",
				rays = 1
			}}
		},
		adds = {
			wpn_fps_upg_fl_ass_laser = {"wpn_fps_pis_judge_fl_adapter"},
			wpn_fps_upg_fl_ass_peq15 = {"wpn_fps_pis_judge_fl_adapter"},
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {"wpn_fps_pis_judge_fl_adapter"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {"wpn_fps_pis_judge_fl_adapter"},
			wpn_fps_upg_fl_ass_utg = {"wpn_fps_pis_judge_fl_adapter"},
			wpn_fps_upg_o_specter = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_docter = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_eotech = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_cmore = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_acog = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_cs = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_reflex = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_pis_rage_o_adapter"},
			wpn_fps_upg_o_spot = {"wpn_fps_pis_rage_o_adapter"}
		},
		default_blueprint = {
			"wpn_fps_pis_judge_body_standard",
			"wpn_fps_pis_judge_b_standard",
			"wpn_fps_pis_judge_g_standard"
		},
		uses_parts = {
			"wpn_fps_pis_judge_body_standard",
			"wpn_fps_pis_judge_b_standard",
			"wpn_fps_pis_judge_g_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_pis_judge_b_legend",
			"wpn_fps_pis_judge_g_legend",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_pis_judge_npc = deep_clone(self.wpn_fps_pis_judge)
	self.wpn_fps_pis_judge_npc.unit = "units/pd2_million/weapons/wpn_fps_pis_judge/wpn_fps_pis_judge_npc"
end

function WeaponFactoryTweakData:_init_m45()
	self.parts.wpn_fps_smg_m45_m_mag = {
		texture_bundle_folder = "dlc1",
		type = "magazine",
		name_id = "bm_wp_shorty_m_extended_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_m_mag",
		a_obj = "a_m",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_m45_m_extended = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_m",
		type = "magazine",
		dlc = "armored_transport",
		name_id = "bm_wp_smg_m45_m_extended",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_m_extended",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			concealment = -2,
			value = 4,
			extra_ammo = 6
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_m45_b_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_serbu_b_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_m45_b_green = {
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		type = "barrel",
		name_id = "bm_wp_smg_m45_b_green",
		a_obj = "a_b",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_b_green",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 3,
			concealment = -1
		}
	}
	self.parts.wpn_fps_smg_m45_b_small = {
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		type = "barrel",
		name_id = "bm_wp_smg_m45_b_small",
		a_obj = "a_b",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_b_small",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -2,
			value = 2,
			concealment = 3
		}
	}
	self.parts.wpn_fps_smg_m45_body_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_serbu_s_nostock_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_m45_body_green = {
		texture_bundle_folder = "dlc1",
		type = "upper_reciever",
		a_obj = "a_body",
		dlc = "armored_transport",
		name_id = "bm_wp_smg_m45_body_green",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_body_green",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			recoil = 1,
			concealment = -1
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_m45_s_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_serbu_s_solid_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_m45_s_folded = {
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		type = "stock",
		name_id = "bm_wp_smg_m45_s_folded",
		a_obj = "a_s",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_s_folded",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			recoil = -2,
			concealment = 3
		}
	}
	self.parts.wpn_fps_smg_m45_g_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_serbu_s_solid_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_m45_g_ergo = {
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		type = "grip",
		name_id = "bm_wp_smg_m45_g_ergo",
		a_obj = "a_g",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_g_ergo",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			recoil = 1,
			value = 2
		}
	}
	self.parts.wpn_fps_smg_m45_g_bling = {
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		type = "grip",
		name_id = "bm_wp_smg_m45_g_bling",
		a_obj = "a_g",
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_g_bling",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			recoil = 2,
			concealment = -1
		}
	}
	self.parts.wpn_fps_smg_m45_m_mag.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_m_mag"
	self.parts.wpn_fps_smg_m45_b_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_b_standard"
	self.parts.wpn_fps_smg_m45_body_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_body_standard"
	self.parts.wpn_fps_smg_m45_s_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_s_standard"
	self.parts.wpn_fps_smg_m45_g_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_g_standard"
	self.parts.wpn_fps_smg_m45_b_small.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_b_small"
	self.parts.wpn_fps_smg_m45_body_green.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_body_green"
	self.parts.wpn_fps_smg_m45_s_folded.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_s_folded"
	self.parts.wpn_fps_smg_m45_g_bling.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_g_bling"
	self.parts.wpn_fps_smg_m45_g_ergo.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_g_ergo"
	self.parts.wpn_fps_smg_m45_m_extended.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_m_extended"
	self.parts.wpn_fps_smg_m45_b_green.third_unit = "units/pd2_dlc1/weapons/wpn_third_smg_m45_pts/wpn_third_smg_m45_b_green"
	self.wpn_fps_smg_m45 = {
		unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45/wpn_fps_smg_m45",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_docter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cmore = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_acog = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cs = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_reflex = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_peq15 = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_laser = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_utg = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_shot_r870_ris_special"}
		},
		default_blueprint = {
			"wpn_fps_smg_m45_m_mag",
			"wpn_fps_smg_m45_b_standard",
			"wpn_fps_smg_m45_body_standard",
			"wpn_fps_smg_m45_s_standard",
			"wpn_fps_smg_m45_g_standard"
		},
		uses_parts = {
			"wpn_fps_smg_m45_m_mag",
			"wpn_fps_smg_m45_b_standard",
			"wpn_fps_smg_m45_body_standard",
			"wpn_fps_smg_m45_s_standard",
			"wpn_fps_smg_m45_g_standard",
			"wpn_fps_smg_m45_m_extended",
			"wpn_fps_smg_m45_b_small",
			"wpn_fps_smg_m45_b_green",
			"wpn_fps_smg_m45_body_green",
			"wpn_fps_smg_m45_s_folded",
			"wpn_fps_smg_m45_g_bling",
			"wpn_fps_smg_m45_g_ergo",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot"
		}
	}
	self.wpn_fps_smg_m45_npc = deep_clone(self.wpn_fps_smg_m45)
	self.wpn_fps_smg_m45_npc.unit = "units/pd2_dlc1/weapons/wpn_fps_smg_m45/wpn_fps_smg_m45_npc"
end

function WeaponFactoryTweakData:_init_s552()
	self.parts.wpn_fps_ass_s552_o_flipup = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_of",
		type = "sight",
		name_id = "bm_wp_shorty_m_extended_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_o_flipup",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_ass_s552_m_standard = {
		texture_bundle_folder = "dlc1",
		type = "magazine",
		name_id = "bm_wp_shorty_m_extended_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 28,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_s552_b_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_serbu_b_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_s552_b_long = {
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		type = "barrel",
		name_id = "bm_wp_ass_s552_b_long",
		a_obj = "a_b",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			concealment = -4,
			damage = 1,
			value = 6,
			spread_moving = -1
		}
	}
	self.parts.wpn_fps_ass_s552_body_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_serbu_s_nostock_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_s552_body_standard_black = {
		texture_bundle_folder = "dlc1",
		type = "upper_reciever",
		a_obj = "a_body",
		dlc = "armored_transport",
		name_id = "bm_wp_ass_s552_body_standard_black",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_body_standard_black",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			value = 7,
			damage = 1,
			concealment = 4
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_s552_fg_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_serbu_s_nostock_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_s552_fg_standard_green = {
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		type = "foregrip",
		name_id = "bm_wp_ass_s552_fg_standard_green",
		a_obj = "a_fg",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_fg_standard_green",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 1,
			concealment = -4
		}
	}
	self.parts.wpn_fps_ass_s552_fg_railed = {
		type = "foregrip",
		texture_bundle_folder = "dlc1",
		a_obj = "a_fg",
		dlc = "armored_transport",
		name_id = "bm_wp_ass_s552_fg_railed",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_fg_railed",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 7,
			recoil = 5,
			concealment = -2
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_ass_s552_g_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_serbu_s_solid_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_s552_g_standard_green = {
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		type = "grip",
		name_id = "bm_wp_ass_s552_g_standard_green",
		a_obj = "a_g",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_g_standard_green",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			recoil = 2,
			concealment = -2
		}
	}
	self.parts.wpn_fps_ass_s552_s_m4 = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_serbu_s_solid_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_s_m4",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_s552_s_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_serbu_s_solid_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_s552_s_standard_green = {
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		type = "stock",
		name_id = "bm_wp_ass_s552_s_standard_green",
		a_obj = "a_s",
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552_pts/wpn_fps_ass_s552_s_standard_green",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			recoil = 2,
			concealment = -2
		}
	}
	self.parts.wpn_fps_ass_s552_o_flipup.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_o_flipup"
	self.parts.wpn_fps_ass_s552_m_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_m_standard"
	self.parts.wpn_fps_ass_s552_b_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_b_standard"
	self.parts.wpn_fps_ass_s552_body_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_body_standard"
	self.parts.wpn_fps_ass_s552_fg_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_fg_standard"
	self.parts.wpn_fps_ass_s552_fg_railed.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_fg_railed"
	self.parts.wpn_fps_ass_s552_g_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_g_standard"
	self.parts.wpn_fps_ass_s552_s_m4.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_s_m4"
	self.parts.wpn_fps_ass_s552_s_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_s_standard"
	self.parts.wpn_fps_ass_s552_b_long.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_b_long"
	self.parts.wpn_fps_ass_s552_body_standard_black.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_body_standard_black"
	self.parts.wpn_fps_ass_s552_fg_standard_green.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_fg_standard_green"
	self.parts.wpn_fps_ass_s552_g_standard_green.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_g_standard_green"
	self.parts.wpn_fps_ass_s552_s_standard_green.third_unit = "units/pd2_dlc1/weapons/wpn_third_ass_s552_pts/wpn_third_ass_s552_s_standard_green"
	self.wpn_fps_ass_s552 = {
		unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552/wpn_fps_ass_s552",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		stock_adapter = "wpn_fps_ass_s552_s_m4",
		adds = {
			wpn_fps_upg_fl_ass_smg_sho_surefire = {"wpn_fps_addon_ris"},
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {"wpn_fps_addon_ris"},
			wpn_fps_upg_fl_ass_peq15 = {"wpn_fps_addon_ris"},
			wpn_fps_upg_fl_ass_laser = {"wpn_fps_addon_ris"},
			wpn_fps_upg_fl_ass_utg = {"wpn_fps_addon_ris"}
		},
		default_blueprint = {
			"wpn_fps_ass_s552_o_flipup",
			"wpn_fps_ass_s552_m_standard",
			"wpn_fps_ass_s552_b_standard",
			"wpn_fps_ass_s552_body_standard",
			"wpn_fps_ass_s552_fg_standard",
			"wpn_fps_ass_s552_s_standard",
			"wpn_fps_ass_s552_g_standard"
		},
		uses_parts = {
			"wpn_fps_ass_s552_o_flipup",
			"wpn_fps_ass_s552_m_standard",
			"wpn_fps_ass_s552_b_standard",
			"wpn_fps_ass_s552_b_long",
			"wpn_fps_ass_s552_body_standard",
			"wpn_fps_ass_s552_body_standard_black",
			"wpn_fps_ass_s552_fg_standard",
			"wpn_fps_ass_s552_fg_railed",
			"wpn_fps_ass_s552_fg_standard_green",
			"wpn_fps_ass_s552_s_standard",
			"wpn_fps_ass_s552_s_m4",
			"wpn_fps_ass_s552_s_standard_green",
			"wpn_fps_ass_s552_g_standard",
			"wpn_fps_ass_s552_g_standard_green",
			"wpn_fps_upg_m4_s_standard_vanilla",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_s552_npc = deep_clone(self.wpn_fps_ass_s552)
	self.wpn_fps_ass_s552_npc.unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552/wpn_fps_ass_s552_npc"
	self.wpn_fps_ass_s552_secondary = deep_clone(self.wpn_fps_ass_s552)
	self.wpn_fps_ass_s552_secondary.unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552/wpn_fps_ass_s552_secondary"
	self.wpn_fps_ass_s552_secondary_npc = deep_clone(self.wpn_fps_ass_s552_npc)
	self.wpn_fps_ass_s552_secondary_npc.unit = "units/pd2_dlc1/weapons/wpn_fps_ass_s552/wpn_fps_ass_s552_secondary_npc"
end

function WeaponFactoryTweakData:_init_ppk()
	self.parts.wpn_fps_pis_ppk_b_long = {
		texture_bundle_folder = "dlc1",
		type = "slide",
		a_obj = "a_b",
		dlc = "armored_transport",
		name_id = "bm_wp_pis_ppk_b_long",
		unit = "units/pd2_dlc1/weapons/wpn_fps_pis_ppk_pts/wpn_fps_pis_ppk_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			concealment = -2,
			damage = 1,
			spread = 2,
			spread_moving = -2
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_ppk_b_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_sppk_b_standard",
		unit = "units/pd2_dlc1/weapons/wpn_fps_pis_ppk_pts/wpn_fps_pis_ppk_b_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_ppk_body_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_serbu_s_solid_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_pis_ppk_pts/wpn_fps_pis_ppk_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_ppk_fl_mount = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_wp_serbu_s_solid_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_pis_ppk_pts/wpn_fps_pis_ppk_fl_mount",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_ppk_g_laser = {
		type = "grip",
		texture_bundle_folder = "dlc1",
		dlc = "armored_transport",
		a_obj = "a_g",
		name_id = "bm_wp_pis_ppk_g_laser",
		unit = "units/pd2_dlc1/weapons/wpn_fps_pis_ppk_pts/wpn_fps_pis_ppk_g_laser",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread = 2
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_pis_ppk_g_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_serbu_s_solid_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_pis_ppk_pts/wpn_fps_pis_ppk_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_ppk_m_standard = {
		texture_bundle_folder = "dlc1",
		type = "magazine",
		name_id = "bm_wp_serbu_s_solid_short",
		unit = "units/pd2_dlc1/weapons/wpn_fps_pis_ppk_pts/wpn_fps_pis_ppk_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_ppk_b_long.third_unit = "units/pd2_dlc1/weapons/wpn_third_pis_ppk_pts/wpn_third_pis_ppk_b_long"
	self.parts.wpn_fps_pis_ppk_b_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_pis_ppk_pts/wpn_third_pis_ppk_b_standard"
	self.parts.wpn_fps_pis_ppk_body_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_pis_ppk_pts/wpn_third_pis_ppk_body_standard"
	self.parts.wpn_fps_pis_ppk_fl_mount.third_unit = "units/pd2_dlc1/weapons/wpn_third_pis_ppk_pts/wpn_third_pis_ppk_fl_mount"
	self.parts.wpn_fps_pis_ppk_g_laser.third_unit = "units/pd2_dlc1/weapons/wpn_third_pis_ppk_pts/wpn_third_pis_ppk_g_laser"
	self.parts.wpn_fps_pis_ppk_g_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_pis_ppk_pts/wpn_third_pis_ppk_g_standard"
	self.parts.wpn_fps_pis_ppk_m_standard.third_unit = "units/pd2_dlc1/weapons/wpn_third_pis_ppk_pts/wpn_third_pis_ppk_m_standard"
	self.wpn_fps_pis_ppk = {
		unit = "units/pd2_dlc1/weapons/wpn_fps_pis_ppk/wpn_fps_pis_ppk",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_ppk_fl_mount"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_ppk_fl_mount"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_ppk_fl_mount"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_ppk_fl_mount"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_ppk_fl_mount"}
		},
		override = {wpn_fps_upg_o_rmr = {parent = "slide"}},
		default_blueprint = {
			"wpn_fps_pis_ppk_b_standard",
			"wpn_fps_pis_ppk_body_standard",
			"wpn_fps_pis_ppk_g_standard",
			"wpn_fps_pis_ppk_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_ppk_b_standard",
			"wpn_fps_pis_ppk_b_long",
			"wpn_fps_pis_ppk_body_standard",
			"wpn_fps_pis_ppk_g_standard",
			"wpn_fps_pis_ppk_g_laser",
			"wpn_fps_pis_ppk_m_standard",
			"wpn_fps_pis_ppk_fl_mount",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_ppk_npc = deep_clone(self.wpn_fps_pis_ppk)
	self.wpn_fps_pis_ppk_npc.unit = "units/pd2_dlc1/weapons/wpn_fps_pis_ppk/wpn_fps_pis_ppk_npc"
end

function WeaponFactoryTweakData:_init_mp7()
	self.parts.wpn_fps_smg_mp7_m_short = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_mp7_m_short",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_smg_mp7_pts/wpn_fps_smg_mp7_m_short",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mp7_m_extended = {
		texture_bundle_folder = "gage_pack",
		type = "magazine",
		a_obj = "a_m",
		dlc = "gage_pack",
		name_id = "bm_wp_mp7_m_extended",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_smg_mp7_pts/wpn_fps_smg_mp7_m_extended",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread_moving = -1,
			concealment = -3,
			extra_ammo = 6
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mp7_b_standard = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_mp7_b_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_smg_mp7_pts/wpn_fps_smg_mp7_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp7_b_suppressed = {
		a_obj = "a_ns",
		texture_bundle_folder = "gage_pack",
		sub_type = "silencer",
		type = "barrel_ext",
		dlc = "gage_pack",
		parent = "barrel",
		name_id = "bm_wp_mp7_b_suppressed",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_smg_mp7_pts/wpn_fps_smg_mp7_b_suppressed",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread = 1,
			damage = -1,
			suppression = 12,
			value = 4,
			recoil = 3,
			spread_moving = -2,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_smg_mp7_body_standard = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_mp7_body_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_smg_mp7_pts/wpn_fps_smg_mp7_body_standard",
		stats = {value = 1},
		adds = {"wpn_fps_upg_vg_ass_smg_stubby"}
	}
	self.parts.wpn_fps_smg_mp7_s_standard = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mp7_s_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_smg_mp7_pts/wpn_fps_smg_mp7_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp7_s_long = {
		texture_bundle_folder = "gage_pack",
		dlc = "gage_pack",
		type = "stock",
		name_id = "bm_wp_mp7_s_long",
		a_obj = "a_s",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_smg_mp7_pts/wpn_fps_smg_mp7_s_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 2,
			spread_moving = -1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_smg_mp7_m_short.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_smg_mp7_pts/wpn_third_smg_mp7_m_short"
	self.parts.wpn_fps_smg_mp7_m_extended.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_smg_mp7_pts/wpn_third_smg_mp7_m_extended"
	self.parts.wpn_fps_smg_mp7_b_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_smg_mp7_pts/wpn_third_smg_mp7_b_standard"
	self.parts.wpn_fps_smg_mp7_b_suppressed.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_smg_mp7_pts/wpn_third_smg_mp7_b_suppressed"
	self.parts.wpn_fps_smg_mp7_body_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_smg_mp7_pts/wpn_third_smg_mp7_body_standard"
	self.parts.wpn_fps_smg_mp7_s_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_smg_mp7_pts/wpn_third_smg_mp7_s_standard"
	self.parts.wpn_fps_smg_mp7_s_long.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_smg_mp7_pts/wpn_third_smg_mp7_s_long"
	self.wpn_fps_smg_mp7 = {
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_smg_mp7/wpn_fps_smg_mp7",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		default_blueprint = {
			"wpn_fps_smg_mp7_m_short",
			"wpn_fps_smg_mp7_b_standard",
			"wpn_fps_smg_mp7_body_standard",
			"wpn_fps_smg_mp7_s_standard"
		},
		uses_parts = {
			"wpn_fps_smg_mp7_m_short",
			"wpn_fps_smg_mp7_b_standard",
			"wpn_fps_smg_mp7_body_standard",
			"wpn_fps_smg_mp7_s_standard",
			"wpn_fps_smg_mp7_m_extended",
			"wpn_fps_smg_mp7_b_suppressed",
			"wpn_fps_smg_mp7_s_long",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_mp7_npc = deep_clone(self.wpn_fps_smg_mp7)
	self.wpn_fps_smg_mp7_npc.unit = "units/pd2_dlc_dec5/weapons/wpn_fps_smg_mp7/wpn_fps_smg_mp7_npc"
end

function WeaponFactoryTweakData:_init_scar()
	self.parts.wpn_fps_ass_scar_m_standard = {
		texture_bundle_folder = "gage_pack",
		type = "magazine",
		name_id = "bm_wp_scar_m_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_scar_ns_standard = {
		texture_bundle_folder = "gage_pack",
		parent = "barrel",
		type = "barrel_ext",
		name_id = "bm_wp_scar_ns_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_ns_standard",
		a_obj = "a_ns",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_scar_ns_short = {
		texture_bundle_folder = "gage_pack",
		parent = "barrel",
		type = "barrel_ext",
		name_id = "bm_wp_scar_ns_short",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_ns_short",
		a_obj = "a_ns",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_scar_b_long = {
		texture_bundle_folder = "gage_pack",
		dlc = "gage_pack",
		type = "barrel",
		name_id = "bm_wp_scar_b_long",
		a_obj = "a_b",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 2,
			spread_moving = -3,
			value = 4,
			concealment = -3
		}
	}
	self.parts.wpn_fps_ass_scar_b_medium = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_scar_b_medium",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_b_medium",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_scar_b_short = {
		type = "barrel",
		texture_bundle_folder = "gage_pack",
		a_obj = "a_b",
		dlc = "gage_pack",
		name_id = "bm_wp_scar_b_short",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			concealment = 3,
			damage = 1,
			suppression = -2,
			spread = -1,
			spread_moving = 3
		},
		override = {wpn_fps_ass_scar_ns_standard = {
			third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_ns_short",
			unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_ns_short"
		}}
	}
	self.parts.wpn_fps_ass_scar_body_standard = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_scar_body_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_scar_fg_railext = {
		texture_bundle_folder = "gage_pack",
		dlc = "gage_pack",
		type = "foregrip",
		name_id = "bm_wp_scar_fg_railext",
		a_obj = "a_fg",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_fg_railext",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			recoil = 1,
			spread_moving = -1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_ass_scar_o_flipups_down = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_scar_o_flipups_down",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_o_flipups_down",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_scar_o_flipups_up = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_scar_o_flipups_up",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_o_flipups_up",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_ass_scar_s_sniper = {
		texture_bundle_folder = "gage_pack",
		dlc = "gage_pack",
		type = "stock",
		name_id = "bm_wp_scar_s_sniper",
		a_obj = "a_s",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_s_sniper",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			recoil = 2,
			spread_moving = -3,
			concealment = -3
		}
	}
	self.parts.wpn_fps_ass_scar_s_standard = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_scar_s_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar_pts/wpn_fps_ass_scar_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_scar_m_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_m_standard"
	self.parts.wpn_fps_ass_scar_ns_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_ns_standard"
	self.parts.wpn_fps_ass_scar_ns_short.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_ns_short"
	self.parts.wpn_fps_ass_scar_b_long.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_b_long"
	self.parts.wpn_fps_ass_scar_b_medium.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_b_medium"
	self.parts.wpn_fps_ass_scar_b_short.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_b_short"
	self.parts.wpn_fps_ass_scar_body_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_body_standard"
	self.parts.wpn_fps_ass_scar_fg_railext.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_fg_railext"
	self.parts.wpn_fps_ass_scar_s_sniper.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_s_sniper"
	self.parts.wpn_fps_ass_scar_s_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_s_standard"
	self.parts.wpn_fps_ass_scar_o_flipups_down.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_o_flipups_down"
	self.parts.wpn_fps_ass_scar_o_flipups_up.third_unit = "units/pd2_dlc_dec5/weapons/wpn_third_ass_scar_pts/wpn_third_ass_scar_o_flipups_up"
	self.wpn_fps_ass_scar = {
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar/wpn_fps_ass_scar",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_docter = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_acog = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_cs = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ass_scar_o_flipups_down"},
			wpn_fps_upg_o_spot = {"wpn_fps_ass_scar_o_flipups_down"}
		},
		default_blueprint = {
			"wpn_fps_ass_scar_m_standard",
			"wpn_fps_ass_scar_b_medium",
			"wpn_fps_ass_scar_body_standard",
			"wpn_fps_ass_scar_s_standard",
			"wpn_fps_ass_scar_o_flipups_up",
			"wpn_fps_upg_m4_g_hgrip_vanilla",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_ass_scar_ns_standard"
		},
		uses_parts = {
			"wpn_fps_ass_scar_m_standard",
			"wpn_fps_ass_scar_ns_standard",
			"wpn_fps_ass_scar_ns_short",
			"wpn_fps_ass_scar_b_medium",
			"wpn_fps_ass_scar_b_long",
			"wpn_fps_ass_scar_b_short",
			"wpn_fps_ass_scar_body_standard",
			"wpn_fps_ass_scar_fg_railext",
			"wpn_fps_ass_scar_s_standard",
			"wpn_fps_ass_scar_s_sniper",
			"wpn_fps_ass_scar_o_flipups_up",
			"wpn_fps_ass_scar_o_flipups_down",
			"wpn_fps_upg_m4_g_hgrip_vanilla",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_scar_npc = deep_clone(self.wpn_fps_ass_scar)
	self.wpn_fps_ass_scar_npc.unit = "units/pd2_dlc_dec5/weapons/wpn_fps_ass_scar/wpn_fps_ass_scar_npc"
end

function WeaponFactoryTweakData:_init_p226()
	self.parts.wpn_fps_pis_p226_b_standard = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_p226_b_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_b_standard",
		stats = {value = 1},
		adds = {"wpn_fps_pis_p226_o_standard"},
		forbids = {"wpn_fps_pis_p226_o_long"},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_p226_b_equinox = {
		texture_bundle_folder = "gage_pack",
		type = "slide",
		a_obj = "a_b",
		dlc = "gage_pack",
		name_id = "bm_wp_p226_b_equinox",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_b_equinox",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread_moving = 1,
			damage = 2,
			suppression = -2,
			value = 4,
			recoil = 1
		},
		adds = {"wpn_fps_pis_p226_o_standard"},
		forbids = {"wpn_fps_pis_p226_o_long"},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_p226_b_long = {
		texture_bundle_folder = "gage_pack",
		type = "slide",
		a_obj = "a_b",
		dlc = "gage_pack",
		name_id = "bm_wp_p226_b_long",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 6,
			concealment = -3,
			damage = 1,
			spread_moving = -3,
			spread = 2,
			recoil = 1
		},
		adds = {"wpn_fps_pis_p226_o_long"},
		forbids = {"wpn_fps_pis_p226_o_standard"},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_p226_body_standard = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_p226_body_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_pis_p226_g_standard = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_p226_g_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_p226_g_ergo = {
		texture_bundle_folder = "gage_pack",
		dlc = "gage_pack",
		type = "grip",
		name_id = "bm_wp_p226_g_ergo",
		a_obj = "a_g",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_g_ergo",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_pis_p226_m_standard = {
		texture_bundle_folder = "gage_pack",
		type = "magazine",
		name_id = "bm_wp_p226_m_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_p226_m_extended = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_m",
		type = "magazine",
		dlc = "gage_pack",
		name_id = "bm_wp_p226_m_extended",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_m_extended",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 4,
			spread_moving = -2,
			value = 1
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_p226_o_standard = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_p226_o_standard",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_o_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_p226_o_long = {
		texture_bundle_folder = "gage_pack",
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_p226_o_long",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_o_long",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_p226_b_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_b_standard"
	self.parts.wpn_fps_pis_p226_b_equinox.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_b_equinox"
	self.parts.wpn_fps_pis_p226_b_long.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_b_long"
	self.parts.wpn_fps_pis_p226_body_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_body_standard"
	self.parts.wpn_fps_pis_p226_g_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_g_standard"
	self.parts.wpn_fps_pis_p226_g_ergo.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_g_ergo"
	self.parts.wpn_fps_pis_p226_m_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_m_standard"
	self.parts.wpn_fps_pis_p226_m_extended.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_m_extended"
	self.parts.wpn_fps_pis_p226_o_standard.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_o_standard"
	self.parts.wpn_fps_pis_p226_o_long.third_unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_third_pis_p226_o_long"
	self.parts.wpn_fps_pis_p226_co_comp_1 = {
		parent = "slide",
		dlc = "gage_pack",
		type = "barrel_ext",
		name_id = "bm_wp_p226_co_comp_1",
		a_obj = "a_co",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_co_comp_1",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			concealment = -1,
			damage = 2,
			suppression = -5,
			spread = -1
		}
	}
	self.parts.wpn_fps_pis_p226_co_comp_2 = {
		parent = "slide",
		dlc = "gage_pack",
		type = "barrel_ext",
		name_id = "bm_wp_p226_co_comp_2",
		a_obj = "a_co",
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226_pts/wpn_fps_pis_p226_co_comp_2",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 5,
			recoil = 2,
			spread = 2,
			concealment = -1
		},
		third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_co_2"
	}
	self.parts.wpn_fps_pis_p226_co_comp_1.third_unit = "units/payday2/weapons/wpn_third_pis_g18c_pts/wpn_third_pis_g18c_co_1"
	self.wpn_fps_pis_p226 = {
		unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226/wpn_fps_pis_p226",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {wpn_fps_upg_o_rmr = {parent = "slide"}},
		default_blueprint = {
			"wpn_fps_pis_p226_b_standard",
			"wpn_fps_pis_p226_body_standard",
			"wpn_fps_pis_p226_g_standard",
			"wpn_fps_pis_p226_m_standard",
			"wpn_fps_pis_p226_o_standard"
		},
		uses_parts = {
			"wpn_fps_pis_p226_b_standard",
			"wpn_fps_pis_p226_b_equinox",
			"wpn_fps_pis_p226_b_long",
			"wpn_fps_pis_p226_body_standard",
			"wpn_fps_pis_p226_g_standard",
			"wpn_fps_pis_p226_g_ergo",
			"wpn_fps_pis_p226_m_standard",
			"wpn_fps_pis_p226_m_extended",
			"wpn_fps_pis_p226_o_standard",
			"wpn_fps_pis_p226_o_long",
			"wpn_fps_pis_p226_co_comp_1",
			"wpn_fps_pis_p226_co_comp_2",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_p226_npc = deep_clone(self.wpn_fps_pis_p226)
	self.wpn_fps_pis_p226_npc.unit = "units/pd2_dlc_dec5/weapons/wpn_fps_pis_p226/wpn_fps_pis_p226_npc"
end

function WeaponFactoryTweakData:_init_hk21()
	self.parts.wpn_fps_lmg_hk21_b_long = {
		type = "barrel",
		texture_bundle_folder = "gage_pack_lmg",
		a_obj = "a_b",
		parent = "foregrip",
		dlc = "gage_pack_lmg",
		name_id = "bm_wp_hk21_b_long",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			spread_moving = -2,
			damage = -1,
			concealment = -2,
			value = 4,
			recoil = 1
		}
	}
	self.parts.wpn_fps_lmg_hk21_b_short = {
		parent = "foregrip",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_hk21_b_hk21a4",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_b_short",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_hk21_body_lower = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_hk21_b_hk21a5",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_body_lower",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_lmg_hk21_body_upper = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_hk21_b_hk21sd",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_body_upper",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_hk21_fg_long = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_hk21_body_hk21",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_fg_long",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_lmg_hk21_fg_short = {
		texture_bundle_folder = "gage_pack_lmg",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "gage_pack_lmg",
		name_id = "bm_wp_hk21_fg_short",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_fg_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			concealment = 3,
			damage = 1,
			value = 6,
			spread_moving = 2
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_lmg_hk21_g_ergo = {
		texture_bundle_folder = "gage_pack_lmg",
		dlc = "gage_pack_lmg",
		type = "grip",
		name_id = "bm_wp_hk21_g_ergo",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_g_ergo",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			recoil = 1,
			spread_moving = 2,
			concealment = -1
		}
	}
	self.parts.wpn_fps_lmg_hk21_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_hk21_body_rail",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_hk21_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_hk21_body_rail",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_lmg_hk21_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_hk21_body_rail",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_fps_lmg_hk21_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_hk21_b_long.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_b_long"
	self.parts.wpn_fps_lmg_hk21_b_short.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_b_short"
	self.parts.wpn_fps_lmg_hk21_body_lower.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_body_lower"
	self.parts.wpn_fps_lmg_hk21_body_upper.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_body_upper"
	self.parts.wpn_fps_lmg_hk21_fg_long.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_fg_long"
	self.parts.wpn_fps_lmg_hk21_fg_short.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_fg_short"
	self.parts.wpn_fps_lmg_hk21_g_ergo.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_g_ergo"
	self.parts.wpn_fps_lmg_hk21_g_standard.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_g_standard"
	self.parts.wpn_fps_lmg_hk21_m_standard.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_m_standard"
	self.parts.wpn_fps_lmg_hk21_s_standard.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21_pts/wpn_third_lmg_hk21_s_standard"
	self.wpn_fps_lmg_hk21 = {
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21/wpn_fps_lmg_hk21",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		default_blueprint = {
			"wpn_fps_lmg_hk21_b_short",
			"wpn_fps_lmg_hk21_body_lower",
			"wpn_fps_lmg_hk21_body_upper",
			"wpn_fps_lmg_hk21_fg_long",
			"wpn_fps_lmg_hk21_g_standard",
			"wpn_fps_lmg_hk21_m_standard",
			"wpn_fps_lmg_hk21_s_standard"
		},
		uses_parts = {
			"wpn_fps_lmg_hk21_b_short",
			"wpn_fps_lmg_hk21_b_long",
			"wpn_fps_lmg_hk21_body_lower",
			"wpn_fps_lmg_hk21_body_upper",
			"wpn_fps_lmg_hk21_fg_short",
			"wpn_fps_lmg_hk21_fg_long",
			"wpn_fps_lmg_hk21_g_standard",
			"wpn_fps_lmg_hk21_g_ergo",
			"wpn_fps_lmg_hk21_m_standard",
			"wpn_fps_lmg_hk21_s_standard",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg"
		}
	}
	self.wpn_fps_lmg_hk21_npc = deep_clone(self.wpn_fps_lmg_hk21)
	self.wpn_fps_lmg_hk21_npc.unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_hk21/wpn_fps_lmg_hk21_npc"
end

function WeaponFactoryTweakData:_init_m249()
	self.parts.wpn_fps_lmg_m249_b_long = {
		texture_bundle_folder = "gage_pack_lmg",
		dlc = "gage_pack_lmg",
		type = "barrel",
		name_id = "bm_wp_m249_b_long",
		a_obj = "a_b",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			concealment = -2,
			damage = -1,
			spread = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_lmg_m249_b_short = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m249_b_short",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_b_short",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_m249_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_m249_body_standard",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_body_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_lmg_m249_fg_mk46 = {
		texture_bundle_folder = "gage_pack_lmg",
		dlc = "gage_pack_lmg",
		type = "foregrip",
		name_id = "bm_wp_m249_fg_mk46",
		a_obj = "a_fg",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_fg_mk46",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			recoil = -2,
			concealment = -1,
			damage = 2,
			value = 6,
			spread_moving = 2
		}
	}
	self.parts.wpn_fps_lmg_m249_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m249_fg_standard",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_m249_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m249_m_standard",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_m_standard",
		bullet_objects = {
			amount = 15,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_lmg_m249_s_modern = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m249_s_modern",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_s_modern",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_m249_s_para = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m249_s_para",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_s_para",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_m249_s_solid = {
		texture_bundle_folder = "gage_pack_lmg",
		dlc = "gage_pack_lmg",
		type = "stock",
		name_id = "bm_wp_m249_s_solid",
		a_obj = "a_s",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_s_solid",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			recoil = 2,
			spread_moving = -2,
			concealment = -2
		}
	}
	self.parts.wpn_fps_lmg_m249_upper_reciever = {
		a_obj = "a_upper",
		type = "upper_reciever",
		name_id = "bm_wp_m249_upper_reciever",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249_pts/wpn_fps_lmg_m249_upper_reciever",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_lmg_m249_b_long.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_b_long"
	self.parts.wpn_fps_lmg_m249_b_short.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_b_short"
	self.parts.wpn_fps_lmg_m249_body_standard.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_body_standard"
	self.parts.wpn_fps_lmg_m249_fg_mk46.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_fg_mk46"
	self.parts.wpn_fps_lmg_m249_fg_standard.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_fg_standard"
	self.parts.wpn_fps_lmg_m249_m_standard.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_m_standard"
	self.parts.wpn_fps_lmg_m249_s_modern.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_s_modern"
	self.parts.wpn_fps_lmg_m249_s_para.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_s_para"
	self.parts.wpn_fps_lmg_m249_s_solid.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_s_solid"
	self.parts.wpn_fps_lmg_m249_upper_reciever.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_m249_pts/wpn_third_lmg_m249_upper_reciever"
	self.wpn_fps_lmg_m249 = {
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249/wpn_fps_lmg_m249",
		stock_adapter = "wpn_fps_lmg_m249_s_modern",
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight",
			"vertical_grip"
		},
		default_blueprint = {
			"wpn_fps_lmg_m249_b_short",
			"wpn_fps_lmg_m249_body_standard",
			"wpn_fps_lmg_m249_fg_standard",
			"wpn_fps_lmg_m249_m_standard",
			"wpn_fps_lmg_m249_s_para",
			"wpn_fps_lmg_m249_upper_reciever"
		},
		uses_parts = {
			"wpn_fps_lmg_m249_b_long",
			"wpn_fps_lmg_m249_b_short",
			"wpn_fps_lmg_m249_body_standard",
			"wpn_fps_lmg_m249_fg_mk46",
			"wpn_fps_lmg_m249_fg_standard",
			"wpn_fps_lmg_m249_m_standard",
			"wpn_fps_lmg_m249_s_para",
			"wpn_fps_lmg_m249_s_solid",
			"wpn_fps_lmg_m249_upper_reciever",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_snp_tti_s_vltor"
		}
	}
	self.wpn_fps_lmg_m249_npc = deep_clone(self.wpn_fps_lmg_m249)
	self.wpn_fps_lmg_m249_npc.unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_m249/wpn_fps_lmg_m249_npc"
end

function WeaponFactoryTweakData:_init_rpk()
	self.parts.wpn_fps_lmg_rpk_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_rpk_b_standard",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_rpk_pts/wpn_fps_lmg_rpk_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_rpk_body_lowerreceiver = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_rpk_b_standard",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_rpk_pts/wpn_fps_lmg_rpk_body_lowerreceiver",
		stats = {value = 1},
		adds = {"wpn_fps_ak_bolt"}
	}
	self.parts.wpn_fps_lmg_rpk_fg_wood = {
		texture_bundle_folder = "gage_pack_lmg",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_rpk_fg_wood",
		unit = "units/payday2/weapons/wpn_fps_upg_ak_reusable/wpn_upg_ak_fg_combo4",
		stats = {value = 1},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_lmg_rpk_fg_standard = {
		type = "foregrip",
		texture_bundle_folder = "gage_pack_lmg",
		a_obj = "a_fg",
		dlc = "gage_pack_lmg",
		name_id = "bm_wp_rpk_fg_standard",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_rpk_pts/wpn_fps_lmg_rpk_fg_standard",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			spread_moving = 2,
			damage = 1,
			concealment = 1,
			value = 5,
			recoil = -1
		},
		forbids = {"wpn_fps_addon_ris"},
		adds = {
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_addon_ris"
		}
	}
	self.parts.wpn_lmg_rpk_m_drum = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_rpk_m_drum",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_rpk_pts/wpn_lmg_rpk_m_drum",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_rpk_s_standard = {
		texture_bundle_folder = "gage_pack_lmg",
		dlc = "gage_pack_lmg",
		type = "stock",
		name_id = "bm_wp_rpk_s_standard",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_rpk_pts/wpn_fps_lmg_rpk_s_standard",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			recoil = 2,
			concealment = 1
		}
	}
	self.parts.wpn_fps_lmg_rpk_s_wood = {
		texture_bundle_folder = "gage_pack_lmg",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_rpk_s_wood",
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_rpk_pts/wpn_fps_lmg_rpk_s_wood",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_rpk_b_standard.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_rpk_pts/wpn_third_lmg_rpk_b_standard"
	self.parts.wpn_fps_lmg_rpk_body_lowerreceiver.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_ass_ak_body_lowerreceiver"
	self.parts.wpn_fps_lmg_rpk_fg_wood.third_unit = "units/payday2/weapons/wpn_third_upg_ak_reusable/wpn_third_upg_ak_fg_combo4"
	self.parts.wpn_fps_lmg_rpk_fg_standard.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_rpk_pts/wpn_third_lmg_rpk_fg_standard"
	self.parts.wpn_lmg_rpk_m_drum.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_rpk_pts/wpn_third_lmg_rpk_m_drum"
	self.parts.wpn_fps_lmg_rpk_s_standard.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_rpk_pts/wpn_third_lmg_rpk_s_standard"
	self.parts.wpn_fps_lmg_rpk_s_wood.third_unit = "units/pd2_dlc_gage_lmg/weapons/wpn_third_lmg_rpk_pts/wpn_third_lmg_rpk_s_wood"
	self.wpn_fps_lmg_rpk = {
		unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_rpk/wpn_fps_lmg_rpk",
		stock_adapter = "wpn_upg_ak_s_adapter",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight",
			"vertical_grip"
		},
		default_blueprint = {
			"wpn_fps_lmg_rpk_b_standard",
			"wpn_fps_lmg_rpk_fg_wood",
			"wpn_lmg_rpk_m_drum",
			"wpn_fps_lmg_rpk_s_wood",
			"wpn_fps_ass_74_body_upperreceiver",
			"wpn_fps_lmg_rpk_body_lowerreceiver",
			"wpn_upg_ak_g_standard"
		},
		uses_parts = {
			"wpn_fps_lmg_rpk_b_standard",
			"wpn_fps_lmg_rpk_fg_standard",
			"wpn_fps_lmg_rpk_fg_wood",
			"wpn_lmg_rpk_m_drum",
			"wpn_fps_lmg_rpk_s_standard",
			"wpn_fps_lmg_rpk_s_wood",
			"wpn_fps_ass_74_body_upperreceiver",
			"wpn_fps_lmg_rpk_body_lowerreceiver",
			"wpn_upg_ak_g_standard",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_upg_ak_s_folding",
			"wpn_upg_ak_s_skfoldable_vanilla",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ak_g_rk3",
			"wpn_fps_upg_ak_s_solidstock",
			"wpn_fps_upg_ns_ass_pbs1",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_snp_tti_s_vltor"
		}
	}
	self.wpn_fps_lmg_rpk_npc = deep_clone(self.wpn_fps_lmg_rpk)
	self.wpn_fps_lmg_rpk_npc.unit = "units/pd2_dlc_gage_lmg/weapons/wpn_fps_lmg_rpk/wpn_fps_lmg_rpk_npc"
end

function WeaponFactoryTweakData:_init_m95()
	self.parts.wpn_fps_snp_m95_barrel_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m14_b_standard",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_barrel_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_m95_barrel_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_m95_b_barrel_long",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_barrel_long",
		pcs = {},
		stats = {
			value = 1,
			concealment = -4,
			spread = 2,
			suppression = -10
		}
	}
	self.parts.wpn_fps_snp_m95_barrel_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_m95_b_barrel_short",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_barrel_short",
		pcs = {},
		stats = {
			concealment = 3,
			spread_moving = 3,
			spread = -3,
			value = 1
		}
	}
	self.parts.wpn_fps_snp_m95_barrel_suppressed = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_m95_b_barrel_suppressed",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_barrel_suppressed",
		pcs = {},
		stats = {
			alert_size = 12,
			spread_moving = 1,
			damage = -4,
			suppression = 12,
			value = 6,
			recoil = 2,
			concealment = 0
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_snp_m95_bipod = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_m14_body_dmr",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_bipod",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_m95_lower_reciever = {
		a_obj = "a_body",
		type = "lower_body",
		name_id = "bm_wp_m14_body_lower",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_lower_reciever",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_m95_upper_reciever = {
		a_obj = "a_body",
		type = "upper_body",
		name_id = "bm_wp_m14_body_upper",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_upper_reciever",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_m95_magazine = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_magazine",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_snp_m95_barrel_standard.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_barrel_standard"
	self.parts.wpn_fps_snp_m95_barrel_long.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_barrel_long"
	self.parts.wpn_fps_snp_m95_barrel_short.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_barrel_short"
	self.parts.wpn_fps_snp_m95_barrel_suppressed.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_barrel_suppressed"
	self.parts.wpn_fps_snp_m95_bipod.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_bipod"
	self.parts.wpn_fps_snp_m95_lower_reciever.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_lower_reciever"
	self.parts.wpn_fps_snp_m95_upper_reciever.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_upper_reciever"
	self.parts.wpn_fps_snp_m95_magazine.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_magazine"
	self.wpn_fps_snp_m95 = {
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95/wpn_fps_snp_m95",
		optional_types = {
			"gadget",
			"sight"
		},
		override = {wpn_fps_upg_m4_g_mgrip = {stats = {
			value = 2,
			spread_moving = 2,
			concealment = 1
		}}},
		default_blueprint = {
			"wpn_fps_snp_m95_barrel_standard",
			"wpn_fps_snp_m95_bipod",
			"wpn_fps_snp_m95_lower_reciever",
			"wpn_fps_snp_m95_upper_reciever",
			"wpn_fps_snp_m95_magazine",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_upg_m4_g_standard_vanilla"
		},
		uses_parts = {
			"wpn_fps_snp_m95_barrel_standard",
			"wpn_fps_snp_m95_barrel_long",
			"wpn_fps_snp_m95_barrel_short",
			"wpn_fps_snp_m95_barrel_suppressed",
			"wpn_fps_snp_m95_bipod",
			"wpn_fps_snp_m95_lower_reciever",
			"wpn_fps_snp_m95_upper_reciever",
			"wpn_fps_snp_m95_magazine",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_upg_m4_g_hgrip",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_snp_m95_npc = deep_clone(self.wpn_fps_snp_m95)
	self.wpn_fps_snp_m95_npc.unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95/wpn_fps_snp_m95_npc"
end

function WeaponFactoryTweakData:_init_msr()
	self.parts.wpn_fps_snp_msr_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m14_b_standard",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_msr_pts/wpn_fps_snp_msr_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_msr_b_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_snp_msr_b_long",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_msr_pts/wpn_fps_snp_msr_b_long",
		pcs = {},
		stats = {
			concealment = -3,
			value = 1,
			spread = 1
		},
		override = {wpn_fps_snp_msr_ns_suppressor = {unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_msr_pts/wpn_fps_snp_msr_ns_suppressor_long"}}
	}
	self.parts.wpn_fps_snp_msr_ns_suppressor = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		a_obj = "a_ns",
		type = "barrel_ext",
		sub_type = "silencer",
		parent = "barrel",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_snp_msr_ns_suppressor",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_msr_pts/wpn_fps_snp_msr_ns_suppressor",
		pcs = {},
		stats = {
			alert_size = 12,
			value = 5,
			damage = -4,
			suppression = 12,
			spread = -1,
			recoil = 3,
			concealment = -2,
			spread_moving = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_snp_msr_body_msr = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		type = "stock",
		a_obj = "a_body",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_msr_body_msr",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_msr_pts/wpn_fps_snp_msr_body_msr",
		pcs = {},
		stats = {
			concealment = 5,
			recoil = -2,
			value = 8
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_snp_msr_body_wood = {
		a_obj = "a_body",
		type = "stock",
		name_id = "bm_wp_msr_body_wood",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_msr_pts/wpn_fps_snp_msr_body_wood",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_snp_msr_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_msr_pts/wpn_fps_snp_msr_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_snp_msr_b_standard.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_msr_pts/wpn_third_snp_msr_b_standard"
	self.parts.wpn_fps_snp_msr_b_long.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_msr_pts/wpn_third_snp_msr_b_long"
	self.parts.wpn_fps_snp_msr_ns_suppressor.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_msr_pts/wpn_third_snp_msr_ns_suppressor"
	self.parts.wpn_fps_snp_msr_body_msr.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_msr_pts/wpn_third_snp_msr_body_msr"
	self.parts.wpn_fps_snp_msr_body_wood.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_msr_pts/wpn_third_snp_msr_body_wood"
	self.parts.wpn_fps_snp_msr_m_standard.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_msr_pts/wpn_third_snp_msr_m_standard"
	self.wpn_fps_snp_msr = {
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_msr/wpn_fps_snp_msr",
		optional_types = {
			"gadget",
			"sight"
		},
		default_blueprint = {
			"wpn_fps_snp_msr_b_standard",
			"wpn_fps_snp_msr_body_wood",
			"wpn_fps_snp_msr_m_standard",
			"wpn_fps_upg_o_shortdot"
		},
		uses_parts = {
			"wpn_fps_snp_msr_b_standard",
			"wpn_fps_snp_msr_b_long",
			"wpn_fps_snp_msr_ns_suppressor",
			"wpn_fps_snp_msr_body_msr",
			"wpn_fps_snp_msr_body_wood",
			"wpn_fps_snp_msr_m_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_snp_msr_npc = deep_clone(self.wpn_fps_snp_msr)
	self.wpn_fps_snp_msr_npc.unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_msr/wpn_fps_snp_msr_npc"
end

function WeaponFactoryTweakData:_init_r93()
	self.parts.wpn_fps_snp_r93_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_r93_b_standard",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_r93_pts/wpn_fps_snp_r93_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_r93_b_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_r93_b_short",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_r93_pts/wpn_fps_snp_r93_b_short",
		pcs = {},
		stats = {
			recoil = 2,
			spread = -2,
			concealment = 3,
			value = 1,
			spread_moving = 3
		}
	}
	self.parts.wpn_fps_snp_r93_b_suppressed = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_r93_b_suppressed",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_r93_pts/wpn_fps_snp_r93_b_suppressed",
		pcs = {},
		stats = {
			alert_size = 12,
			value = 4,
			damage = -4,
			suppression = 12,
			spread = -1,
			recoil = 1,
			spread_moving = 1,
			concealment = -1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_snp_r93_body_standard = {
		a_obj = "a_body",
		type = "stock",
		name_id = "bm_wp_m14_body_lower",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_r93_pts/wpn_fps_snp_r93_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_snp_r93_body_wood = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		type = "stock",
		a_obj = "a_body",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_r93_body_wood",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_r93_pts/wpn_fps_snp_r93_body_wood",
		pcs = {},
		stats = {
			concealment = -3,
			recoil = 2,
			value = 7
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_snp_r93_m_std = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_r93_pts/wpn_fps_snp_r93_m_std",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_snp_r93_b_standard.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_r93_pts/wpn_third_snp_r93_b_standard"
	self.parts.wpn_fps_snp_r93_b_short.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_r93_pts/wpn_third_snp_r93_b_short"
	self.parts.wpn_fps_snp_r93_b_suppressed.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_r93_pts/wpn_third_snp_r93_b_suppressed"
	self.parts.wpn_fps_snp_r93_body_standard.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_r93_pts/wpn_third_snp_r93_body_standard"
	self.parts.wpn_fps_snp_r93_body_wood.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_r93_pts/wpn_third_snp_r93_body_wood"
	self.parts.wpn_fps_snp_r93_m_std.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_third_snp_r93_pts/wpn_third_snp_r93_m_std"
	self.wpn_fps_snp_r93 = {
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_r93/wpn_fps_snp_r93",
		optional_types = {
			"gadget",
			"sight"
		},
		default_blueprint = {
			"wpn_fps_snp_r93_b_standard",
			"wpn_fps_snp_r93_body_standard",
			"wpn_fps_snp_r93_m_std",
			"wpn_fps_upg_o_shortdot"
		},
		uses_parts = {
			"wpn_fps_snp_r93_b_standard",
			"wpn_fps_snp_r93_b_short",
			"wpn_fps_snp_r93_b_suppressed",
			"wpn_fps_snp_r93_body_standard",
			"wpn_fps_snp_r93_body_wood",
			"wpn_fps_snp_r93_m_std",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_snp_r93_npc = deep_clone(self.wpn_fps_snp_r93)
	self.wpn_fps_snp_r93_npc.unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_r93/wpn_fps_snp_r93_npc"
end

function WeaponFactoryTweakData:_init_fal()
	self.parts.wpn_fps_ass_fal_body_standard = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "upper_reciever",
		a_obj = "a_body",
		dlc = "big_bank",
		name_id = "bm_wp_fal_body_standard",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_body_standard",
		stats = {value = 2},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_ass_fal_fg_01 = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "barrel",
		a_obj = "a_fg",
		dlc = "big_bank",
		name_id = "bm_wp_fal_body_standard",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_fg_01",
		pcs = {},
		stats = {
			value = 2,
			spread = -1,
			damage = 1,
			concealment = 6,
			spread_moving = 4
		}
	}
	self.parts.wpn_fps_ass_fal_fg_standard = {
		a_obj = "a_fg",
		type = "barrel",
		name_id = "bm_wp_fal_fg_standard",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_fg_standard",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_fal_fg_03 = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "barrel",
		a_obj = "a_fg",
		dlc = "big_bank",
		name_id = "bm_wp_fal_fg_03",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_fg_03",
		pcs = {},
		stats = {
			recoil = 2,
			value = 2,
			damage = 1,
			concealment = -1,
			spread_moving = 4
		}
	}
	self.parts.wpn_fps_ass_fal_fg_04 = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "barrel",
		a_obj = "a_fg",
		dlc = "big_bank",
		name_id = "bm_wp_fal_fg_04",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_fg_04",
		pcs = {},
		stats = {
			value = 2,
			spread_moving = -2,
			damage = 1,
			concealment = -2,
			spread = 1,
			recoil = -1
		}
	}
	self.parts.wpn_fps_ass_fal_fg_wood = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "barrel",
		a_obj = "a_fg",
		dlc = "big_bank",
		name_id = "bm_wp_fal_fg_wood",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_fg_wood",
		pcs = {},
		stats = {
			recoil = 1,
			spread = 2,
			concealment = -2,
			value = 2,
			spread_moving = -2
		}
	}
	self.parts.wpn_fps_ass_fal_g_01 = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "grip",
		a_obj = "a_g",
		dlc = "big_bank",
		name_id = "bm_wp_fal_g_01",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_g_01",
		pcs = {},
		stats = {
			value = 2,
			recoil = 1,
			spread_moving = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_ass_fal_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_fal_body_standard",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_g_standard",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_fal_m_01 = {
		texture_bundle_folder = "big_bank",
		a_obj = "a_m",
		type = "magazine",
		is_a_unlockable = true,
		dlc = "big_bank",
		name_id = "bm_wp_fal_m_01",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_m_01",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 10,
			value = 2,
			spread = -1,
			recoil = 1,
			concealment = -2,
			spread_moving = -2
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_fal_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_fal_m_standard",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 2},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_fal_s_01 = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "stock",
		a_obj = "a_s",
		dlc = "big_bank",
		name_id = "bm_wp_fal_s_01",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_s_01",
		pcs = {},
		stats = {
			value = 2,
			spread_moving = 2,
			concealment = 5
		}
	}
	self.parts.wpn_fps_ass_fal_s_03 = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "stock",
		a_obj = "a_s",
		dlc = "big_bank",
		name_id = "bm_wp_fal_s_03",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_s_03",
		pcs = {},
		stats = {
			recoil = 1,
			spread = 1,
			concealment = -2,
			value = 2,
			spread_moving = -3
		}
	}
	self.parts.wpn_fps_ass_fal_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_fal_s_standard",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_s_standard",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_fal_s_wood = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "stock",
		a_obj = "a_s",
		dlc = "big_bank",
		name_id = "bm_wp_fal_s_wood",
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal_pts/wpn_fps_ass_fal_s_wood",
		pcs = {},
		stats = {
			value = 2,
			recoil = 4,
			spread_moving = -3
		}
	}
	self.parts.wpn_fps_ass_fal_body_standard.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_body_standard"
	self.parts.wpn_fps_ass_fal_fg_01.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_fg_01"
	self.parts.wpn_fps_ass_fal_fg_standard.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_fg_standard"
	self.parts.wpn_fps_ass_fal_fg_03.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_fg_03"
	self.parts.wpn_fps_ass_fal_fg_04.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_fg_04"
	self.parts.wpn_fps_ass_fal_fg_wood.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_fg_wood"
	self.parts.wpn_fps_ass_fal_g_01.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_g_01"
	self.parts.wpn_fps_ass_fal_g_standard.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_g_standard"
	self.parts.wpn_fps_ass_fal_m_01.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_m_01"
	self.parts.wpn_fps_ass_fal_m_standard.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_m_standard"
	self.parts.wpn_fps_ass_fal_s_01.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_s_01"
	self.parts.wpn_fps_ass_fal_s_03.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_s_03"
	self.parts.wpn_fps_ass_fal_s_standard.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_s_standard"
	self.parts.wpn_fps_ass_fal_s_wood.third_unit = "units/pd2_dlc_big/weapons/wpn_third_ass_fal_pts/wpn_third_ass_fal_s_wood"
	self.wpn_fps_ass_fal = {
		unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal/wpn_fps_ass_fal",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {},
		adds = {},
		default_blueprint = {
			"wpn_fps_ass_fal_body_standard",
			"wpn_fps_ass_fal_fg_standard",
			"wpn_fps_ass_fal_g_standard",
			"wpn_fps_ass_fal_m_standard",
			"wpn_fps_ass_fal_s_standard"
		},
		uses_parts = {
			"wpn_fps_ass_fal_body_standard",
			"wpn_fps_ass_fal_fg_01",
			"wpn_fps_ass_fal_fg_standard",
			"wpn_fps_ass_fal_fg_03",
			"wpn_fps_ass_fal_fg_04",
			"wpn_fps_ass_fal_fg_wood",
			"wpn_fps_ass_fal_g_01",
			"wpn_fps_ass_fal_g_standard",
			"wpn_fps_ass_fal_m_01",
			"wpn_fps_ass_fal_m_standard",
			"wpn_fps_ass_fal_s_01",
			"wpn_fps_ass_fal_s_03",
			"wpn_fps_ass_fal_s_standard",
			"wpn_fps_ass_fal_s_wood",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_fal_npc = deep_clone(self.wpn_fps_ass_fal)
	self.wpn_fps_ass_fal_npc.unit = "units/pd2_dlc_big/weapons/wpn_fps_ass_fal/wpn_fps_ass_fal_npc"
end

function WeaponFactoryTweakData:_init_ben()
	self.parts.wpn_fps_sho_ben_b_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_ben_b_long",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben_pts/wpn_fps_sho_ben_b_long",
		pcs = {},
		stats = {
			extra_ammo = 1,
			value = 8,
			spread = 2,
			concealment = -2,
			recoil = 1
		}
	}
	self.parts.wpn_fps_sho_ben_b_standard = {
		texture_bundle_folder = "gage_pack_shotgun",
		dlc = "gage_pack_shotgun",
		type = "barrel",
		name_id = "bm_wp_ben_b_standard",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben_pts/wpn_fps_sho_ben_b_standard",
		a_obj = "a_b",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_ben_b_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_ben_b_short",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben_pts/wpn_fps_sho_ben_b_short",
		pcs = {},
		stats = {
			extra_ammo = -1,
			value = 5,
			damage = 2,
			spread = -2,
			concealment = 6,
			recoil = -2
		}
	}
	self.parts.wpn_fps_sho_ben_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_ben_body_standard",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben_pts/wpn_fps_sho_ben_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_sho_ben_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ben_fg_standard",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben_pts/wpn_fps_sho_ben_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_ben_s_collapsable = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ben_fg_standard",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben_pts/wpn_fps_sho_ben_s_collapsable",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_ben_s_collapsed = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_ben_s_collapsed",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben_pts/wpn_fps_sho_ben_s_collapsed",
		pcs = {},
		stats = {
			value = 1,
			recoil = -3,
			concealment = 6
		}
	}
	self.parts.wpn_fps_sho_ben_s_solid = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_ben_fg_standard",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben_pts/wpn_fps_sho_ben_s_solid",
		pcs = {},
		stats = {
			value = 5,
			recoil = 2,
			spread = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_sho_ben_b_long.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ben_pts/wpn_third_sho_ben_b_long"
	self.parts.wpn_fps_sho_ben_b_standard.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ben_pts/wpn_third_sho_ben_b_long"
	self.parts.wpn_fps_sho_ben_b_short.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ben_pts/wpn_third_sho_ben_b_short"
	self.parts.wpn_fps_sho_ben_body_standard.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ben_pts/wpn_third_sho_ben_body_standard"
	self.parts.wpn_fps_sho_ben_fg_standard.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ben_pts/wpn_third_sho_ben_fg_standard"
	self.parts.wpn_fps_sho_ben_s_collapsable.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ben_pts/wpn_third_sho_ben_s_collapsable"
	self.parts.wpn_fps_sho_ben_s_collapsed.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ben_pts/wpn_third_sho_ben_s_collapsed"
	self.parts.wpn_fps_sho_ben_s_solid.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ben_pts/wpn_third_sho_ben_s_solid"
	self.wpn_fps_sho_ben = {
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben/wpn_fps_sho_ben",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		default_blueprint = {
			"wpn_fps_sho_ben_b_standard",
			"wpn_fps_sho_ben_body_standard",
			"wpn_fps_sho_ben_fg_standard",
			"wpn_fps_sho_ben_s_collapsable"
		},
		uses_parts = {
			"wpn_fps_sho_ben_b_long",
			"wpn_fps_sho_ben_b_standard",
			"wpn_fps_sho_ben_b_short",
			"wpn_fps_sho_ben_body_standard",
			"wpn_fps_sho_ben_fg_standard",
			"wpn_fps_sho_ben_s_collapsable",
			"wpn_fps_sho_ben_s_collapsed",
			"wpn_fps_sho_ben_s_solid",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_sho_ben_npc = deep_clone(self.wpn_fps_sho_ben)
	self.wpn_fps_sho_ben_npc.unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ben/wpn_fps_sho_ben_npc"
end

function WeaponFactoryTweakData:_init_striker()
	self.parts.wpn_fps_sho_striker_b_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_striker_b_long",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_striker_pts/wpn_fps_sho_striker_b_long",
		pcs = {},
		stats = {
			value = 3,
			recoil = 1,
			spread = 2,
			concealment = -2
		}
	}
	self.parts.wpn_fps_sho_striker_b_suppressed = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		dlc = "gage_pack_shotgun",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		name_id = "bm_wp_striker_b_suppressed",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_striker_pts/wpn_fps_sho_striker_b_suppressed",
		pcs = {},
		stats = {
			alert_size = 12,
			value = 5,
			damage = -2,
			suppression = 12,
			spread = -1,
			recoil = 2,
			spread_moving = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"},
		forbids = {
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_a_dragons_breath",
			"wpn_fps_upg_ns_duck"
		}
	}
	self.parts.wpn_fps_sho_striker_b_standard = {
		texture_bundle_folder = "gage_pack_shotgun",
		dlc = "gage_pack_shotgun",
		type = "barrel",
		name_id = "bm_wp_striker_b_standard",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_striker_pts/wpn_fps_sho_striker_b_standard",
		a_obj = "a_b",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_striker_body_standard = {
		texture_bundle_folder = "gage_pack_shotgun",
		dlc = "gage_pack_shotgun",
		type = "lower_reciever",
		name_id = "bm_wp_striker_body_standard",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_striker_pts/wpn_fps_sho_striker_body_standard",
		a_obj = "a_body",
		stats = {value = 1},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_sho_striker_b_long.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_striker_pts/wpn_third_sho_striker_b_long"
	self.parts.wpn_fps_sho_striker_b_suppressed.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_striker_pts/wpn_third_sho_striker_b_suppressed"
	self.parts.wpn_fps_sho_striker_b_standard.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_striker_pts/wpn_third_sho_striker_b_standard"
	self.parts.wpn_fps_sho_striker_body_standard.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_striker_pts/wpn_third_sho_striker_body_standard"
	self.wpn_fps_sho_striker = {
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_striker/wpn_fps_sho_striker",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		override = {
			wpn_upg_o_marksmansight_rear_vanilla = {a_obj = "a_o_r"},
			wpn_upg_o_marksmansight_front = {a_obj = "a_o_f"},
			wpn_fps_upg_a_slug = {
				desc_id = "bm_wp_upg_a_slug2_desc",
				custom_stats = {
					armor_piercing_add = 1,
					can_shoot_through_shield = true,
					can_shoot_through_wall = true,
					damage_far_mul = 1.15,
					damage_near_mul = 2,
					can_shoot_through_enemy = true,
					rays = 1
				}
			},
			wpn_fps_upg_a_custom = {
				desc_id = "bm_wp_upg_a_custom2_desc",
				custom_stats = {}
			},
			wpn_fps_upg_a_custom_free = {
				desc_id = "bm_wp_upg_a_custom2_desc",
				custom_stats = {}
			}
		},
		default_blueprint = {
			"wpn_fps_sho_striker_b_standard",
			"wpn_fps_sho_striker_body_standard",
			"wpn_upg_o_marksmansight_rear_vanilla"
		},
		uses_parts = {
			"wpn_fps_sho_striker_b_long",
			"wpn_fps_sho_striker_b_suppressed",
			"wpn_fps_sho_striker_b_standard",
			"wpn_fps_sho_striker_body_standard",
			"wpn_upg_o_marksmansight_rear_vanilla",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_sho_striker_npc = deep_clone(self.wpn_fps_sho_striker)
	self.wpn_fps_sho_striker_npc.unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_striker/wpn_fps_sho_striker_npc"
end

function WeaponFactoryTweakData:_init_ksg()
	self.parts.wpn_fps_sho_ksg_b_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_ksg_b_long",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg_pts/wpn_fps_sho_ksg_b_long",
		pcs = {},
		stats = {
			extra_ammo = 2,
			value = 7,
			spread = 2,
			concealment = -2,
			recoil = 1
		},
		forbids = {"wpn_fps_sho_ksg_fg_short"},
		adds = {"wpn_fps_sho_ksg_fg_standard"},
		override = {wpn_fps_upg_o_dd_front = {a_obj = "a_o_f_2"}}
	}
	self.parts.wpn_fps_sho_ksg_b_standard = {
		type = "barrel",
		name_id = "bm_wp_ksg_b_standard",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg_pts/wpn_fps_sho_ksg_b_standard",
		a_obj = "a_b",
		stats = {value = 1},
		forbids = {"wpn_fps_sho_ksg_fg_short"},
		adds = {"wpn_fps_sho_ksg_fg_standard"},
		override = {wpn_fps_upg_o_dd_front = {a_obj = "a_o_f_2"}}
	}
	self.parts.wpn_fps_sho_ksg_b_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_ksg_b_short",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg_pts/wpn_fps_sho_ksg_b_short",
		pcs = {},
		stats = {
			extra_ammo = -2,
			value = 5,
			damage = 1,
			spread = -2,
			concealment = 4,
			recoil = -2
		},
		forbids = {"wpn_fps_sho_ksg_fg_standard"},
		adds = {"wpn_fps_sho_ksg_fg_short"}
	}
	self.parts.wpn_fps_sho_ksg_fg_short = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ksg_fg_short",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg_pts/wpn_fps_sho_ksg_fg_short",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_sho_ksg_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_standard_issue",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg_pts/wpn_fps_sho_ksg_fg_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_sho_ksg_body_standard = {
		a_obj = "a_body",
		type = "lower_body",
		name_id = "bm_wp_ksg_body_standard",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg_pts/wpn_fps_sho_ksg_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_o_mbus_rear = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		dlc = "gage_pack_shotgun",
		a_obj = "a_o_r",
		type = "sight",
		name_id = "bm_wp_upg_o_mbus_rear",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_upg_o_mbus/wpn_fps_upg_o_mbus_rear",
		pcs = {},
		stats = {
			value = 3,
			concealment = 2
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		adds = {"wpn_fps_upg_o_mbus_front"},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_upg_o_mbus_front = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		dlc = "gage_pack_shotgun",
		type = "extra",
		name_id = "bm_wp_upg_o_mbus_front",
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_upg_o_mbus/wpn_fps_upg_o_mbus_front",
		a_obj = "a_o_f"
	}
	self.parts.wpn_fps_sho_ksg_b_long.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ksg_pts/wpn_third_sho_ksg_b_long"
	self.parts.wpn_fps_sho_ksg_b_standard.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ksg_pts/wpn_third_sho_ksg_b_standard"
	self.parts.wpn_fps_sho_ksg_b_short.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ksg_pts/wpn_third_sho_ksg_b_short"
	self.parts.wpn_fps_sho_ksg_fg_short.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ksg_pts/wpn_third_sho_ksg_fg_short"
	self.parts.wpn_fps_sho_ksg_fg_standard.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ksg_pts/wpn_third_sho_ksg_fg_standard"
	self.parts.wpn_fps_sho_ksg_body_standard.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_sho_ksg_pts/wpn_third_sho_ksg_body_standard"
	self.parts.wpn_fps_upg_o_mbus_rear.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_upg_o_mbus/wpn_third_upg_o_mbus_rear"
	self.parts.wpn_fps_upg_o_mbus_front.third_unit = "units/pd2_dlc_gage_shot/weapons/wpn_third_upg_o_mbus/wpn_third_upg_o_mbus_front"
	self.wpn_fps_sho_ksg = {
		unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg/wpn_fps_sho_ksg",
		animations = {
			reload_exit = "reload_exit",
			fire = "recoil",
			fire_steelsight = "recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		override = {
			wpn_fps_upg_o_specter = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_aimpoint = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_aimpoint_2 = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_docter = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_eotech = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_t1micro = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_cmore = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_acog = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_cs = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_eotech_xps = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_reflex = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_rx01 = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_upg_o_rx30 = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			},
			wpn_fps_ak_extra_ris = {a_obj = "a_fl_90"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {
				forbids = {"wpn_fps_addon_ris"},
				adds = {"wpn_fps_ak_extra_ris"}
			},
			wpn_fps_upg_fl_ass_utg = {
				forbids = {"wpn_fps_addon_ris"},
				adds = {
					"wpn_fps_ak_extra_ris",
					"wpn_fps_upg_fl_ass_peq15_flashlight"
				}
			},
			wpn_fps_upg_o_spot = {
				override = {
					wpn_fps_upg_fl_ass_smg_sho_peqbox = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_laser = {a_obj = "a_fl_2"},
					wpn_fps_upg_fl_ass_peq15 = {a_obj = "a_fl_2"}
				},
				forbids = {"wpn_fps_addon_ris"}
			}
		},
		default_blueprint = {
			"wpn_fps_sho_ksg_b_standard",
			"wpn_fps_sho_ksg_body_standard",
			"wpn_fps_sho_ksg_fg_standard",
			"wpn_fps_upg_o_dd_rear"
		},
		uses_parts = {
			"wpn_fps_sho_ksg_b_long",
			"wpn_fps_sho_ksg_b_standard",
			"wpn_fps_sho_ksg_b_short",
			"wpn_fps_sho_ksg_body_standard",
			"wpn_fps_sho_ksg_fg_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_o_dd_rear",
			"wpn_fps_upg_o_mbus_rear",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_sho_ksg_b_legendary",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_sho_ksg_npc = deep_clone(self.wpn_fps_sho_ksg)
	self.wpn_fps_sho_ksg_npc.unit = "units/pd2_dlc_gage_shot/weapons/wpn_fps_sho_ksg/wpn_fps_sho_ksg_npc"
end

function WeaponFactoryTweakData:_init_gre_m79()
	self.parts.wpn_fps_gre_m79_barrel = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_gre_m79_barrel",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_fps_gre_m79_barrel",
		stats = {value = 1},
		adds = {"wpn_fps_gre_m79_sight_up"}
	}
	self.parts.wpn_fps_gre_m79_barrel_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		a_obj = "a_b",
		type = "barrel",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_m79_barrel_short",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_fps_gre_m79_barrel_short",
		pcs = {},
		stats = {
			value = 1,
			recoil = 0,
			spread = -2,
			concealment = 4
		},
		forbids = {
			"wpn_fps_gre_m79_sight_up",
			"wpn_fps_gre_m79_sight_down"
		}
	}
	self.parts.wpn_fps_gre_m79_sight_up = {
		type = "gadget",
		sub_type = "second_sight",
		a_obj = "a_os",
		parent = "barrel",
		name_id = "bm_wp_m79_sight_up",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_fps_gre_m79_sight_up",
		stats = {
			value = 1,
			recoil = 0,
			spread = 0,
			gadget_zoom = 1
		},
		stance_mod = {
			wpn_fps_gre_m79 = {
				translation = Vector3(0, -8, -2),
				rotation = Rotation(0, -5, 0)
			},
			wpn_fps_gre_china = {
				translation = Vector3(0, -12, -4),
				rotation = Rotation(0, -5, 0)
			}
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_gre_m79_barrelcatch = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_m79_barrelcatch",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_fps_gre_m79_barrelcatch",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_m79_grenade = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_gre_m79_grenade",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_fps_gre_m79_grenade",
		bullet_objects = {
			amount = 1,
			prefix = "g_grenade_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_m79_stock = {
		a_obj = "a_body",
		type = "stock",
		name_id = "bm_wp_m79_stock_short",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_fps_gre_m79_stock",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_m79_stock_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "stock",
		a_obj = "a_body",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_gre_m79_s_leather",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_fps_gre_m79_stock_short",
		pcs = {},
		stats = {
			value = 1,
			recoil = -1,
			spread = 0,
			concealment = 4
		}
	}
	self.parts.wpn_fps_gre_m79_barrel.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_third_gre_m79_barrel"
	self.parts.wpn_fps_gre_m79_barrel_short.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_third_gre_m79_barrel_short"
	self.parts.wpn_fps_gre_m79_sight_up.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_third_gre_m79_sight_up"
	self.parts.wpn_fps_gre_m79_barrelcatch.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_third_gre_m79_barrelcatch"
	self.parts.wpn_fps_gre_m79_grenade.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_third_gre_m79_grenade"
	self.parts.wpn_fps_gre_m79_stock.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_third_gre_m79_stock"
	self.parts.wpn_fps_gre_m79_stock_short.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_third_gre_m79_stock_short"
	self.wpn_fps_gre_m79 = {
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79/wpn_fps_gre_m79",
		animations = {reload = "reload"},
		default_blueprint = {
			"wpn_fps_gre_m79_barrel",
			"wpn_fps_gre_m79_barrelcatch",
			"wpn_fps_gre_m79_grenade",
			"wpn_fps_gre_m79_stock"
		},
		uses_parts = {
			"wpn_fps_gre_m79_barrel",
			"wpn_fps_gre_m79_barrel_short",
			"wpn_fps_gre_m79_barrelcatch",
			"wpn_fps_gre_m79_stock",
			"wpn_fps_gre_m79_stock_short",
			"wpn_fps_gre_m79_sight_up",
			"wpn_fps_gre_m79_grenade"
		}
	}
	self.wpn_fps_gre_m79_npc = deep_clone(self.wpn_fps_gre_m79)
	self.wpn_fps_gre_m79_npc.unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79/wpn_fps_gre_m79_npc"
end

function WeaponFactoryTweakData:_init_g3()
	self.parts.wpn_fps_ass_g3_body_lower = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_g3_body_lower",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_body_lower",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_g3_body_upper = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_g3_body_upper",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_body_upper",
		stats = {value = 2},
		animations = {
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_ass_g3_b_sniper = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		a_obj = "a_b",
		type = "barrel",
		parent = "foregrip",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_b_sniper",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_b_sniper",
		pcs = {},
		stats = {
			extra_ammo = -5,
			total_ammo_mod = -6,
			damage = 80,
			value = 2,
			concealment = -2,
			recoil = -1,
			spread = 2
		},
		override = {wpn_fps_ass_g3_m_mag = {
			third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_m_mag_psg",
			unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_m_mag_psg"
		}},
		adds = {"wpn_fps_ammo_type"}
	}
	self.parts.wpn_fps_ammo_type = {
		a_obj = "a_m",
		type = "ammo",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ammo_type",
		stats = {value = 1},
		custom_stats = {
			ammo_pickup_max_mul = 0.5,
			ammo_pickup_min_mul = 0.5
		}
	}
	self.parts.wpn_fps_ass_g3_b_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "barrel",
		a_obj = "a_b",
		parent = "foregrip",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_b_short",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_b_short",
		pcs = {},
		stats = {
			spread = -4,
			total_ammo_mod = 15,
			damage = -40,
			value = 2,
			concealment = 4,
			recoil = 5
		},
		forbids = {"wpn_fps_ammo_type"},
		override = {
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_surefire = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_battle = {a_obj = "a_ns_s"}
		}
	}
	self.parts.wpn_fps_ass_g3_b_long = {
		parent = "foregrip",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_g3_b_long",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_b_long",
		stats = {value = 2},
		forbids = {"wpn_fps_ammo_type"},
		override = {
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_surefire = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_battle = {a_obj = "a_ns_s"}
		}
	}
	self.parts.wpn_fps_ass_g3_body_rail = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_g3_b_long",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_body_rail",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_g3_fg_bipod = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_g3_fg_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_fg_bipod",
		stats = {value = 2},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_ass_g3_fg_psg = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_fg_psg",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_fg_psg",
		pcs = {},
		stats = {
			value = 2,
			recoil = -1,
			spread = 1,
			concealment = -1
		},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_ass_g3_fg_railed = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_fg_railed",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_fg_railed",
		pcs = {},
		stats = {
			value = 2,
			recoil = 2,
			spread = 0,
			concealment = -2
		},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_ass_g3_fg_retro = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_fg_retro",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_fg_retro",
		pcs = {},
		stats = {
			value = 2,
			recoil = 3,
			spread = -1,
			concealment = 2
		},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_ass_g3_fg_retro_plastic = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_fg_retro_plastic",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_fg_retro_plastic",
		pcs = {},
		stats = {
			value = 2,
			recoil = 0,
			spread = -1,
			concealment = 4
		},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_ass_g3_g_retro = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "grip",
		a_obj = "a_g",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_g_retro",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_g_retro",
		pcs = {},
		stats = {
			value = 2,
			recoil = 2,
			spread = 0,
			concealment = 0
		}
	}
	self.parts.wpn_fps_ass_g3_g_sniper = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "grip",
		a_obj = "a_g",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_g_sniper",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_g_sniper",
		pcs = {},
		stats = {
			value = 2,
			recoil = -1,
			spread = 2,
			concealment = -1
		}
	}
	self.parts.wpn_fps_ass_g3_m_mag = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_g3_m_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_m_mag",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 2},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_g3_s_sniper = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_s_sniper",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_s_sniper",
		pcs = {},
		stats = {
			value = 2,
			recoil = -1,
			spread = 2,
			concealment = -1
		}
	}
	self.parts.wpn_fps_ass_g3_s_wood = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_g3_s_wood",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_fps_ass_g3_s_wood",
		pcs = {},
		stats = {
			value = 2,
			recoil = 3,
			spread = 0,
			concealment = -1
		}
	}
	self.parts.wpn_fps_ass_g3_body_lower.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_body_lower"
	self.parts.wpn_fps_ass_g3_body_upper.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_body_upper"
	self.parts.wpn_fps_ass_g3_b_sniper.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_b_sniper"
	self.parts.wpn_fps_ass_g3_b_short.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_b_short"
	self.parts.wpn_fps_ass_g3_b_long.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_b_long"
	self.parts.wpn_fps_ass_g3_body_rail.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_body_rail"
	self.parts.wpn_fps_ass_g3_fg_bipod.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_fg_bipod"
	self.parts.wpn_fps_ass_g3_fg_psg.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_fg_psg"
	self.parts.wpn_fps_ass_g3_fg_railed.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_fg_railed"
	self.parts.wpn_fps_ass_g3_fg_retro.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_fg_retro"
	self.parts.wpn_fps_ass_g3_fg_retro_plastic.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_fg_retro_plastic"
	self.parts.wpn_fps_ass_g3_g_retro.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_g_retro"
	self.parts.wpn_fps_ass_g3_g_sniper.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_g_sniper"
	self.parts.wpn_fps_ass_g3_m_mag.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_m_mag"
	self.parts.wpn_fps_ass_g3_s_sniper.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_s_sniper"
	self.parts.wpn_fps_ass_g3_s_wood.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3_pts/wpn_third_ass_g3_s_standard"
	self.wpn_fps_ass_g3 = {
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3/wpn_fps_ass_g3",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ass_g3_body_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_ass_g3_body_rail"}
		},
		default_blueprint = {
			"wpn_fps_ass_g3_b_long",
			"wpn_fps_ass_g3_body_lower",
			"wpn_fps_ass_g3_body_upper",
			"wpn_fps_ass_g3_fg_bipod",
			"wpn_fps_lmg_hk21_g_standard",
			"wpn_fps_ass_g3_m_mag",
			"wpn_fps_lmg_hk21_s_standard"
		},
		uses_parts = {
			"wpn_fps_ass_g3_body_lower",
			"wpn_fps_ass_g3_body_upper",
			"wpn_fps_ass_g3_fg_bipod",
			"wpn_fps_ass_g3_m_mag",
			"wpn_fps_ass_g3_b_short",
			"wpn_fps_ass_g3_b_long",
			"wpn_fps_ass_g3_b_sniper",
			"wpn_fps_ass_g3_fg_psg",
			"wpn_fps_ass_g3_fg_railed",
			"wpn_fps_ass_g3_fg_retro",
			"wpn_fps_ass_g3_fg_retro_plastic",
			"wpn_fps_ass_g3_g_retro",
			"wpn_fps_ass_g3_g_sniper",
			"wpn_fps_ass_g3_s_sniper",
			"wpn_fps_ass_g3_s_wood",
			"wpn_fps_lmg_hk21_g_standard",
			"wpn_fps_lmg_hk21_s_standard",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_g3_npc = deep_clone(self.wpn_fps_ass_g3)
	self.wpn_fps_ass_g3_npc.unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_g3/wpn_fps_ass_g3_npc"
end

function WeaponFactoryTweakData:_init_galil()
	self.parts.wpn_fps_ass_galil_body_standard = {
		is_a_unlockable = true,
		texture_bundle_folder = "big_bank",
		type = "upper_reciever",
		a_obj = "a_body",
		dlc = "big_bank",
		name_id = "bm_wp_galil_body_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_body_standard",
		stats = {value = 2},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_galil_fg_fab = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "barrel",
		a_obj = "a_fg",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_fg_fab",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_fg_fab",
		pcs = {},
		stats = {
			value = 2,
			recoil = 2,
			spread = 1,
			concealment = -1
		},
		forbids = {"wpn_fps_shot_r870_ris_special"},
		override = {
			wpn_fps_upg_o_specter = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_aimpoint = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_aimpoint_2 = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_docter = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_eotech = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_t1micro = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_cmore = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_acog = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_cs = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_eotech_xps = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_reflex = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_rx01 = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_rx30 = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_spot = {
				a_obj = "a_os_fab",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}
			},
			wpn_fps_upg_o_xpsg33_magnifier = {stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, 0, -3.5)}}},
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_surefire = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_battle = {a_obj = "a_ns_s"}
		},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_ass_galil_fg_mar = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "barrel",
		a_obj = "a_fg",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_fg_mar",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_fg_mar",
		pcs = {},
		stats = {
			spread = -1,
			value = 2,
			damage = 2,
			concealment = 4,
			recoil = -1
		},
		forbids = {"wpn_fps_shot_r870_ris_special"},
		override = {
			wpn_fps_upg_o_specter = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_aimpoint = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_aimpoint_2 = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_docter = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_eotech = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_t1micro = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_cmore = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_acog = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_cs = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_eotech_xps = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_reflex = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_rx01 = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_rx30 = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_spot = {
				a_obj = "a_os_mar",
				stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}
			},
			wpn_fps_upg_o_xpsg33_magnifier = {stance_mod = {wpn_fps_ass_galil = {translation = Vector3(0, -8, -2.2)}}},
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_surefire = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_battle = {a_obj = "a_ns_s"}
		},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_ass_galil_fg_sar = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "barrel",
		a_obj = "a_fg",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_fg_sar",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_fg_sar",
		pcs = {},
		stats = {
			spread = 0,
			value = 2,
			damage = 1,
			concealment = 1,
			recoil = 0
		},
		override = {
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_surefire = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_battle = {a_obj = "a_ns_s"}
		}
	}
	self.parts.wpn_fps_ass_galil_fg_sniper = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "barrel",
		a_obj = "a_fg",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_fg_sniper",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_fg_sniper",
		pcs = {},
		stats = {
			value = 2,
			recoil = -1,
			spread = 3,
			concealment = -2
		},
		override = {
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_surefire = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_linear = {a_obj = "a_ns_s"},
			wpn_fps_upg_ns_ass_smg_firepig = {a_obj = "a_ns_s"},
			wpn_fps_upg_ns_ass_smg_stubby = {a_obj = "a_ns_s"},
			wpn_fps_upg_ns_ass_smg_tank = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_battle = {a_obj = "a_ns_s"}
		}
	}
	self.parts.wpn_fps_ass_galil_fg_standard = {
		a_obj = "a_fg",
		type = "barrel",
		name_id = "bm_wp_galil_fg_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_fg_standard",
		stats = {value = 2},
		override = {
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_surefire = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_battle = {a_obj = "a_ns_s"}
		}
	}
	self.parts.wpn_fps_ass_galil_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_galil_g_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_g_standard",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_galil_g_sniper = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "grip",
		a_obj = "a_g",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_g_sniper",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_g_sniper",
		pcs = {},
		stats = {
			value = 2,
			recoil = -1,
			spread = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_ass_galil_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_galil_m_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 2},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_galil_s_fab = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_s_fab",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_s_fab",
		pcs = {},
		stats = {
			value = 2,
			recoil = -1,
			spread = 1,
			concealment = 3
		}
	}
	self.parts.wpn_fps_ass_galil_s_light = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_s_light",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_s_light",
		pcs = {},
		stats = {
			value = 2,
			recoil = 1,
			spread = 0,
			concealment = 2
		}
	}
	self.parts.wpn_fps_ass_galil_s_plastic = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_s_plastic",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_s_plastic",
		pcs = {},
		stats = {
			value = 2,
			recoil = -2,
			spread = 2,
			concealment = 1
		}
	}
	self.parts.wpn_fps_ass_galil_s_skeletal = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_s_skeletal",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_s_skeletal",
		pcs = {},
		stats = {
			value = 2,
			recoil = 3,
			spread = -1,
			concealment = 1
		}
	}
	self.parts.wpn_fps_ass_galil_s_sniper = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_s_sniper",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_s_sniper",
		pcs = {},
		stats = {
			value = 2,
			recoil = -3,
			spread = 3,
			concealment = -2
		}
	}
	self.parts.wpn_fps_ass_galil_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_galil_s_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_s_standard",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_galil_s_wood = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_galil_s_wood",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil_pts/wpn_fps_ass_galil_s_wood",
		pcs = {},
		stats = {
			value = 2,
			recoil = 4,
			spread = 0,
			concealment = -2
		}
	}
	self.parts.wpn_fps_ass_galil_body_standard.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_body_standard"
	self.parts.wpn_fps_ass_galil_fg_fab.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_fg_fab"
	self.parts.wpn_fps_ass_galil_fg_mar.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_fg_mar"
	self.parts.wpn_fps_ass_galil_fg_sar.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_fg_sar"
	self.parts.wpn_fps_ass_galil_fg_sniper.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_fg_sniper"
	self.parts.wpn_fps_ass_galil_fg_standard.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_fg_standard"
	self.parts.wpn_fps_ass_galil_g_standard.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_g_standard"
	self.parts.wpn_fps_ass_galil_g_sniper.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_g_sniper"
	self.parts.wpn_fps_ass_galil_m_standard.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_m_standard"
	self.parts.wpn_fps_ass_galil_s_fab.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_s_fab"
	self.parts.wpn_fps_ass_galil_s_light.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_s_light"
	self.parts.wpn_fps_ass_galil_s_plastic.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_s_plastic"
	self.parts.wpn_fps_ass_galil_s_skeletal.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_s_skeletal"
	self.parts.wpn_fps_ass_galil_s_sniper.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_s_sniper"
	self.parts.wpn_fps_ass_galil_s_standard.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_s_standard"
	self.parts.wpn_fps_ass_galil_s_wood.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_galil_pts/wpn_third_ass_galil_s_wood"
	self.wpn_fps_ass_galil = {
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil/wpn_fps_ass_galil",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_docter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cmore = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_acog = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cs = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_reflex = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_spot = {"wpn_fps_shot_r870_ris_special"}
		},
		default_blueprint = {
			"wpn_fps_ass_galil_body_standard",
			"wpn_fps_ass_galil_fg_standard",
			"wpn_fps_ass_galil_m_standard",
			"wpn_fps_ass_galil_s_standard",
			"wpn_fps_ass_galil_g_standard"
		},
		uses_parts = {
			"wpn_fps_ass_galil_body_standard",
			"wpn_fps_ass_galil_fg_fab",
			"wpn_fps_ass_galil_fg_mar",
			"wpn_fps_ass_galil_fg_sar",
			"wpn_fps_ass_galil_fg_sniper",
			"wpn_fps_ass_galil_fg_standard",
			"wpn_fps_ass_galil_g_standard",
			"wpn_fps_ass_galil_g_sniper",
			"wpn_fps_ass_galil_m_standard",
			"wpn_fps_ass_galil_s_fab",
			"wpn_fps_ass_galil_s_light",
			"wpn_fps_ass_galil_s_plastic",
			"wpn_fps_ass_galil_s_skeletal",
			"wpn_fps_ass_galil_s_sniper",
			"wpn_fps_ass_galil_s_standard",
			"wpn_fps_ass_galil_s_wood",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_galil_npc = deep_clone(self.wpn_fps_ass_galil)
	self.wpn_fps_ass_galil_npc.unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_galil/wpn_fps_ass_galil_npc"
end

function WeaponFactoryTweakData:_init_famas()
	self.parts.wpn_fps_ass_famas_body_standard = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_famas_body_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_body_standard",
		stats = {value = 2},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_famas_b_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_famas_b_long",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_b_long",
		pcs = {},
		stats = {
			spread = 0,
			value = 2,
			damage = 1,
			concealment = -1,
			recoil = 1
		},
		override = {
			wpn_fps_upg_ns_ass_smg_large = {a_obj = "a_ns_s"},
			wpn_fps_upg_ns_ass_smg_medium = {a_obj = "a_ns_s"},
			wpn_fps_upg_ns_ass_smg_small = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_n"}
		}
	}
	self.parts.wpn_fps_ass_famas_b_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_famas_b_short",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_b_short",
		pcs = {},
		stats = {
			spread = -1,
			value = 2,
			damage = 3,
			concealment = 2,
			recoil = -1
		},
		override = {
			wpn_fps_upg_ns_ass_smg_large = {a_obj = "a_ns_s"},
			wpn_fps_upg_ns_ass_smg_medium = {a_obj = "a_ns_s"},
			wpn_fps_upg_ns_ass_smg_small = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_n"}
		}
	}
	self.parts.wpn_fps_ass_famas_b_sniper = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_famas_b_sniper",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_b_sniper",
		pcs = {},
		stats = {
			spread = 1,
			value = 2,
			damage = 1,
			concealment = -2,
			recoil = -1
		},
		override = {
			wpn_fps_upg_ns_ass_smg_large = {a_obj = "a_ns_s"},
			wpn_fps_upg_ns_ass_smg_medium = {a_obj = "a_ns_s"},
			wpn_fps_upg_ns_ass_smg_small = {a_obj = "a_ns_s"},
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_n"}
		}
	}
	self.parts.wpn_fps_ass_famas_b_suppressed = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		dlc = "gage_pack_assault",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		name_id = "bm_wp_famas_b_suppressed",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_b_suppressed",
		pcs = {},
		stats = {
			alert_size = 12,
			value = 4,
			damage = 0,
			suppression = 12,
			spread = 2,
			recoil = 0,
			spread_moving = 1,
			concealment = -1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"},
		forbids = {
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ass_ns_battle"
		}
	}
	self.parts.wpn_fps_ass_famas_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_famas_b_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_b_standard",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_famas_o_adapter = {
		a_obj = "a_o",
		type = "grip",
		name_id = "bm_wp_famas_o_extra",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_o_adapter",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_famas_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_famas_g_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_g_standard",
		stats = {value = 2}
	}
	self.parts.wpn_fps_ass_famas_g_retro = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_assault",
		type = "grip",
		a_obj = "a_g",
		dlc = "gage_pack_assault",
		name_id = "bm_wp_famas_g_retro",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_g_retro",
		pcs = {},
		stats = {
			value = 2,
			recoil = 1,
			spread = 2,
			concealment = -1
		}
	}
	self.parts.wpn_fps_ass_famas_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_famas_m_standard",
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas_pts/wpn_fps_ass_famas_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 2},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_famas_body_standard.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_body_standard"
	self.parts.wpn_fps_ass_famas_b_long.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_b_long"
	self.parts.wpn_fps_ass_famas_b_short.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_b_short"
	self.parts.wpn_fps_ass_famas_b_sniper.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_b_sniper"
	self.parts.wpn_fps_ass_famas_b_suppressed.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_b_suppressed"
	self.parts.wpn_fps_ass_famas_b_standard.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_b_standard"
	self.parts.wpn_fps_ass_famas_o_adapter.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_o_adapter"
	self.parts.wpn_fps_ass_famas_g_standard.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_g_standard"
	self.parts.wpn_fps_ass_famas_g_retro.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_g_retro"
	self.parts.wpn_fps_ass_famas_m_standard.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_third_ass_famas_pts/wpn_third_ass_famas_m_standard"
	self.wpn_fps_ass_famas = {
		unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas/wpn_fps_ass_famas",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_docter = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_acog = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_cs = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ass_famas_o_adapter"},
			wpn_fps_upg_o_spot = {"wpn_fps_ass_famas_o_adapter"}
		},
		default_blueprint = {
			"wpn_fps_ass_famas_body_standard",
			"wpn_fps_ass_famas_b_standard",
			"wpn_fps_ass_famas_g_standard",
			"wpn_fps_ass_famas_m_standard"
		},
		uses_parts = {
			"wpn_fps_ass_famas_body_standard",
			"wpn_fps_ass_famas_b_long",
			"wpn_fps_ass_famas_b_standard",
			"wpn_fps_ass_famas_b_short",
			"wpn_fps_ass_famas_b_sniper",
			"wpn_fps_ass_famas_b_suppressed",
			"wpn_fps_ass_famas_g_retro",
			"wpn_fps_ass_famas_g_standard",
			"wpn_fps_ass_famas_m_standard",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_famas_npc = deep_clone(self.wpn_fps_ass_famas)
	self.wpn_fps_ass_famas_npc.unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_ass_famas/wpn_fps_ass_famas_npc"
end

function WeaponFactoryTweakData:_init_scorpion()
	self.parts.wpn_fps_smg_scorpion_b_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_serbu_s_nostock_short",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_scorpion_b_suppressed = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		dlc = "hl_miami",
		a_obj = "a_b",
		type = "barrel_ext",
		sub_type = "silencer",
		name_id = "bm_wp_scorpion_b_suppressed",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_b_suppressed",
		pcs = {},
		stats = {
			alert_size = 12,
			value = 5,
			damage = 0,
			suppression = 12,
			spread = -1,
			recoil = 1,
			spread_moving = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_smg_scorpion_body_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_serbu_s_nostock_short",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_scorpion_g_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_serbu_s_nostock_short",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_scorpion_g_wood = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		type = "grip",
		a_obj = "a_g",
		dlc = "hl_miami",
		name_id = "bm_wp_scorpion_g_wood",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_g_wood",
		pcs = {},
		stats = {
			value = 1,
			recoil = 1,
			spread = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_smg_scorpion_g_ergo = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		type = "grip",
		a_obj = "a_g",
		dlc = "hl_miami",
		name_id = "bm_wp_scorpion_g_ergo",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_g_ergo",
		pcs = {},
		stats = {
			spread = 0,
			recoil = 3,
			value = 1,
			concealment = 1
		}
	}
	self.parts.wpn_fps_smg_scorpion_m_standard = {
		texture_bundle_folder = "dlc1",
		type = "magazine",
		name_id = "bm_wp_scorpion_m_standard",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_scorpion_m_extended = {
		texture_bundle_folder = "hl_miami",
		a_obj = "a_m",
		type = "magazine",
		is_a_unlockable = true,
		dlc = "hl_miami",
		name_id = "bm_wp_scorpion_m_extended",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_m_extended",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			concealment = -3,
			recoil = 2,
			value = 1,
			extra_ammo = 10
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_scorpion_s_nostock = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		type = "stock",
		a_obj = "a_s",
		dlc = "hl_miami",
		name_id = "bm_wp_scorpion_s_nostock",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_s_nostock",
		pcs = {},
		stats = {
			value = 1,
			recoil = -1,
			concealment = 1
		}
	}
	self.parts.wpn_fps_smg_scorpion_s_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_serbu_s_nostock_short",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_scorpion_s_unfolded = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		type = "stock",
		a_obj = "a_s",
		dlc = "hl_miami",
		name_id = "bm_wp_scorpion_s_unfolded",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_s_unfolded",
		pcs = {},
		stats = {
			value = 1,
			recoil = 3,
			concealment = -2
		}
	}
	self.parts.wpn_fps_smg_scorpion_extra_rail = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_serbu_s_nostock_short",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_extra_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_scorpion_extra_rail_gadget = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_serbu_s_nostock_short",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion_pts/wpn_fps_smg_scorpion_extra_rail_gadget",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_scorpion_b_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_b_standard"
	self.parts.wpn_fps_smg_scorpion_b_suppressed.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_b_suppressed"
	self.parts.wpn_fps_smg_scorpion_body_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_body_standard"
	self.parts.wpn_fps_smg_scorpion_g_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_g_standard"
	self.parts.wpn_fps_smg_scorpion_g_wood.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_g_wood"
	self.parts.wpn_fps_smg_scorpion_g_ergo.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_g_ergo"
	self.parts.wpn_fps_smg_scorpion_m_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_m_standard"
	self.parts.wpn_fps_smg_scorpion_m_extended.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_m_extended"
	self.parts.wpn_fps_smg_scorpion_s_nostock.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_s_nostock"
	self.parts.wpn_fps_smg_scorpion_s_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_s_standard"
	self.parts.wpn_fps_smg_scorpion_s_unfolded.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_s_unfolded"
	self.parts.wpn_fps_smg_scorpion_extra_rail.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_extra_rail"
	self.parts.wpn_fps_smg_scorpion_extra_rail_gadget.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_scorpion/wpn_third_smg_scorpion_extra_rail_gadget"
	self.wpn_fps_smg_scorpion = {
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion/wpn_fps_smg_scorpion",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_scorpion_extra_rail"},
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_smg_scorpion_extra_rail_gadget"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_smg_scorpion_extra_rail_gadget"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_smg_scorpion_extra_rail_gadget"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_smg_scorpion_extra_rail_gadget"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_smg_scorpion_extra_rail_gadget"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_scorpion_extra_rail"}
		},
		default_blueprint = {
			"wpn_fps_smg_scorpion_body_standard",
			"wpn_fps_smg_scorpion_b_standard",
			"wpn_fps_smg_scorpion_m_standard",
			"wpn_fps_smg_scorpion_s_standard",
			"wpn_fps_smg_scorpion_g_standard"
		},
		uses_parts = {
			"wpn_fps_smg_scorpion_b_standard",
			"wpn_fps_smg_scorpion_b_suppressed",
			"wpn_fps_smg_scorpion_body_standard",
			"wpn_fps_smg_scorpion_g_standard",
			"wpn_fps_smg_scorpion_g_wood",
			"wpn_fps_smg_scorpion_g_ergo",
			"wpn_fps_smg_scorpion_m_standard",
			"wpn_fps_smg_scorpion_m_extended",
			"wpn_fps_smg_scorpion_s_nostock",
			"wpn_fps_smg_scorpion_s_standard",
			"wpn_fps_smg_scorpion_s_unfolded",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_scorpion_npc = deep_clone(self.wpn_fps_smg_scorpion)
	self.wpn_fps_smg_scorpion_npc.unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_scorpion/wpn_fps_smg_scorpion_npc"
end

function WeaponFactoryTweakData:_init_tec9()
	self.parts.wpn_fps_smg_tec9_b_long = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_tec9_",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_tec9_pts/wpn_fps_smg_tec9_b_long",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_tec9_b_standard = {
		texture_bundle_folder = "hl_miami",
		type = "barrel",
		a_obj = "a_b",
		is_a_unlockable = true,
		dlc = "hl_miami",
		name_id = "bm_wp_tec9_b_standard",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_tec9_pts/wpn_fps_smg_tec9_b_standard",
		pcs = {},
		stats = {
			value = 3,
			spread = -1,
			damage = 0,
			concealment = 3,
			recoil = 1
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_tec9_ns_ext = {
		texture_bundle_folder = "hl_miami",
		type = "barrel",
		a_obj = "a_b",
		is_a_unlockable = true,
		dlc = "hl_miami",
		name_id = "bm_wp_tec9_ns_ext",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_tec9_pts/wpn_fps_smg_tec9_ns_ext",
		pcs = {},
		stats = {
			value = 5,
			spread = 1,
			damage = 0,
			concealment = -3,
			recoil = -2
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_tec9_body_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_tec9_",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_tec9_pts/wpn_fps_smg_tec9_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_tec9_m_extended = {
		texture_bundle_folder = "hl_miami",
		a_obj = "a_m",
		type = "magazine",
		is_a_unlockable = true,
		dlc = "hl_miami",
		name_id = "bm_wp_tec9_m_extended",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_tec9_pts/wpn_fps_smg_tec9_m_extended",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 6,
			recoil = 2,
			value = 4,
			concealment = -2
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_tec9_m_standard = {
		texture_bundle_folder = "dlc1",
		type = "magazine",
		name_id = "bm_wp_tec9_",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_tec9_pts/wpn_fps_smg_tec9_m_standard",
		a_obj = "a_body",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_tec9_s_unfolded = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		type = "stock",
		a_obj = "a_s",
		dlc = "hl_miami",
		name_id = "bm_wp_tec9_s_unfolded",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_tec9_pts/wpn_fps_smg_tec9_s_unfolded",
		pcs = {},
		stats = {
			value = 3,
			recoil = 3,
			concealment = -2
		}
	}
	self.parts.wpn_fps_smg_tec9_b_long.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_tec9_pts/wpn_third_smg_tec9_b_long"
	self.parts.wpn_fps_smg_tec9_b_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_tec9_pts/wpn_third_smg_tec9_b_standard"
	self.parts.wpn_fps_smg_tec9_body_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_tec9_pts/wpn_third_smg_tec9_body_standard"
	self.parts.wpn_fps_smg_tec9_m_extended.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_tec9_pts/wpn_third_smg_tec9_m_extended"
	self.parts.wpn_fps_smg_tec9_m_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_tec9_pts/wpn_third_smg_tec9_m_standard"
	self.parts.wpn_fps_smg_tec9_ns_ext.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_tec9_pts/wpn_third_smg_tec9_ns_ext"
	self.parts.wpn_fps_smg_tec9_s_unfolded.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_tec9_pts/wpn_third_smg_tec9_s_unfolded"
	self.wpn_fps_smg_tec9 = {
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_tec9/wpn_fps_smg_tec9",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_docter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cmore = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_acog = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cs = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_reflex = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_spot = {"wpn_fps_shot_r870_ris_special"}
		},
		default_blueprint = {
			"wpn_fps_smg_tec9_m_standard",
			"wpn_fps_smg_tec9_b_long",
			"wpn_fps_smg_tec9_body_standard"
		},
		uses_parts = {
			"wpn_fps_smg_tec9_b_long",
			"wpn_fps_smg_tec9_b_standard",
			"wpn_fps_smg_tec9_body_standard",
			"wpn_fps_smg_tec9_m_standard",
			"wpn_fps_smg_tec9_m_extended",
			"wpn_fps_smg_tec9_ns_ext",
			"wpn_fps_smg_tec9_s_unfolded",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_tec9_npc = deep_clone(self.wpn_fps_smg_tec9)
	self.wpn_fps_smg_tec9_npc.unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_tec9/wpn_fps_smg_tec9_npc"
end

function WeaponFactoryTweakData:_init_uzi()
	self.parts.wpn_fps_smg_uzi_b_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_uzi_b_standard",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_b_standard",
		stats = {value = 1},
		override = {
			wpn_fps_upg_ass_ns_jprifles = {a_obj = "a_ns_1"},
			wpn_fps_upg_ass_ns_surefire = {a_obj = "a_ns_1"},
			wpn_fps_upg_ns_ass_smg_firepig = {a_obj = "a_ns_1"},
			wpn_fps_upg_ns_ass_smg_stubby = {a_obj = "a_ns_1"},
			wpn_fps_upg_ns_ass_smg_tank = {a_obj = "a_ns_1"},
			wpn_fps_upg_ass_ns_battle = {a_obj = "a_ns_1"}
		}
	}
	self.parts.wpn_fps_smg_uzi_b_suppressed = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		dlc = "hl_miami",
		a_obj = "a_b",
		type = "barrel_ext",
		sub_type = "silencer",
		name_id = "bm_wp_uzi_b_suppressed",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_b_suppressed",
		pcs = {},
		stats = {
			alert_size = 12,
			value = 5,
			damage = 0,
			suppression = 12,
			spread = -1,
			recoil = 1,
			spread_moving = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_smg_uzi_body_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_uzi_body_standard",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_body_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_smg_uzi_fg_rail = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "hl_miami",
		name_id = "bm_wp_uzi_fg_rail",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_fg_rail",
		pcs = {},
		stats = {
			value = 1,
			spread = 1,
			damage = 0,
			concealment = -2,
			recoil = 1
		},
		adds = {"wpn_fps_upg_vg_ass_smg_verticalgrip"}
	}
	self.parts.wpn_fps_smg_uzi_fg_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_uzi_fg_standard",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_fg_standard",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_vg_ass_smg_verticalgrip"}
	}
	self.parts.wpn_fps_smg_uzi_g_standard = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_body",
		type = "grip",
		name_id = "bm_wp_uzi_g_standard",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_uzi_m_standard = {
		texture_bundle_folder = "dlc1",
		type = "magazine",
		name_id = "bm_wp_uzi_m_standard",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_uzi_s_leather = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		type = "stock",
		a_obj = "a_s",
		dlc = "hl_miami",
		name_id = "bm_wp_uzi_s_leather",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_s_leather",
		pcs = {},
		stats = {
			spread = 2,
			recoil = 1,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_smg_uzi_s_solid = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		type = "stock",
		a_obj = "a_s",
		dlc = "hl_miami",
		name_id = "bm_wp_uzi_s_solid",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_s_solid",
		pcs = {},
		stats = {
			spread = 1,
			recoil = 3,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_smg_uzi_s_standard = {
		is_a_unlockable = true,
		texture_bundle_folder = "hl_miami",
		type = "stock",
		a_obj = "a_s",
		dlc = "hl_miami",
		name_id = "bm_wp_uzi_s_standard",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_s_standard",
		pcs = {},
		stats = {
			value = 1,
			recoil = -3,
			concealment = 4
		}
	}
	self.parts.wpn_fps_smg_uzi_s_unfolded = {
		texture_bundle_folder = "dlc1",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_uzi_s_unfolded",
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi_pts/wpn_fps_smg_uzi_s_unfolded",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_uzi_b_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_b_standard"
	self.parts.wpn_fps_smg_uzi_b_suppressed.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_b_suppressed"
	self.parts.wpn_fps_smg_uzi_body_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_body_standard"
	self.parts.wpn_fps_smg_uzi_fg_rail.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_fg_rail"
	self.parts.wpn_fps_smg_uzi_fg_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_fg_standard"
	self.parts.wpn_fps_smg_uzi_g_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_g_standard"
	self.parts.wpn_fps_smg_uzi_m_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_m_standard"
	self.parts.wpn_fps_smg_uzi_s_leather.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_s_leather"
	self.parts.wpn_fps_smg_uzi_s_solid.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_s_solid"
	self.parts.wpn_fps_smg_uzi_s_standard.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_s_standard"
	self.parts.wpn_fps_smg_uzi_s_unfolded.third_unit = "units/pd2_dlc_miami/weapons/wpn_third_smg_uzi_pts/wpn_third_smg_uzi_s_unfolded"
	self.wpn_fps_smg_uzi = {
		unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi/wpn_fps_smg_uzi",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_docter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cmore = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_acog = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cs = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_reflex = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_peq15 = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_laser = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_fl_ass_utg = {"wpn_fps_shot_r870_gadget_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_shot_r870_ris_special"}
		},
		default_blueprint = {
			"wpn_fps_smg_uzi_b_standard",
			"wpn_fps_smg_uzi_body_standard",
			"wpn_fps_smg_uzi_fg_standard",
			"wpn_fps_smg_uzi_g_standard",
			"wpn_fps_smg_uzi_m_standard",
			"wpn_fps_smg_uzi_s_unfolded"
		},
		uses_parts = {
			"wpn_fps_smg_uzi_b_standard",
			"wpn_fps_smg_uzi_b_suppressed",
			"wpn_fps_smg_uzi_body_standard",
			"wpn_fps_smg_uzi_fg_rail",
			"wpn_fps_smg_uzi_fg_standard",
			"wpn_fps_smg_uzi_g_standard",
			"wpn_fps_smg_uzi_m_standard",
			"wpn_fps_smg_uzi_s_leather",
			"wpn_fps_smg_uzi_s_solid",
			"wpn_fps_smg_uzi_s_standard",
			"wpn_fps_smg_uzi_s_unfolded",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_uzi_npc = deep_clone(self.wpn_fps_smg_uzi)
	self.wpn_fps_smg_uzi_npc.unit = "units/pd2_dlc_miami/weapons/wpn_fps_smg_uzi/wpn_fps_smg_uzi_npc"
end

function WeaponFactoryTweakData:is_part_internal(part_id)
	return self.parts[part_id] and self.parts[part_id].internal_part or false
end

function WeaponFactoryTweakData:create_bonuses(tweak_data, weapon_skins)
	self.parts.wpn_fps_upg_bonus_concealment_p1 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_concealment",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = 1
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_concealment_p2 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_concealment",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = 2
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_concealment_p3 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_concealment",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = 3
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_spread_p1 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_spread",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread = 1
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_spread_n1 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_spread",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread = -1
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_recoil_p1 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_recoil",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_damage_p1 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_damage",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			damage = 1
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_damage_p2 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_damage",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			damage = 2
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_total_ammo_p1 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_total_ammo",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			total_ammo_mod = 1
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_total_ammo_p3 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		a_obj = "a_body",
		type = "bonus",
		name_id = "bm_menu_bonus_total_ammo",
		sub_type = "bonus_stats",
		internal_part = true,
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			total_ammo_mod = 3
		},
		perks = {"bonus"}
	}
	self.parts.wpn_fps_upg_bonus_team_exp_money_p3 = {
		exclude_from_challenge = true,
		texture_bundle_folder = "boost_in_lootdrop",
		internal_part = true,
		a_obj = "a_body",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		desc_id = "bm_wp_upg_bonus_team_exp_money_p3_desc",
		type = "bonus",
		sub_type = "bonus_team",
		name_id = "bm_wp_upg_bonus_team_exp_money_p3",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		has_description = true,
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {value = 1},
		custom_stats = {
			exp_multiplier = 1.03,
			money_multiplier = 1.03
		},
		perks = {"bonus"}
	}

	if weapon_skins then
		local uses_parts = {
			wpn_fps_upg_bonus_team_exp_money_p3 = {},
			wpn_fps_upg_bonus_concealment_p1 = {},
			wpn_fps_upg_bonus_recoil_p1 = {},
			wpn_fps_upg_bonus_spread_p1 = {},
			wpn_fps_upg_bonus_spread_n1 = {category = {"shotgun"}},
			wpn_fps_upg_bonus_damage_p1 = {weapon = {"flamethrower_mk2"}},
			wpn_fps_upg_bonus_total_ammo_p1 = {category = {
				"saw",
				"minigun",
				"flamethrower",
				"bow",
				"crossbow",
				"snp"
			}},
			wpn_fps_upg_bonus_concealment_p2 = {weapon = {"p90"}},
			wpn_fps_upg_bonus_concealment_p3 = {weapon = {
				"b92fs",
				"famas",
				"new_raging_bull",
				"ppk"
			}},
			wpn_fps_upg_bonus_damage_p2 = {weapon = {"famas"}},
			wpn_fps_upg_bonus_total_ammo_p3 = {weapon = {"plainsrider"}}
		}
		local all_pass, weapon_pass, exclude_weapon_pass, category_pass, exclude_category_pass = nil

		for id, data in pairs(tweak_data.upgrades.definitions) do
			local weapon_tweak = tweak_data.weapon[data.weapon_id]
			local primary_category = weapon_tweak and weapon_tweak.categories and weapon_tweak.categories[1]

			if data.weapon_id and weapon_tweak and data.factory_id and self[data.factory_id] then
				for part_id, params in pairs(uses_parts) do
					weapon_pass = not params.weapon or table.contains(params.weapon, data.weapon_id)
					exclude_weapon_pass = not params.exclude_weapon or not table.contains(params.exclude_weapon, data.weapon_id)
					category_pass = not params.category or table.contains(params.category, primary_category)
					exclude_category_pass = not params.exclude_category or not table.contains(params.exclude_category, primary_category)
					all_pass = weapon_pass and exclude_weapon_pass and category_pass and exclude_category_pass

					if all_pass then
						table.insert(self[data.factory_id].uses_parts, part_id)
						table.insert(self[data.factory_id .. "_npc"].uses_parts, part_id)
					end
				end
			end
		end
	end
end

function WeaponFactoryTweakData:create_ammunition()
	self.parts.wpn_fps_upg_a_slug = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		a_obj = "a_body",
		type = "ammo",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		internal_part = true,
		sub_type = "ammo_slug",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_upg_a_slug",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {
			value = 5,
			total_ammo_mod = -3,
			damage = 15,
			moving_spread = 2,
			spread = 2
		},
		custom_stats = {
			armor_piercing_add = 1,
			can_shoot_through_shield = true,
			can_shoot_through_wall = true,
			damage_far_mul = 1.15,
			damage_near_mul = 2,
			can_shoot_through_enemy = true,
			rays = 1
		}
	}
	self.parts.wpn_fps_upg_a_custom = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		a_obj = "a_body",
		type = "ammo",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		internal_part = true,
		sub_type = "ammo_custom",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_upg_a_custom",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {
			value = 5,
			damage = 15
		}
	}

	if is_win_32 then
		self.parts.wpn_fps_upg_a_custom_free = deep_clone(self.parts.wpn_fps_upg_a_custom)
		self.parts.wpn_fps_upg_a_custom_free.dlc = nil
		self.parts.wpn_fps_upg_a_custom_free.is_a_unlockable = nil
	end

	self.parts.wpn_fps_upg_a_explosive = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		a_obj = "a_body",
		type = "ammo",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		internal_part = true,
		sub_type = "ammo_explosive",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_upg_a_explosive",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {
			value = 5,
			total_ammo_mod = -2,
			damage = 3,
			moving_spread = 3,
			spread = -3
		},
		custom_stats = {
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			bullet_class = "InstantExplosiveBulletBase",
			rays = 1
		}
	}
	self.parts.wpn_fps_upg_a_piercing = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_shotgun",
		a_obj = "a_body",
		type = "ammo",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		internal_part = true,
		sub_type = "ammo_piercing",
		dlc = "gage_pack_shotgun",
		name_id = "bm_wp_upg_a_piercing",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {
			value = 5,
			spread = 2,
			damage = -3
		},
		custom_stats = {
			damage_near_mul = 2,
			armor_piercing_add = 1,
			damage_far_mul = 1.7
		}
	}
	self.parts.wpn_fps_upg_a_dragons_breath = {
		is_a_unlockable = true,
		texture_bundle_folder = "bbq",
		a_obj = "a_body",
		type = "ammo",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
		hit_effect = "dragonsbreath",
		sub_type = "ammo_dragons_breath",
		dlc = "bbq",
		internal_part = true,
		name_id = "bm_wp_upg_a_dragons_breath",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {
			value = 5,
			total_ammo_mod = -2,
			damage = -6,
			moving_spread = 3,
			spread = -1
		},
		custom_stats = {
			armor_piercing_add = 1,
			ignore_statistic = true,
			muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
			can_shoot_through_shield = true,
			damage_far_mul = 1.15,
			damage_near_mul = 2,
			bullet_class = "FlameBulletBase",
			rays = 12,
			fire_dot_data = {
				dot_trigger_chance = "100",
				dot_damage = "10",
				dot_length = "3.1",
				dot_trigger_max_distance = "3000",
				dot_tick_period = "0.5"
			}
		},
		forbids = {
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_sho_aa12_barrel_silenced",
			"wpn_fps_sho_striker_b_suppressed"
		}
	}
	local weapons = {
		"wpn_fps_shot_saiga",
		"wpn_fps_shot_r870",
		"wpn_fps_shot_huntsman",
		"wpn_fps_shot_serbu",
		"wpn_fps_sho_ben",
		"wpn_fps_sho_striker",
		"wpn_fps_sho_ksg",
		"wpn_fps_pis_judge",
		"wpn_fps_sho_spas12",
		"wpn_fps_shot_b682",
		"wpn_fps_sho_aa12",
		"wpn_fps_sho_boot",
		"wpn_fps_shot_m37",
		"wpn_fps_sho_rota"
	}

	for _, factory_id in ipairs(weapons) do
		if self[factory_id] and self[factory_id].uses_parts then
			table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_slug")
			table.insert(self[factory_id .. "_npc"].uses_parts, "wpn_fps_upg_a_slug")
			table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_custom")
			table.insert(self[factory_id .. "_npc"].uses_parts, "wpn_fps_upg_a_custom")

			if is_win_32 then
				table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_custom_free")
			end

			if is_win_32 then
				table.insert(self[factory_id .. "_npc"].uses_parts, "wpn_fps_upg_a_custom_free")
			end

			table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_explosive")
			table.insert(self[factory_id .. "_npc"].uses_parts, "wpn_fps_upg_a_explosive")
			table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_piercing")
			table.insert(self[factory_id .. "_npc"].uses_parts, "wpn_fps_upg_a_piercing")
			table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_dragons_breath")
			table.insert(self[factory_id .. "_npc"].uses_parts, "wpn_fps_upg_a_dragons_breath")
		end
	end

	self.parts.wpn_fps_upg_a_grenade_launcher_incendiary = {
		is_a_unlockable = true,
		texture_bundle_folder = "bbq",
		type = "ammo",
		a_obj = "a_body",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		internal_part = true,
		sub_type = "ammo_dragons_breath",
		dlc = "bbq",
		name_id = "bm_wp_upg_a_grenade_launcher_incendiary",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {damage = -127},
		custom_stats = {launcher_grenade = "launcher_incendiary"},
		override = {
			wpn_fps_gre_m32_mag = {unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_mag_incendiary"},
			wpn_fps_gre_m79_grenade = {unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m79_grenade_incendiary"},
			wpn_fps_gre_m79_grenade_whole = {unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china_pts/wpn_fps_gre_m79_grenade_whole_incendiary"}
		}
	}
	local weapons = {
		"wpn_fps_gre_m79",
		"wpn_fps_gre_m32",
		"wpn_fps_gre_china"
	}

	for _, factory_id in ipairs(weapons) do
		if self[factory_id] and self[factory_id].uses_parts then
			table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_grenade_launcher_incendiary")
			table.insert(self[factory_id .. "_npc"].uses_parts, "wpn_fps_upg_a_grenade_launcher_incendiary")
		end
	end

	self.parts.wpn_fps_upg_a_grenade_launcher_incendiary_arbiter = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		type = "ammo",
		a_obj = "a_body",
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		internal_part = true,
		sub_type = "ammo_dragons_breath",
		dlc = "tango",
		name_id = "bm_wp_upg_a_grenade_launcher_incendiary",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {damage = -67},
		custom_stats = {launcher_grenade = "launcher_incendiary_arbiter"}
	}
	local weapons = {"wpn_fps_gre_arbiter"}

	for _, factory_id in ipairs(weapons) do
		if self[factory_id] and self[factory_id].uses_parts then
			table.insert(self[factory_id].uses_parts, "wpn_fps_upg_a_grenade_launcher_incendiary_arbiter")
			table.insert(self[factory_id .. "_npc"].uses_parts, "wpn_fps_upg_a_grenade_launcher_incendiary_arbiter")
		end
	end

	self.parts.wpn_fps_upg_pis_adam = {
		is_a_unlockable = false,
		third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		type = "ammo",
		a_obj = "a_body",
		internal_part = true,
		sub_type = "ammo",
		name_id = "bm_wp_upg_pis_adam",
		unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
		pcs = {},
		stats = {},
		custom_stats = {}
	}
end

function WeaponFactoryTweakData:_init_g26()
	self.parts.wpn_fps_pis_g26_b_custom = {
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26_pts/wpn_fps_pis_g26_b_custom",
		dlc = "pd2_clan",
		type = "slide",
		name_id = "bm_wp_g26_b_custom",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 4,
			damage = 1,
			concealment = -1,
			recoil = -2
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_g26_b_standard = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_g26_body_frame",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26_pts/wpn_fps_pis_g26_b_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_g26_body_custom = {
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26_pts/wpn_fps_pis_g26_body_custom",
		dlc = "pd2_clan",
		type = "lower_reciever",
		name_id = "bm_wp_g26_body_salient",
		a_obj = "a_body",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 0,
			value = 7,
			damage = 1,
			concealment = -1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_pis_g26_body_stardard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_g26_body_frame",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26_pts/wpn_fps_pis_g26_body_stardard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_g26_fl_adapter = {
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_wp_g26_body_frame",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26_pts/wpn_fps_pis_g26_fl_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_g26_g_gripforce = {
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26_pts/wpn_fps_pis_g26_g_gripforce",
		dlc = "pd2_clan",
		type = "grip",
		name_id = "bm_wp_pis_g_beavertail",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 7,
			recoil = 2,
			spread = 0,
			concealment = -1
		}
	}
	self.parts.wpn_fps_pis_g26_g_laser = {
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26_pts/wpn_fps_pis_g26_g_laser",
		dlc = "pd2_clan",
		type = "grip",
		name_id = "bm_wp_pis_g_laser",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 4,
			recoil = 0,
			spread = 1,
			concealment = -1
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_pis_g26_m_contour = {
		type = "magazine",
		a_obj = "a_m",
		dlc = "pd2_clan",
		name_id = "bm_wp_g26_m_custom",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26_pts/wpn_fps_pis_g26_m_contour",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			spread = 0,
			value = 6,
			damage = 0,
			concealment = -1,
			recoil = 2
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_g26_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_g26_body_frame",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26_pts/wpn_fps_pis_g26_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_upg_fl_pis_crimson = {
		sub_type = "laser",
		dlc = "pd2_clan",
		type = "gadget",
		name_id = "bm_wp_upg_fl_crimson",
		a_obj = "a_fl",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_upg_fl_pis_crimson/wpn_fps_upg_fl_pis_crimson",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 5,
			recoil = 0,
			spread = 0,
			concealment = 0
		}
	}
	self.parts.wpn_fps_upg_fl_pis_x400v = {
		type = "gadget",
		dlc = "pd2_clan",
		a_obj = "a_fl",
		sub_type = "laser",
		name_id = "bm_wp_upg_fl_x400v",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_upg_fl_pis_x400v/wpn_fps_upg_fl_pis_x400v",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 5,
			recoil = 1,
			spread = 0,
			concealment = -2
		},
		perks = {"gadget"},
		adds = {"wpn_fps_upg_fl_ass_peq15_flashlight"}
	}
	self.parts.wpn_fps_upg_ns_pis_large_kac = {
		type = "barrel_ext",
		sub_type = "silencer",
		dlc = "pd2_clan",
		a_obj = "a_ns",
		parent = "slide",
		name_id = "bm_wp_upg_ns_large_kac",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_upg_ns_pis_large_kac/wpn_fps_upg_ns_pis_large_kac",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread = 1,
			damage = -1,
			suppression = 12,
			value = 6,
			recoil = -2,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_upg_ns_pis_medium_gem = {
		type = "barrel_ext",
		sub_type = "silencer",
		dlc = "pd2_clan",
		a_obj = "a_ns",
		parent = "slide",
		name_id = "bm_wp_upg_ns_medium_gem",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_upg_ns_pis_medium_gem/wpn_fps_upg_ns_pis_medium_gem",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread = 0,
			damage = -3,
			suppression = 12,
			value = 4,
			recoil = 1,
			concealment = -1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_upg_ns_pis_meatgrinder = {
		parent = "slide",
		dlc = "pd2_clan",
		type = "barrel_ext",
		name_id = "bm_wp_upg_ns_meatgrinder",
		a_obj = "a_co",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_upg_ns_pis_meatgrinder/wpn_fps_upg_ns_pis_meatgrinder",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			value = 7,
			damage = 2,
			concealment = -1,
			recoil = 2
		}
	}
	self.parts.wpn_fps_upg_ns_pis_ipsccomp = {
		parent = "slide",
		dlc = "pd2_clan",
		type = "barrel_ext",
		name_id = "bm_wp_upg_ns_ipsccomp",
		a_obj = "a_co",
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_upg_ns_pis_ipsccomp/wpn_fps_upg_ns_pis_ipsccomp",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 3,
			value = 4,
			damage = 0,
			concealment = -1,
			recoil = -1
		}
	}
	self.parts.wpn_fps_pis_g26_b_custom.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_pis_g26_pts/wpn_third_pis_g26_b_custom"
	self.parts.wpn_fps_pis_g26_b_standard.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_pis_g26_pts/wpn_third_pis_g26_b_standard"
	self.parts.wpn_fps_pis_g26_body_custom.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_pis_g26_pts/wpn_third_pis_g26_body_custom"
	self.parts.wpn_fps_pis_g26_body_stardard.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_pis_g26_pts/wpn_third_pis_g26_body_stardard"
	self.parts.wpn_fps_pis_g26_fl_adapter.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_pis_g26_pts/wpn_third_pis_g26_fl_adapter"
	self.parts.wpn_fps_pis_g26_g_gripforce.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_pis_g26_pts/wpn_third_pis_g26_g_gripforce"
	self.parts.wpn_fps_pis_g26_g_laser.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_pis_g26_pts/wpn_third_pis_g26_g_laser"
	self.parts.wpn_fps_pis_g26_m_contour.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_pis_g26_pts/wpn_third_pis_g26_m_contour"
	self.parts.wpn_fps_pis_g26_m_standard.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_pis_g26_pts/wpn_third_pis_g26_m_standard"
	self.parts.wpn_fps_upg_fl_pis_crimson.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_upg_fl_pis_crimson/wpn_third_upg_fl_pis_crimson"
	self.parts.wpn_fps_upg_fl_pis_x400v.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_upg_fl_pis_x400v/wpn_third_upg_fl_pis_x400v"
	self.parts.wpn_fps_upg_ns_pis_large_kac.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_upg_ns_pis_large_kac/wpn_third_upg_ns_pis_large_kac"
	self.parts.wpn_fps_upg_ns_pis_medium_gem.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_upg_ns_pis_medium_gem/wpn_third_upg_ns_pis_medium_gem"
	self.parts.wpn_fps_upg_ns_pis_meatgrinder.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_upg_ns_pis_meatgrinder/wpn_third_upg_ns_pis_meatgrinder"
	self.parts.wpn_fps_upg_ns_pis_ipsccomp.third_unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_third_upg_ns_pis_ipsccomp/wpn_third_upg_ns_pis_ipsccomp"
	self.wpn_fps_pis_g26 = {
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26/wpn_fps_pis_g26",
		optional_types = {
			"barrel_ext",
			"gadget",
			"stock",
			"grip"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_g26_fl_adapter"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_g26_fl_adapter"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_g26_fl_adapter"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_g26_fl_adapter"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_g26_fl_adapter"}
		},
		override = {wpn_fps_upg_o_rmr = {parent = "slide"}},
		default_blueprint = {
			"wpn_fps_pis_g26_b_standard",
			"wpn_fps_pis_g26_body_stardard",
			"wpn_fps_pis_g26_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_g26_b_custom",
			"wpn_fps_pis_g26_b_standard",
			"wpn_fps_pis_g26_body_custom",
			"wpn_fps_pis_g26_body_stardard",
			"wpn_fps_pis_g26_g_gripforce",
			"wpn_fps_pis_g26_g_laser",
			"wpn_fps_pis_g26_m_contour",
			"wpn_fps_pis_g26_m_standard",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle",
			"wpn_fps_pis_g18c_m_mag_33rnd"
		}
	}
	self.wpn_fps_pis_g26_npc = deep_clone(self.wpn_fps_pis_g26)
	self.wpn_fps_pis_g26_npc.unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_pis_g26/wpn_fps_pis_g26_npc"
end

function WeaponFactoryTweakData:_init_jowi()
	self.wpn_fps_jowi = {
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_jowi/wpn_fps_jowi",
		optional_types = {
			"barrel_ext",
			"gadget",
			"stock",
			"grip"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_g26_fl_adapter"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_g26_fl_adapter"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_g26_fl_adapter"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_g26_fl_adapter"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_g26_fl_adapter"}
		},
		override = {
			wpn_fps_pis_g26_m_standard = {animations = {
				reload_not_empty = "reload_not_empty_right",
				reload = "reload_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}},
			wpn_fps_pis_g26_m_contour = {animations = {
				reload_not_empty = "reload_not_empty_right",
				reload = "reload_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}},
			wpn_fps_pis_g26_b_standard = {animations = {
				reload_left = "reload_left",
				reload = "reload_right",
				fire = "recoil",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_g26_b_custom = {animations = {
				reload_left = "reload_left",
				reload = "reload_right",
				fire = "recoil",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_g18c_m_mag_33rnd = {
				animations = {
					reload_not_empty = "reload_not_empty_right",
					reload = "reload_right",
					reload_left = "reload_left",
					reload_not_empty_left = "reload_not_empty_left"
				},
				stats = {
					value = 3,
					spread_moving = -2,
					concealment = -1,
					extra_ammo = 12
				}
			}
		},
		default_blueprint = {
			"wpn_fps_pis_g26_b_standard",
			"wpn_fps_pis_g26_body_stardard",
			"wpn_fps_pis_g26_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_g26_b_custom",
			"wpn_fps_pis_g26_b_standard",
			"wpn_fps_pis_g26_body_custom",
			"wpn_fps_pis_g26_body_stardard",
			"wpn_fps_pis_g26_g_gripforce",
			"wpn_fps_pis_g26_g_laser",
			"wpn_fps_pis_g26_m_contour",
			"wpn_fps_pis_g26_m_standard",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle",
			"wpn_fps_pis_g18c_m_mag_33rnd"
		}
	}
	self.wpn_fps_jowi_npc = deep_clone(self.wpn_fps_jowi)
	self.wpn_fps_jowi_npc.unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_jowi/wpn_fps_jowi_npc"
end

function WeaponFactoryTweakData:_init_x_1911()
	self.wpn_fps_x_1911 = {
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_x_1911/wpn_fps_x_1911",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		animations = {
			reload = "reload_right",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_left = "reload_left",
			magazine_empty = "last_recoil"
		},
		override = {
			wpn_fps_pis_1911_m_standard = {animations = {
				reload_not_empty = "reload_not_empty_right",
				reload = "reload_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}},
			wpn_fps_pis_1911_m_extended = {
				animations = {
					reload_not_empty = "reload_not_empty_right",
					reload = "reload_right",
					reload_left = "reload_left",
					reload_not_empty_left = "reload_not_empty_left"
				},
				stats = {
					value = 3,
					spread_moving = -2,
					concealment = -1,
					extra_ammo = 6
				}
			},
			wpn_fps_pis_1911_b_standard = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_1911_b_long = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_1911_b_vented = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_1911_m_big = {
				animations = {
					reload_not_empty = "reload_not_empty_right",
					reload = "reload_right",
					reload_left = "reload_left",
					reload_not_empty_left = "reload_not_empty_left"
				},
				stats = {
					extra_ammo = 12,
					value = 4,
					recoil = 2,
					concealment = -2,
					spread_moving = -1
				}
			}
		},
		default_blueprint = {
			"wpn_fps_pis_1911_body_standard",
			"wpn_fps_pis_1911_b_standard",
			"wpn_fps_pis_1911_g_standard",
			"wpn_fps_pis_1911_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_1911_body_standard",
			"wpn_fps_pis_1911_co_1",
			"wpn_fps_pis_1911_co_2",
			"wpn_fps_pis_1911_g_standard",
			"wpn_fps_pis_1911_g_bling",
			"wpn_fps_pis_1911_g_ergo",
			"wpn_fps_pis_1911_b_standard",
			"wpn_fps_pis_1911_b_long",
			"wpn_fps_pis_1911_b_vented",
			"wpn_fps_pis_1911_m_standard",
			"wpn_fps_pis_1911_m_extended",
			"wpn_fps_pis_1911_o_standard",
			"wpn_fps_pis_1911_o_long",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_pis_1911_g_engraved",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle",
			"wpn_fps_pis_1911_g_legendary",
			"wpn_fps_pis_1911_fl_legendary",
			"wpn_fps_pis_1911_m_big"
		}
	}
	self.wpn_fps_x_1911_npc = deep_clone(self.wpn_fps_x_1911)
	self.wpn_fps_x_1911_npc.unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_x_1911/wpn_fps_x_1911_npc"
end

function WeaponFactoryTweakData:_init_x_b92fs()
	self.wpn_fps_x_b92fs = {
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_x_b92fs/wpn_fps_x_b92fs",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		animations = {
			reload = "reload_right",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_left = "reload_left",
			magazine_empty = "last_recoil"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_beretta_body_rail"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_beretta_body_rail"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_beretta_body_rail"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_beretta_body_rail"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_beretta_body_rail"}
		},
		override = {
			wpn_fps_upg_pis_ns_flash = {parent = "lower_reciever"},
			wpn_fps_upg_ns_pis_medium_slim = {parent = "lower_reciever"},
			wpn_fps_upg_ns_ass_filter = {parent = "lower_reciever"},
			wpn_fps_upg_ns_pis_jungle = {parent = "lower_reciever"},
			wpn_fps_pis_beretta_m_std = {animations = {
				reload_not_empty = "reload_not_empty_right",
				reload = "reload_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}},
			wpn_fps_pis_beretta_m_extended = {
				animations = {
					reload_not_empty = "reload_not_empty_right",
					reload = "reload_right",
					reload_left = "reload_left",
					reload_not_empty_left = "reload_not_empty_left"
				},
				stats = {
					value = 2,
					spread_moving = -2,
					concealment = -2,
					extra_ammo = 12
				}
			},
			wpn_fps_pis_beretta_sl_std = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_beretta_sl_brigadier = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}}
		},
		default_blueprint = {
			"wpn_fps_pis_beretta_body_beretta",
			"wpn_fps_pis_beretta_b_std",
			"wpn_fps_pis_beretta_g_std",
			"wpn_fps_pis_beretta_m_std",
			"wpn_fps_pis_beretta_o_std",
			"wpn_fps_pis_beretta_sl_std"
		},
		uses_parts = {
			"wpn_fps_pis_beretta_b_std",
			"wpn_fps_pis_beretta_body_beretta",
			"wpn_fps_pis_beretta_body_rail",
			"wpn_fps_pis_beretta_co_co1",
			"wpn_fps_pis_beretta_co_co2",
			"wpn_fps_pis_beretta_g_ergo",
			"wpn_fps_pis_beretta_g_std",
			"wpn_fps_pis_beretta_m_extended",
			"wpn_fps_pis_beretta_m_std",
			"wpn_fps_pis_beretta_o_std",
			"wpn_fps_pis_beretta_sl_std",
			"wpn_fps_pis_beretta_sl_brigadier",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_pis_beretta_g_engraved",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_x_b92fs_npc = deep_clone(self.wpn_fps_x_b92fs)
	self.wpn_fps_x_b92fs_npc.unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_x_b92fs/wpn_fps_x_b92fs_npc"
end

function WeaponFactoryTweakData:_init_x_deagle()
	self.wpn_fps_x_deagle = {
		unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_x_deagle/wpn_fps_x_deagle",
		animations = {
			reload = "reload_right",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_left = "reload_left",
			magazine_empty = "last_recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_deagle_fg_rail"},
			wpn_fps_pis_deagle_b_standard = {
				"wpn_fps_pis_deagle_o_standard_rear",
				"wpn_fps_pis_deagle_o_standard_front"
			},
			wpn_fps_pis_deagle_b_long = {
				"wpn_fps_pis_deagle_o_standard_rear",
				"wpn_fps_pis_deagle_o_standard_front_long"
			}
		},
		override = {
			wpn_fps_pis_deagle_m_standard = {animations = {
				reload_not_empty = "reload_not_empty_right",
				reload = "reload_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}},
			wpn_fps_pis_deagle_m_extended = {
				animations = {
					reload_not_empty = "reload_not_empty_right",
					reload = "reload_right",
					reload_left = "reload_left",
					reload_not_empty_left = "reload_not_empty_left"
				},
				stats = {
					concealment = -2,
					spread_moving = -2,
					value = 7,
					extra_ammo = 6
				}
			},
			wpn_fps_pis_deagle_body_standard = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}}
		},
		default_blueprint = {
			"wpn_fps_pis_deagle_body_standard",
			"wpn_fps_pis_deagle_b_standard",
			"wpn_fps_pis_deagle_g_standard",
			"wpn_fps_pis_deagle_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_deagle_body_standard",
			"wpn_fps_pis_deagle_b_standard",
			"wpn_fps_pis_deagle_b_long",
			"wpn_fps_pis_deagle_co_long",
			"wpn_fps_pis_deagle_co_short",
			"wpn_fps_pis_deagle_fg_rail",
			"wpn_fps_pis_deagle_g_bling",
			"wpn_fps_pis_deagle_g_ergo",
			"wpn_fps_pis_deagle_g_standard",
			"wpn_fps_pis_deagle_m_extended",
			"wpn_fps_pis_deagle_m_standard",
			"wpn_fps_pis_deagle_o_standard_rear",
			"wpn_fps_pis_deagle_o_standard_front",
			"wpn_fps_pis_deagle_o_standard_front_long",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_x_deagle_npc = deep_clone(self.wpn_fps_x_deagle)
	self.wpn_fps_x_deagle_npc.unit = "units/pd2_crimefest_2014/oct22/weapons/wpn_fps_x_deagle/wpn_fps_x_deagle_npc"
end

function WeaponFactoryTweakData:_init_spas12()
	self.parts.wpn_fps_sho_b_spas12_long = {
		unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12_pts/wpn_fps_sho_b_spas12_long",
		dlc = "pd2_clan",
		type = "barrel",
		name_id = "bm_wp_spas12_b_long",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1,
			concealment = -1,
			extra_ammo = 2
		}
	}
	self.parts.wpn_fps_sho_b_spas12_short = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_spas12_b_long",
		unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12_pts/wpn_fps_sho_b_spas12_short",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_body_spas12_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_spas12_b_long",
		unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12_pts/wpn_fps_sho_body_spas12_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_sho_fg_spas12_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_spas12_b_long",
		unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12_pts/wpn_fps_sho_fg_spas12_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_s_spas12_folded = {
		unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12_pts/wpn_fps_sho_s_spas12_folded",
		dlc = "pd2_clan",
		type = "stock",
		name_id = "bm_wp_spas12_s_folded",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			recoil = -1,
			value = 1,
			concealment = 2
		},
		forbids = {
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_spot"
		}
	}
	self.parts.wpn_fps_sho_s_spas12_nostock = {
		unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12_pts/wpn_fps_sho_s_spas12_nostock",
		dlc = "pd2_clan",
		type = "stock",
		name_id = "bm_wp_spas12_s_no",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 0,
			recoil = -3,
			value = 4,
			concealment = 4
		}
	}
	self.parts.wpn_fps_sho_s_spas12_solid = {
		unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12_pts/wpn_fps_sho_s_spas12_solid",
		dlc = "pd2_clan",
		type = "stock",
		name_id = "bm_wp_spas12_s_solid",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			recoil = 1,
			value = 1,
			concealment = -3
		}
	}
	self.parts.wpn_fps_sho_s_spas12_unfolded = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_spas12_b_long",
		unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12_pts/wpn_fps_sho_s_spas12_unfolded",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_b_spas12_long.third_unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_third_sho_spas12_pts/wpn_third_sho_b_spas12_long"
	self.parts.wpn_fps_sho_b_spas12_short.third_unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_third_sho_spas12_pts/wpn_third_sho_b_spas12_short"
	self.parts.wpn_fps_sho_body_spas12_standard.third_unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_third_sho_spas12_pts/wpn_third_sho_body_spas12_standard"
	self.parts.wpn_fps_sho_fg_spas12_standard.third_unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_third_sho_spas12_pts/wpn_third_sho_fg_spas12_standard"
	self.parts.wpn_fps_sho_s_spas12_folded.third_unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_third_sho_spas12_pts/wpn_third_sho_s_spas12_folded"
	self.parts.wpn_fps_sho_s_spas12_nostock.third_unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_third_sho_spas12_pts/wpn_third_sho_s_spas12_nostock"
	self.parts.wpn_fps_sho_s_spas12_solid.third_unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_third_sho_spas12_pts/wpn_third_sho_s_spas12_solid"
	self.parts.wpn_fps_sho_s_spas12_unfolded.third_unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_third_sho_spas12_pts/wpn_third_sho_s_spas12_unfolded"
	self.wpn_fps_sho_spas12 = {
		unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12/wpn_fps_sho_spas12",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_docter = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cmore = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_acog = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_cs = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_reflex = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_shot_r870_ris_special"},
			wpn_fps_upg_o_spot = {"wpn_fps_shot_r870_ris_special"}
		},
		default_blueprint = {
			"wpn_fps_sho_b_spas12_short",
			"wpn_fps_sho_body_spas12_standard",
			"wpn_fps_sho_fg_spas12_standard",
			"wpn_fps_sho_s_spas12_unfolded"
		},
		uses_parts = {
			"wpn_fps_sho_b_spas12_long",
			"wpn_fps_sho_b_spas12_short",
			"wpn_fps_sho_body_spas12_standard",
			"wpn_fps_sho_fg_spas12_standard",
			"wpn_fps_sho_s_spas12_folded",
			"wpn_fps_sho_s_spas12_nostock",
			"wpn_fps_sho_s_spas12_solid",
			"wpn_fps_sho_s_spas12_unfolded",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_sho_spas12_npc = deep_clone(self.wpn_fps_sho_spas12)
	self.wpn_fps_sho_spas12_npc.unit = "units/pd2_crimefest_2014/oct26/weapons/wpn_fps_sho_spas12/wpn_fps_sho_spas12_npc"
end

function WeaponFactoryTweakData:_init_mg42()
	self.parts.wpn_fps_lmg_mg42_b_mg42 = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_mg42_b_long",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_b_mg42",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_mg42_b_mg34 = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_mg42_b_mg34",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_b_mg34",
		pcs = {},
		stats = {
			value = 1,
			recoil = 2,
			damage = -1,
			spread = 2
		},
		override = {wpn_fps_lmg_mg42_n42 = {
			third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_n34",
			unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_n34"
		}}
	}
	self.parts.wpn_fps_lmg_mg42_b_vg38 = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_mg42_b_vg38",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_b_vg38",
		pcs = {},
		stats = {
			alert_size = 12,
			spread = -1,
			damage = 0,
			suppression = 12,
			value = 4,
			recoil = 1,
			spread_moving = 0,
			concealment = 0
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_d"},
		forbids = {
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ass_ns_battle"
		},
		override = {wpn_fps_lmg_mg42_n42 = {
			third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_lmg_mg42_pts/wpn_third_lmg_mg42_n38",
			unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_n38"
		}}
	}
	self.parts.wpn_fps_lmg_mg42_reciever = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_mg42_b_long",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_reciever",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_lmg_mg42_n42 = {
		parent = "barrel",
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_mg42_n42",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_n42",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_mg42_n34 = {
		parent = "barrel",
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_mg42_n42",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_n42",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_mg42_n38 = {
		parent = "barrel",
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_mg42_n42",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42_pts/wpn_fps_lmg_mg42_n38",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_mg42_b_mg42.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_lmg_mg42_pts/wpn_third_lmg_mg42_b_mg42"
	self.parts.wpn_fps_lmg_mg42_b_mg34.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_lmg_mg42_pts/wpn_third_lmg_mg42_b_mg34"
	self.parts.wpn_fps_lmg_mg42_b_vg38.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_lmg_mg42_pts/wpn_third_lmg_mg42_b_vg38"
	self.parts.wpn_fps_lmg_mg42_reciever.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_lmg_mg42_pts/wpn_third_lmg_mg42_reciever"
	self.parts.wpn_fps_lmg_mg42_n42.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_lmg_mg42_pts/wpn_third_lmg_mg42_nozzle_42"
	self.parts.wpn_fps_lmg_mg42_n34.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_lmg_mg42_pts/wpn_third_lmg_mg42_nozzle_34"
	self.parts.wpn_fps_lmg_mg42_n38.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_lmg_mg42_pts/wpn_third_lmg_mg42_n38"
	self.wpn_fps_lmg_mg42 = {
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42/wpn_fps_lmg_mg42",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		adds = {},
		default_blueprint = {
			"wpn_fps_lmg_mg42_b_mg42",
			"wpn_fps_lmg_mg42_n42",
			"wpn_fps_lmg_mg42_reciever"
		},
		uses_parts = {
			"wpn_fps_lmg_mg42_b_mg42",
			"wpn_fps_lmg_mg42_b_mg34",
			"wpn_fps_lmg_mg42_b_vg38",
			"wpn_fps_lmg_mg42_reciever",
			"wpn_fps_lmg_mg42_n42",
			"wpn_fps_lmg_mg42_n34",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg"
		}
	}
	self.wpn_fps_lmg_mg42_npc = deep_clone(self.wpn_fps_lmg_mg42)
	self.wpn_fps_lmg_mg42_npc.unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_lmg_mg42/wpn_fps_lmg_mg42_npc"
end

function WeaponFactoryTweakData:_init_c96()
	self.parts.wpn_fps_pis_c96_b_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "slide",
		a_obj = "a_b",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_c96_b_long",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_b_long",
		pcs = {},
		stats = {
			value = 1,
			total_ammo_mod = -10,
			damage = 110,
			concealment = -3,
			spread = -2,
			recoil = 2
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_c96_nozzle = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		a_obj = "a_co",
		type = "barrel_ext",
		parent = "slide",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_c96_nozzle",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_nozzle",
		pcs = {},
		stats = {
			value = 1,
			concealment = -1,
			damage = 2,
			spread = -1,
			recoil = 2
		},
		sound_switch = {suppressed = "suppressed_d"}
	}
	self.parts.wpn_fps_pis_c96_sight = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "sight",
		a_obj = "a_o",
		reticle_obj = "g_reddot",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_c96_sight",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_sight",
		pcs = {},
		stats = {
			zoom = 7,
			value = 1,
			concealment = -2
		},
		perks = {"scope"},
		stance_mod = {wpn_fps_pis_c96 = {translation = Vector3(-3.41, -12, 0.93)}},
		texture_switch = {
			material = "gfx_reddot1",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_pis_c96_rail = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_c96_b_standard",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_c96_b_standard = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_c96_b_standard",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_b_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_c96_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_c96_body_standard",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_c96_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_c96_g_standard",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_c96_m_extended = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "magazine",
		a_obj = "a_m",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_c96_m_extended",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_m_extended",
		pcs = {},
		stats = {
			concealment = -2,
			value = 1,
			extra_ammo = 5
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_c96_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_c96_m_standard",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_c96_s_solid = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_c96_s_solid",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_s_solid",
		pcs = {},
		stats = {
			value = 1,
			recoil = 4,
			concealment = -3
		}
	}
	self.parts.wpn_fps_pis_c96_b_long.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_b_long"
	self.parts.wpn_fps_pis_c96_b_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_b_standard"
	self.parts.wpn_fps_pis_c96_body_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_body_standard"
	self.parts.wpn_fps_pis_c96_g_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_g_standard"
	self.parts.wpn_fps_pis_c96_m_extended.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_m_extended"
	self.parts.wpn_fps_pis_c96_m_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_m_standard"
	self.parts.wpn_fps_pis_c96_s_solid.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_s_solid"
	self.parts.wpn_fps_pis_c96_nozzle.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_nozzle"
	self.parts.wpn_fps_pis_c96_sight.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_sight"
	self.parts.wpn_fps_pis_c96_rail.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_pis_c96_pts/wpn_third_pis_c96_rail"
	self.wpn_fps_pis_c96 = {
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96/wpn_fps_pis_c96",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_c96_rail"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_c96_rail"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_c96_rail"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_c96_rail"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_c96_rail"},
			wpn_fps_pis_c96_sight = {"wpn_fps_pis_c96_rail"}
		},
		override = {wpn_fps_upg_o_rmr = {parent = "slide"}},
		default_blueprint = {
			"wpn_fps_pis_c96_b_standard",
			"wpn_fps_pis_c96_body_standard",
			"wpn_fps_pis_c96_g_standard",
			"wpn_fps_pis_c96_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_c96_b_long",
			"wpn_fps_pis_c96_b_standard",
			"wpn_fps_pis_c96_body_standard",
			"wpn_fps_pis_c96_g_standard",
			"wpn_fps_pis_c96_m_extended",
			"wpn_fps_pis_c96_m_standard",
			"wpn_fps_pis_c96_s_solid",
			"wpn_fps_pis_c96_nozzle",
			"wpn_fps_pis_c96_sight",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_c96_npc = deep_clone(self.wpn_fps_pis_c96)
	self.wpn_fps_pis_c96_npc.unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96/wpn_fps_pis_c96_npc"
end

function WeaponFactoryTweakData:_init_sterling()
	self.parts.wpn_fps_smg_sterling_b_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_sterling_b_long",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_b_long",
		pcs = {},
		stats = {
			value = 1,
			concealment = -2,
			damage = 1,
			spread = 1,
			recoil = -1
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_sterling_b_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_sterling_b_short",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_b_short",
		pcs = {},
		stats = {
			spread = -1,
			concealment = 1,
			damage = 2,
			value = 1,
			recoil = 1
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_sterling_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_sterling_b_standard",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_b_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_sterling_b_suppressed = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_sterling_b_suppressed",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_b_suppressed",
		pcs = {},
		stats = {
			alert_size = 12,
			spread = -1,
			damage = 0,
			suppression = 12,
			value = 4,
			recoil = 1,
			spread_moving = 0,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		},
		forbids = {
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ass_ns_battle"
		}
	}
	self.parts.wpn_fps_smg_sterling_b_e11 = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_sterling_b_e11",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_b_e11",
		pcs = {},
		stats = {
			alert_size = 12,
			spread = -1,
			damage = 0,
			suppression = 12,
			value = 4,
			recoil = 1,
			spread_moving = 0,
			concealment = -1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_d"},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		},
		forbids = {
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ass_ns_battle"
		}
	}
	self.parts.wpn_fps_smg_sterling_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_mg42_b_long",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_sterling_m_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "magazine",
		a_obj = "a_m",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_sterling_m_long",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_m_long",
		pcs = {},
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 5,
			value = 1,
			concealment = -2
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_sterling_m_medium = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_mg42_m_medium",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_m_medium",
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_sterling_m_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "magazine",
		a_obj = "a_m",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_sterling_m_short",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_m_short",
		pcs = {},
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = -5,
			value = 1,
			concealment = 2
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_sterling_s_folded = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_sterling_s_folded",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_s_folded",
		pcs = {},
		stats = {
			value = 1,
			recoil = -2,
			concealment = 2
		}
	}
	self.parts.wpn_fps_smg_sterling_s_nostock = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_sterling_s_nostock",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_s_nostock",
		pcs = {},
		stats = {
			spread = -1,
			recoil = -2,
			value = 1,
			concealment = 4
		}
	}
	self.parts.wpn_fps_smg_sterling_s_solid = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "stock",
		a_obj = "a_s",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_sterling_s_solid",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_s_solid",
		pcs = {},
		stats = {
			spread = 1,
			recoil = 2,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_smg_sterling_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mg42_b_long",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_sterling_o_adapter = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_mg42_b_long",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling_pts/wpn_fps_smg_sterling_o_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_sterling_b_long.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_b_long"
	self.parts.wpn_fps_smg_sterling_b_short.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_b_short"
	self.parts.wpn_fps_smg_sterling_b_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_b_standard"
	self.parts.wpn_fps_smg_sterling_b_suppressed.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_b_suppressed"
	self.parts.wpn_fps_smg_sterling_b_e11.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_b_e11"
	self.parts.wpn_fps_smg_sterling_body_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_body_standard"
	self.parts.wpn_fps_smg_sterling_m_long.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_m_long"
	self.parts.wpn_fps_smg_sterling_m_medium.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_m_medium"
	self.parts.wpn_fps_smg_sterling_m_short.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_m_short"
	self.parts.wpn_fps_smg_sterling_s_folded.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_s_folded"
	self.parts.wpn_fps_smg_sterling_s_nostock.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_s_nostock"
	self.parts.wpn_fps_smg_sterling_s_solid.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_s_solid"
	self.parts.wpn_fps_smg_sterling_s_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_s_standard"
	self.parts.wpn_fps_smg_sterling_o_adapter.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_smg_sterling_pts/wpn_third_smg_sterling_o_adapter"
	self.wpn_fps_smg_sterling = {
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling/wpn_fps_smg_sterling",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_sterling_o_adapter"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_sterling_o_adapter"}
		},
		default_blueprint = {
			"wpn_fps_smg_sterling_b_standard",
			"wpn_fps_smg_sterling_body_standard",
			"wpn_fps_smg_sterling_m_medium",
			"wpn_fps_smg_sterling_s_standard"
		},
		uses_parts = {
			"wpn_fps_smg_sterling_b_long",
			"wpn_fps_smg_sterling_b_short",
			"wpn_fps_smg_sterling_b_standard",
			"wpn_fps_smg_sterling_b_suppressed",
			"wpn_fps_smg_sterling_b_e11",
			"wpn_fps_smg_sterling_body_standard",
			"wpn_fps_smg_sterling_m_long",
			"wpn_fps_smg_sterling_m_medium",
			"wpn_fps_smg_sterling_m_short",
			"wpn_fps_smg_sterling_s_folded",
			"wpn_fps_smg_sterling_s_nostock",
			"wpn_fps_smg_sterling_s_solid",
			"wpn_fps_smg_sterling_s_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot"
		}
	}
	self.wpn_fps_smg_sterling_npc = deep_clone(self.wpn_fps_smg_sterling)
	self.wpn_fps_smg_sterling_npc.unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_smg_sterling/wpn_fps_smg_sterling_npc"
end

function WeaponFactoryTweakData:_init_mosin()
	self.parts.wpn_fps_snp_mosin_b_medium = {
		texture_bundle_folder = "gage_pack_historical",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_mosin_b_medium",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_b_medium",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_mosin_b_standard = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_mosin_b_long",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_b_standard",
		pcs = {},
		stats = {
			spread = 0,
			recoil = 2,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_snp_mosin_b_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_mosin_b_short",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_b_short",
		pcs = {},
		stats = {
			spread = -1,
			recoil = 0,
			value = 1,
			concealment = 3
		}
	}
	self.parts.wpn_fps_snp_mosin_b_sniper = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_mosin_b_sniper",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_b_sniper",
		pcs = {},
		stats = {
			alert_size = 12,
			spread = -1,
			damage = -4,
			suppression = 12,
			value = 6,
			recoil = 1,
			spread_moving = -1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_d"}
	}
	self.parts.wpn_fps_snp_mosin_body_standard = {
		a_obj = "a_body",
		type = "stock",
		name_id = "bm_wp_mosin_body_standard",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_body_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_snp_mosin_body_black = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "stock",
		a_obj = "a_body",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_mosin_body_conceal",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_body_black",
		pcs = {},
		stats = {
			value = 1,
			recoil = -1,
			concealment = 3
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		override = {
			wpn_fps_snp_mosin_b_medium = {
				third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_b_medium_black",
				unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_b_medium_black"
			},
			wpn_fps_snp_mosin_b_standard = {
				third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_b_standard_black",
				unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_b_standard_black"
			},
			wpn_fps_snp_mosin_b_short = {
				third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_b_short_black",
				unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_b_short_black"
			}
		}
	}
	self.parts.wpn_fps_snp_mosin_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_snp_mosin_ns_bayonet = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "bayonet",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_mosin_ns_bayonet",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_ns_bayonet",
		pcs = {},
		stats = {
			min_damage = 4,
			min_damage_effect = 1.75,
			concealment = -2,
			max_damage_effect = 1.75,
			value = 1,
			max_damage = 4
		}
	}
	self.parts.wpn_fps_snp_mosin_rail = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_mosin_iron_sight = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_historical",
		type = "sight",
		a_obj = "a_o",
		dlc = "gage_pack_historical",
		name_id = "bm_wp_mosin_iron_sight",
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin_pts/wpn_fps_snp_mosin_iron_sight",
		pcs = {},
		stats = {
			zoom = 3,
			recoil = -1,
			value = 0,
			concealment = 2
		},
		forbids = {
			"wpn_fps_upg_o_45iron",
			"wpn_fps_snp_mosin_rail",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_45rds_v2",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.parts.wpn_fps_snp_mosin_b_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_b_standard"
	self.parts.wpn_fps_snp_mosin_b_medium.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_b_medium"
	self.parts.wpn_fps_snp_mosin_b_short.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_b_short"
	self.parts.wpn_fps_snp_mosin_b_sniper.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_b_sniper"
	self.parts.wpn_fps_snp_mosin_body_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_body_standard"
	self.parts.wpn_fps_snp_mosin_body_black.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_body_standard_black"
	self.parts.wpn_fps_snp_mosin_m_standard.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_m_standard"
	self.parts.wpn_fps_snp_mosin_ns_bayonet.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_ns_bayonet"
	self.parts.wpn_fps_snp_mosin_rail.third_unit = "units/pd2_dlc_gage_historical/weapons/wpn_third_snp_mosin_pts/wpn_third_snp_mosin_rail"
	self.wpn_fps_snp_mosin = {
		unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin/wpn_fps_snp_mosin",
		optional_types = {
			"gadget",
			"sight",
			"bayonet"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_shortdot = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_leupold = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_snp_mosin_rail"},
			wpn_fps_upg_o_box = {"wpn_fps_snp_mosin_rail"}
		},
		default_blueprint = {
			"wpn_fps_snp_mosin_b_medium",
			"wpn_fps_snp_mosin_body_standard",
			"wpn_fps_snp_mosin_m_standard",
			"wpn_fps_upg_o_shortdot"
		},
		uses_parts = {
			"wpn_fps_snp_mosin_b_standard",
			"wpn_fps_snp_mosin_b_medium",
			"wpn_fps_snp_mosin_b_short",
			"wpn_fps_snp_mosin_b_sniper",
			"wpn_fps_snp_mosin_iron_sight",
			"wpn_fps_snp_mosin_body_black",
			"wpn_fps_snp_mosin_body_standard",
			"wpn_fps_snp_mosin_m_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_snp_mosin_ns_bayonet",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_snp_mosin_npc = deep_clone(self.wpn_fps_snp_mosin)
	self.wpn_fps_snp_mosin_npc.unit = "units/pd2_dlc_gage_historical/weapons/wpn_fps_snp_mosin/wpn_fps_snp_mosin_npc"
end

function WeaponFactoryTweakData:_init_m1928()
	self.parts.wpn_fps_smg_thompson_barrel = {
		texture_bundle_folder = "pines",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m1928_b_medium",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_barrel",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_thompson_barrel_long = {
		texture_bundle_folder = "pines",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m1928_b_long",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_barrel_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 4,
			concealment = -3
		}
	}
	self.parts.wpn_fps_smg_thompson_barrel_short = {
		texture_bundle_folder = "pines",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m1928_b_short",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_barrel_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			value = 2,
			concealment = 3
		},
		override = {wpn_fps_smg_thompson_ns_standard = {
			third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_ns_no",
			unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_ns_no"
		}}
	}
	self.parts.wpn_fps_smg_thompson_body = {
		texture_bundle_folder = "pines",
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_m1928_b_medium",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_body",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_smg_thompson_drummag = {
		texture_bundle_folder = "pines",
		type = "magazine",
		name_id = "bm_wp_m1928_b_medium",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_drummag",
		a_obj = "a_m",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_thompson_fl_adapter = {
		texture_bundle_folder = "pines",
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_wp_m1928_b_medium",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_fl_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_thompson_foregrip = {
		texture_bundle_folder = "pines",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m1928_b_medium",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_foregrip",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_thompson_foregrip_discrete = {
		texture_bundle_folder = "pines",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m1928_fg_discrete",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_foregrip_discrete",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			recoil = -1,
			concealment = 1
		}
	}
	self.parts.wpn_fps_smg_thompson_grip = {
		texture_bundle_folder = "pines",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_m1928_b_medium",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_grip",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_thompson_grip_discrete = {
		texture_bundle_folder = "pines",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_m1928_g_discrete",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_grip_discrete",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 2,
			recoil = -1,
			concealment = 1
		}
	}
	self.parts.wpn_fps_smg_thompson_ns_standard = {
		parent = "barrel",
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_m1928_b_medium",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_ns_standard",
		texture_bundle_folder = "pines",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_thompson_o_adapter = {
		texture_bundle_folder = "pines",
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_m1928_b_medium",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_o_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_thompson_stock = {
		texture_bundle_folder = "pines",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m1928_b_medium",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_stock",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_thompson_stock_discrete = {
		texture_bundle_folder = "pines",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m1928_s_discrete",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_stock_discrete",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 3,
			recoil = -1,
			concealment = 1
		}
	}
	self.parts.wpn_fps_smg_thompson_stock_nostock = {
		texture_bundle_folder = "pines",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m1928_s_nostock",
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_fps_smg_thompson_stock_nostock",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = -3,
			concealment = 4
		}
	}
	self.parts.wpn_fps_smg_thompson_barrel.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_barrel"
	self.parts.wpn_fps_smg_thompson_barrel_long.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_barrel_long"
	self.parts.wpn_fps_smg_thompson_barrel_short.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_barrel_short"
	self.parts.wpn_fps_smg_thompson_body.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_body"
	self.parts.wpn_fps_smg_thompson_drummag.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_drummag"
	self.parts.wpn_fps_smg_thompson_fl_adapter.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_fl_adapter"
	self.parts.wpn_fps_smg_thompson_foregrip.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_foregrip"
	self.parts.wpn_fps_smg_thompson_foregrip_discrete.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_foregrip_discrete"
	self.parts.wpn_fps_smg_thompson_grip.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_grip"
	self.parts.wpn_fps_smg_thompson_grip_discrete.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_grip_discrete"
	self.parts.wpn_fps_smg_thompson_ns_standard.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_ns_standard"
	self.parts.wpn_fps_smg_thompson_o_adapter.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_o_adapter"
	self.parts.wpn_fps_smg_thompson_stock.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_stock"
	self.parts.wpn_fps_smg_thompson_stock_discrete.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_stock_discrete"
	self.parts.wpn_fps_smg_thompson_stock_nostock.third_unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928_pts/wpn_third_smg_thompson_stock_nostock"
	self.wpn_fps_smg_thompson = {
		unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928/wpn_fps_smg_thompson",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_thompson_o_adapter"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {"wpn_fps_smg_thompson_fl_adapter"},
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {"wpn_fps_smg_thompson_fl_adapter"},
			wpn_fps_upg_fl_ass_peq15 = {"wpn_fps_smg_thompson_fl_adapter"},
			wpn_fps_upg_fl_ass_laser = {"wpn_fps_smg_thompson_fl_adapter"},
			wpn_fps_upg_fl_ass_utg = {"wpn_fps_smg_thompson_fl_adapter"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_thompson_o_adapter"}
		},
		default_blueprint = {
			"wpn_fps_smg_thompson_barrel",
			"wpn_fps_smg_thompson_body",
			"wpn_fps_smg_thompson_drummag",
			"wpn_fps_smg_thompson_foregrip",
			"wpn_fps_smg_thompson_grip",
			"wpn_fps_smg_thompson_stock",
			"wpn_fps_smg_thompson_ns_standard"
		},
		uses_parts = {
			"wpn_fps_smg_thompson_barrel",
			"wpn_fps_smg_thompson_barrel_long",
			"wpn_fps_smg_thompson_barrel_short",
			"wpn_fps_smg_thompson_body",
			"wpn_fps_smg_thompson_drummag",
			"wpn_fps_smg_thompson_fl_adapter",
			"wpn_fps_smg_thompson_foregrip",
			"wpn_fps_smg_thompson_foregrip_discrete",
			"wpn_fps_smg_thompson_grip",
			"wpn_fps_smg_thompson_grip_discrete",
			"wpn_fps_smg_thompson_ns_standard",
			"wpn_fps_smg_thompson_o_adapter",
			"wpn_fps_smg_thompson_stock",
			"wpn_fps_smg_thompson_stock_discrete",
			"wpn_fps_smg_thompson_stock_nostock",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_thompson_npc = deep_clone(self.wpn_fps_smg_thompson)
	self.wpn_fps_smg_thompson_npc.unit = "units/pd2_dlc_pines/weapons/wpn_fps_smg_m1928/wpn_fps_smg_thompson_npc"
end

function WeaponFactoryTweakData:_init_l85a2()
	self.parts.wpn_fps_ass_l85a2_body_standard = {
		texture_bundle_folder = "character_pack_clover",
		type = "upper_reciever",
		a_obj = "a_body",
		dlc = "character_pack_clover",
		name_id = "bm_wp_l85a2_b_medium",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_ass_l85a2_m_emag = {
		type = "magazine",
		texture_bundle_folder = "character_pack_clover",
		a_obj = "a_m",
		dlc = "character_pack_clover",
		name_id = "bm_wp_l85a2_m_emag",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_m_emag",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 28,
			prefix = "g_bullet_"
		},
		stats = {
			value = 1,
			recoil = 1,
			extra_ammo = 2
		}
	}
	self.parts.wpn_fps_ass_l85a2_fg_medium = {
		texture_bundle_folder = "character_pack_clover",
		dlc = "character_pack_clover",
		type = "foregrip",
		name_id = "bm_wp_l85a2_fg_medium",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_fg_medium",
		a_obj = "a_b",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_l85a2_fg_short = {
		texture_bundle_folder = "character_pack_clover",
		dlc = "character_pack_clover",
		type = "foregrip",
		name_id = "bm_wp_l85a2_fg_short",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_fg_short",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1,
			concealment = 1
		}
	}
	self.parts.wpn_fps_ass_l85a2_b_long = {
		texture_bundle_folder = "character_pack_clover",
		dlc = "character_pack_clover",
		type = "barrel",
		name_id = "bm_wp_l85a2_b_long",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_b_long",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 1,
			concealment = -3
		}
	}
	self.parts.wpn_fps_ass_l85a2_b_medium = {
		texture_bundle_folder = "character_pack_clover",
		dlc = "character_pack_clover",
		type = "barrel",
		name_id = "bm_wp_l85a2_b_medium",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_b_medium",
		a_obj = "a_b",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_l85a2_b_short = {
		texture_bundle_folder = "character_pack_clover",
		dlc = "character_pack_clover",
		type = "barrel",
		name_id = "bm_wp_l85a2_b_short",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_b_short",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = 3
		}
	}
	self.parts.wpn_fps_ass_l85a2_g_standard = {
		texture_bundle_folder = "character_pack_clover",
		dlc = "character_pack_clover",
		type = "grip",
		name_id = "bm_wp_l85a2_b_medium",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_g_standard",
		a_obj = "a_g",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_l85a2_g_worn = {
		texture_bundle_folder = "character_pack_clover",
		dlc = "character_pack_clover",
		type = "grip",
		name_id = "bm_wp_l85a2_g_worn",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_g_worn",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_ass_l85a2_ns_standard = {
		parent = "barrel",
		dlc = "character_pack_clover",
		type = "barrel_ext",
		name_id = "bm_wp_l85a2_b_medium",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_ns_standard",
		texture_bundle_folder = "character_pack_clover",
		a_obj = "a_ns",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_l85a2_o_standard = {
		texture_bundle_folder = "character_pack_clover",
		dlc = "character_pack_clover",
		type = "sight",
		name_id = "bm_wp_l85a2_b_medium",
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2_pts/wpn_fps_ass_l85a2_o_standard",
		a_obj = "a_o",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_ass_l85a2_body_standard.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_body_standard"
	self.parts.wpn_fps_ass_l85a2_m_emag.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_m_emag"
	self.parts.wpn_fps_ass_l85a2_fg_medium.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_fg_medium"
	self.parts.wpn_fps_ass_l85a2_fg_short.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_fg_short"
	self.parts.wpn_fps_ass_l85a2_b_long.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_b_long"
	self.parts.wpn_fps_ass_l85a2_b_medium.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_b_medium"
	self.parts.wpn_fps_ass_l85a2_b_short.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_b_short"
	self.parts.wpn_fps_ass_l85a2_g_standard.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_g_standard"
	self.parts.wpn_fps_ass_l85a2_g_worn.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_g_worn"
	self.parts.wpn_fps_ass_l85a2_ns_standard.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_ns_standard"
	self.parts.wpn_fps_ass_l85a2_o_standard.third_unit = "units/pd2_dlc_clover/weapons/wpn_third_ass_l85a2_pts/wpn_third_ass_l85a2_o_standard"
	self.wpn_fps_ass_l85a2 = {
		unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2/wpn_fps_ass_l85a2",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		},
		adds = {},
		default_blueprint = {
			"wpn_fps_ass_l85a2_body_standard",
			"wpn_fps_m4_uupg_m_std_vanilla",
			"wpn_fps_ass_l85a2_fg_medium",
			"wpn_fps_ass_l85a2_b_medium",
			"wpn_fps_ass_l85a2_g_standard",
			"wpn_fps_ass_l85a2_ns_standard",
			"wpn_fps_ass_l85a2_o_standard"
		},
		uses_parts = {
			"wpn_fps_ass_l85a2_body_standard",
			"wpn_fps_ass_l85a2_fg_medium",
			"wpn_fps_ass_l85a2_fg_short",
			"wpn_fps_ass_l85a2_b_long",
			"wpn_fps_ass_l85a2_b_medium",
			"wpn_fps_ass_l85a2_b_short",
			"wpn_fps_ass_l85a2_g_standard",
			"wpn_fps_ass_l85a2_g_worn",
			"wpn_fps_ass_l85a2_ns_standard",
			"wpn_fps_ass_l85a2_o_standard",
			"wpn_fps_ass_l85a2_m_emag",
			"wpn_fps_m4_uupg_m_std_vanilla",
			"wpn_fps_upg_m4_m_drum",
			"wpn_fps_upg_m4_m_pmag",
			"wpn_fps_upg_m4_m_straight",
			"wpn_fps_upg_m4_m_quad",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_m_l5",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_m4_upg_m_quick",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_l85a2_npc = deep_clone(self.wpn_fps_ass_l85a2)
	self.wpn_fps_ass_l85a2_npc.unit = "units/pd2_dlc_clover/weapons/wpn_fps_ass_l85a2/wpn_fps_ass_l85a2_npc"
end

function WeaponFactoryTweakData:_init_vhs()
	self.parts.wpn_fps_ass_vhs_body = {
		texture_bundle_folder = "character_pack_dragan",
		type = "upper_reciever",
		a_obj = "a_body",
		dlc = "character_pack_dragan",
		name_id = "bm_wp_vhs_body",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_body",
		stats = {value = 1},
		animations = {reload = "reload"},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_ass_vhs_m = {
		texture_bundle_folder = "character_pack_dragan",
		a_obj = "a_m",
		type = "magazine",
		dlc = "character_pack_dragan",
		name_id = "bm_wp_vhs_m",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_m",
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {
			value = 1,
			recoil = 1,
			extra_ammo = 0
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_vhs_ns_vhs = {
		parent = "barrel",
		dlc = "character_pack_dragan",
		type = "barrel_ext",
		name_id = "bm_wp_vhs_ns_vhs",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_ns_vhs",
		texture_bundle_folder = "character_pack_dragan",
		a_obj = "a_ns",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_vhs_ns_vhs_no = {
		parent = "barrel",
		dlc = "character_pack_dragan",
		type = "barrel_ext",
		name_id = "bm_wp_vhs_ns_vhs_no",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_ns_vhs_no",
		texture_bundle_folder = "character_pack_dragan",
		a_obj = "a_ns",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_vhs_b_short = {
		texture_bundle_folder = "character_pack_dragan",
		dlc = "character_pack_dragan",
		type = "barrel",
		name_id = "bm_wp_vhs_b_short",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_b_short",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			concealment = 3,
			recoil = 1,
			value = 1,
			spread = -1
		}
	}
	self.parts.wpn_fps_ass_vhs_b_silenced = {
		type = "barrel",
		texture_bundle_folder = "character_pack_dragan",
		a_obj = "a_b",
		sub_type = "silencer",
		dlc = "character_pack_dragan",
		name_id = "bm_wp_vhs_b_silenced",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_b_silenced",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			damage = -1,
			suppression = 12,
			value = 2,
			recoil = 3
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"},
		forbids = {
			"wpn_fps_m4_uupg_fg_rail_ext",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ass_ns_battle"
		},
		override = {wpn_fps_ass_vhs_ns_vhs = {
			third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_ns_vhs_no",
			unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_ns_vhs_no"
		}}
	}
	self.parts.wpn_fps_ass_vhs_b_sniper = {
		type = "barrel",
		texture_bundle_folder = "character_pack_dragan",
		a_obj = "a_b",
		dlc = "character_pack_dragan",
		name_id = "bm_wp_vhs_b_sniper",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_b_sniper",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 2,
			value = 1,
			concealment = -2
		},
		override = {wpn_fps_ass_vhs_ns_vhs = {
			third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_ns_vhs_no",
			unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_ns_vhs_no"
		}}
	}
	self.parts.wpn_fps_ass_vhs_b_standard = {
		texture_bundle_folder = "character_pack_dragan",
		dlc = "character_pack_dragan",
		type = "barrel",
		name_id = "bm_wp_vhs_b_standard",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_b_standard",
		a_obj = "a_b",
		stats = {value = 1},
		override = {wpn_fps_ass_vhs_ns_vhs_no = {
			third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_third_ass_vhs_ns_vhs",
			unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_ns_vhs"
		}}
	}
	self.parts.wpn_fps_ass_vhs_o_standard = {
		texture_bundle_folder = "character_pack_dragan",
		dlc = "character_pack_dragan",
		type = "sight",
		name_id = "bm_wp_vhs_o_standard",
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_o_standard",
		a_obj = "a_body",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_ass_vhs_body.third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_third_ass_vhs_body"
	self.parts.wpn_fps_ass_vhs_m.third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_third_ass_vhs_m"
	self.parts.wpn_fps_ass_vhs_b_short.third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_third_ass_vhs_b_short"
	self.parts.wpn_fps_ass_vhs_b_silenced.third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_third_ass_vhs_b_silenced"
	self.parts.wpn_fps_ass_vhs_b_sniper.third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_third_ass_vhs_b_sniper"
	self.parts.wpn_fps_ass_vhs_b_standard.third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_third_ass_vhs_b_standard"
	self.parts.wpn_fps_ass_vhs_o_standard.third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_third_ass_vhs_o_standard"
	self.parts.wpn_fps_ass_vhs_ns_vhs.third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_third_ass_vhs_ns_vhs"
	self.wpn_fps_ass_vhs = {
		unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs/wpn_fps_ass_vhs",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		adds = {},
		forbids = {"wpn_fps_addon_ris"},
		default_blueprint = {
			"wpn_fps_ass_vhs_body",
			"wpn_fps_ass_vhs_m",
			"wpn_fps_ass_vhs_b_standard",
			"wpn_fps_ass_vhs_o_standard",
			"wpn_fps_ass_vhs_ns_vhs"
		},
		uses_parts = {
			"wpn_fps_ass_vhs_body",
			"wpn_fps_ass_vhs_m",
			"wpn_fps_ass_vhs_b_short",
			"wpn_fps_ass_vhs_b_silenced",
			"wpn_fps_ass_vhs_b_sniper",
			"wpn_fps_ass_vhs_b_standard",
			"wpn_fps_ass_vhs_o_standard",
			"wpn_fps_ass_vhs_ns_vhs",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_vhs_npc = deep_clone(self.wpn_fps_ass_vhs)
	self.wpn_fps_ass_vhs_npc.unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs/wpn_fps_ass_vhs_npc"
end

function WeaponFactoryTweakData:_init_hs2000()
	self.parts.wpn_fps_pis_hs2000_sl_standard = {
		texture_bundle_folder = "the_bomb",
		a_obj = "a_sl",
		type = "slide",
		name_id = "bm_wp_hs2000_sl_standard",
		unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_fps_pis_hs2000_sl_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_hs2000_sl_custom = {
		texture_bundle_folder = "the_bomb",
		type = "slide",
		a_obj = "a_sl",
		dlc = "the_bomb",
		name_id = "bm_wp_hs2000_sl_custom",
		unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_fps_pis_hs2000_sl_custom",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread_moving = 1,
			damage = 2,
			suppression = -2,
			value = 4,
			recoil = 1
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_hs2000_sl_long = {
		texture_bundle_folder = "the_bomb",
		type = "slide",
		a_obj = "a_sl",
		dlc = "the_bomb",
		name_id = "bm_wp_hs2000_sl_long",
		unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_fps_pis_hs2000_sl_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 6,
			concealment = -3,
			damage = 1,
			spread_moving = -3,
			spread = 2,
			recoil = 1
		},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		},
		stance_mod = {wpn_fps_pis_hs2000 = {translation = Vector3(0, 0, -0.25)}},
		override = {wpn_fps_upg_o_rmr = {stance_mod = {wpn_fps_pis_hs2000 = {translation = Vector3(0, 0, -0.5)}}}}
	}
	self.parts.wpn_fps_pis_hs2000_body_standard = {
		texture_bundle_folder = "the_bomb",
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_hs2000_body_standard",
		unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_fps_pis_hs2000_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_hs2000_m_standard = {
		texture_bundle_folder = "the_bomb",
		type = "magazine",
		name_id = "bm_wp_hs2000_m_standard",
		unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_fps_pis_hs2000_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_hs2000_m_extended = {
		texture_bundle_folder = "the_bomb",
		a_obj = "a_m",
		type = "magazine",
		dlc = "the_bomb",
		name_id = "bm_wp_hs2000_m_extended",
		unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_fps_pis_hs2000_m_extended",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 4,
			spread_moving = -2,
			value = 1
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_hs2000_sl_standard.third_unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_third_pis_hs2000_sl_standard"
	self.parts.wpn_fps_pis_hs2000_sl_custom.third_unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_third_pis_hs2000_sl_custom"
	self.parts.wpn_fps_pis_hs2000_sl_long.third_unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_third_pis_hs2000_sl_long"
	self.parts.wpn_fps_pis_hs2000_body_standard.third_unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_third_pis_hs2000_body_standard"
	self.parts.wpn_fps_pis_hs2000_m_standard.third_unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_third_pis_hs2000_m_standard"
	self.parts.wpn_fps_pis_hs2000_m_extended.third_unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000_pts/wpn_third_pis_hs2000_m_extended"
	self.wpn_fps_pis_hs2000 = {
		unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000/wpn_fps_pis_hs2000",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {wpn_fps_upg_o_rmr = {parent = "slide"}},
		default_blueprint = {
			"wpn_fps_pis_hs2000_body_standard",
			"wpn_fps_pis_hs2000_m_standard",
			"wpn_fps_pis_hs2000_sl_standard"
		},
		uses_parts = {
			"wpn_fps_pis_hs2000_body_standard",
			"wpn_fps_pis_hs2000_m_standard",
			"wpn_fps_pis_hs2000_m_extended",
			"wpn_fps_pis_hs2000_sl_standard",
			"wpn_fps_pis_hs2000_sl_custom",
			"wpn_fps_pis_hs2000_sl_long",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_hs2000_npc = deep_clone(self.wpn_fps_pis_hs2000)
	self.wpn_fps_pis_hs2000_npc.unit = "units/pd2_dlc_the_bomb/weapons/wpn_fps_pis_hs2000/wpn_fps_pis_hs2000_npc"
end

function WeaponFactoryTweakData:_init_modpack_m4_ak()
	self.parts.wpn_fps_upg_ass_ak_b_zastava = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		a_obj = "a_b",
		type = "barrel",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ass_ak_b_zastava",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ass_ak_b_zastava/wpn_fps_upg_ass_ak_b_zastava",
		pcs = {},
		stats = {
			spread = 2,
			total_ammo_mod = -6,
			damage = 80,
			concealment = -4,
			value = 1,
			recoil = -3
		},
		custom_stats = {
			ammo_pickup_max_mul = 0.5,
			ammo_pickup_min_mul = 0.5
		},
		sound_switch = {suppressed = "regular_b"}
	}
	self.parts.wpn_fps_upg_ak_b_ak105 = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "barrel",
		a_obj = "a_b",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ak_b_ak105",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ak_b_ak105/wpn_fps_upg_ak_b_ak105",
		pcs = {},
		stats = {
			value = 1,
			concealment = 1,
			damage = 2
		},
		adds = {"wpn_fps_upg_ak_ns_ak105"},
		forbids = {"wpn_fps_ammo_type"},
		override = {
			wpn_fps_upg_ns_ass_smg_large = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ns_ass_smg_medium = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ns_ass_smg_small = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ns_ass_smg_firepig = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ns_ass_smg_stubby = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ns_ass_smg_tank = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ass_ns_jprifles = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ass_ns_linear = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ass_ns_surefire = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ass_ns_battle = {forbids = {"wpn_fps_upg_ak_ns_ak105"}},
			wpn_fps_upg_ns_ass_pbs1 = {forbids = {"wpn_fps_upg_ak_ns_ak105"}}
		}
	}
	self.parts.wpn_fps_upg_ak_ns_ak105 = {
		parent = "barrel",
		dlc = "akm4_pack",
		type = "barrel_ext",
		name_id = "bm_wp_upg_ak_ns_ak105",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ak_b_ak105/wpn_fps_upg_ak_ns_ak105",
		texture_bundle_folder = "dlc_akm4",
		a_obj = "a_ns",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_ak_fg_krebs = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ak_fg_krebs",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ak_fg_krebs/wpn_fps_upg_ak_fg_krebs",
		pcs = {},
		stats = {
			spread = 2,
			value = 1,
			concealment = 3
		},
		forbids = {
			"wpn_fps_ak_extra_ris",
			"wpn_fps_addon_ris"
		},
		override = {
			wpn_fps_upg_o_specter = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_aimpoint = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_aimpoint_2 = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_docter = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_eotech = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_t1micro = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_cmore = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_acog = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 6, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 6, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 6, -3.8)}
				}
			},
			wpn_fps_upg_o_cs = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_eotech_xps = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_reflex = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_rx01 = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_rx30 = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_spot = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_xpsg33_magnifier = {stance_mod = {
				wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
				wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
				wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
			}}
		}
	}
	self.parts.wpn_fps_upg_ak_fg_trax = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ak_fg_trax",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ak_fg_trax/wpn_fps_upg_ak_fg_trax",
		pcs = {},
		stats = {
			spread = 2,
			recoil = 2,
			value = 1,
			concealment = -2
		},
		forbids = {
			"wpn_fps_ak_extra_ris",
			"wpn_fps_addon_ris"
		},
		override = {
			wpn_fps_upg_o_specter = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_aimpoint = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_aimpoint_2 = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_docter = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_eotech = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_t1micro = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_cmore = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_acog = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 6, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 6, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 6, -3.8)}
				}
			},
			wpn_fps_upg_o_cs = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_eotech_xps = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_reflex = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_rx01 = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_rx30 = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_spot = {
				a_obj = "a_o_krebs",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
				}
			},
			wpn_fps_upg_o_xpsg33_magnifier = {stance_mod = {
				wpn_fps_ass_74 = {translation = Vector3(0, 0, -3.8)},
				wpn_fps_ass_akm = {translation = Vector3(0, 0, -3.8)},
				wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -3.8)}
			}}
		}
	}
	self.parts.wpn_fps_upg_ak_fg_zenit = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ak_fg_zenit",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ak_fg_zenit/wpn_fps_upg_ak_fg_zenit",
		pcs = {},
		stats = {
			value = 1,
			recoil = 1
		},
		forbids = {
			"wpn_fps_ak_extra_ris",
			"wpn_fps_addon_ris"
		},
		override = {
			wpn_fps_upg_o_specter = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_aimpoint = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_aimpoint_2 = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_docter = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_eotech = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_t1micro = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_cmore = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_acog = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 6, -3.3)}}
			},
			wpn_fps_upg_o_cs = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_eotech_xps = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_reflex = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_rx01 = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_rx30 = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_spot = {
				a_obj = "a_o_zenit",
				stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}
			},
			wpn_fps_upg_o_xpsg33_magnifier = {stance_mod = {wpn_fps_smg_akmsu = {translation = Vector3(0, 0, -3.3)}}}
		}
	}
	self.parts.wpn_fps_upg_ak_g_rk3 = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "grip",
		a_obj = "a_g",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ak_g_rk3",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ak_g_rk3/wpn_fps_upg_ak_g_rk3",
		pcs = {},
		stats = {
			spread = 1,
			value = 1,
			concealment = 1
		},
		forbids = {"wpn_upg_ak_g_standard"}
	}
	self.parts.wpn_fps_upg_ak_m_uspalm = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		a_obj = "a_m",
		type = "magazine",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ak_m_uspalm",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ak_m_uspalm/wpn_fps_upg_ak_m_uspalm",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			value = 1,
			recoil = 1,
			concealment = 1,
			extra_ammo = 2
		}
	}
	self.parts.wpn_fps_upg_ak_s_solidstock = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "stock",
		a_obj = "a_s",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ak_s_solidstock",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ak_s_solidstock/wpn_fps_upg_ak_s_solidstock",
		pcs = {},
		stats = {
			value = 1,
			recoil = 3,
			concealment = -4,
			spread = 1
		},
		adds = {"wpn_upg_ak_g_standard"}
	}
	self.parts.wpn_fps_upg_ns_ass_pbs1 = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		sub_type = "silencer",
		a_obj = "a_ns",
		dlc = "akm4_pack",
		type = "barrel_ext",
		parent = "barrel",
		name_id = "bm_wp_upg_ns_ass_pbs1",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ns_ass_pbs1/wpn_fps_upg_ns_ass_pbs1",
		pcs = {},
		stats = {
			alert_size = 12,
			spread = 0,
			suppression = 12,
			value = 1,
			recoil = 1,
			concealment = -5,
			damage = -0
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_upg_o_ak_scopemount = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "extra",
		a_obj = "a_g",
		depends_on = "sight",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_o_ak_scopemount",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_o_ak_scopemount/wpn_fps_upg_o_ak_scopemount",
		pcs = {},
		stats = {
			value = 1,
			recoil = 1,
			concealment = -1
		},
		forbids = {"wpn_fps_ak_extra_ris"},
		override = {
			wpn_fps_upg_ak_fg_zenit = {override = {}},
			wpn_fps_upg_ak_fg_trax = {override = {}},
			wpn_fps_upg_ak_fg_krebs = {override = {}},
			wpn_fps_smg_akmsu_fg_standard = {override = {}},
			wpn_upg_ak_fg_standard_gold = {override = {}},
			wpn_upg_ak_fg_standard = {override = {}},
			wpn_upg_saiga_fg_standard = {override = {}},
			wpn_fps_upg_o_specter = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_aimpoint = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_aimpoint_2 = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_docter = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_eotech = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_t1micro = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_cmore = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_cs = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_eotech_xps = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_reflex = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_rx01 = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_rx30 = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_acog = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 6, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 6, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 6, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 6, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 6, -4.35)}
				}
			},
			wpn_fps_upg_o_45rds = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {
						translation = Vector3(-2.01, 0, -14.9),
						rotation = Rotation(0, 0, -45)
					},
					wpn_fps_ass_akm = {
						translation = Vector3(-2.01, 0, -14.9),
						rotation = Rotation(0, 0, -45)
					},
					wpn_fps_ass_akm_gold = {
						translation = Vector3(-2.01, 0, -14.9),
						rotation = Rotation(0, 0, -45)
					}
				}
			},
			wpn_fps_upg_o_spot = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
					wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
				}
			},
			wpn_fps_upg_o_xpsg33_magnifier = {stance_mod = {
				wpn_fps_ass_74 = {translation = Vector3(0, 0, -4.6)},
				wpn_fps_ass_akm = {translation = Vector3(0, 0, -4.6)},
				wpn_fps_ass_akm_gold = {translation = Vector3(0, 0, -4.6)},
				wpn_fps_shot_saiga = {translation = Vector3(0, 0, -4.6)},
				wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 0, -4.36)}
			}},
			wpn_fps_upg_o_45rds_v2 = {
				a_obj = "a_o_sm",
				stance_mod = {
					wpn_fps_ass_74 = {
						translation = Vector3(-2.01, 0, -14.9),
						rotation = Rotation(0, 0, -45)
					},
					wpn_fps_ass_akm = {
						translation = Vector3(-2.01, 0, -14.9),
						rotation = Rotation(0, 0, -45)
					},
					wpn_fps_ass_akm_gold = {
						translation = Vector3(-2.01, 0, -14.9),
						rotation = Rotation(0, 0, -45)
					}
				}
			}
		}
	}
	self.parts.wpn_fps_upg_ass_m4_fg_lvoa = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ass_m4_fg_lvoa",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ass_m4_fg_lvoa/wpn_fps_upg_ass_m4_fg_lvoa",
		pcs = {},
		stats = {
			spread = -2,
			recoil = 4,
			damage = 2,
			value = 1
		}
	}
	self.parts.wpn_fps_upg_ass_m4_fg_moe = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ass_m4_fg_moe",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ass_m4_fg_moe/wpn_fps_upg_ass_m4_fg_moe",
		pcs = {},
		stats = {
			value = 1,
			spread = 1,
			damage = 1,
			concealment = 2,
			recoil = 2
		},
		override = {wpn_fps_m4_uupg_o_flipup = {
			third_unit = "units/payday2/weapons/wpn_third_ass_m4_pts/wpn_third_m4_uupg_o_flipup_emo",
			unit = "units/payday2/weapons/wpn_fps_ass_m4_pts/wpn_fps_m4_uupg_o_flipup_emo"
		}}
	}
	self.parts.wpn_fps_upg_ass_m16_fg_stag = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ass_m16_fg_stag",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ass_m16_fg_stag/wpn_fps_upg_ass_m16_fg_stag",
		pcs = {},
		stats = {
			value = 1,
			recoil = 2,
			concealment = -3
		},
		override = {wpn_fps_ass_m16_os_frontsight = {a_obj = "a_os_stag"}}
	}
	self.parts.wpn_fps_upg_smg_olympic_fg_lr300 = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_smg_olympic_fg_lr300",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_smg_olympic_fg_lr300/wpn_fps_upg_smg_olympic_fg_lr300",
		pcs = {},
		stats = {
			value = 1,
			recoil = 2
		}
	}
	self.parts.wpn_fps_upg_ass_m4_upper_reciever_ballos = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "upper_reciever",
		a_obj = "a_body",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ass_m4_upper_reciever_ballos",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ass_m4_upper_reciever_ballos/wpn_fps_upg_ass_m4_upper_reciever_ballos",
		pcs = {},
		stats = {
			spread = 1,
			recoil = 2,
			value = 1
		},
		override = {wpn_fps_m4_uupg_draghandle = {unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_m4_uupg_draghandle_ballos/wpn_fps_m4_uupg_draghandle_ballos"}}
	}
	self.parts.wpn_fps_upg_ass_m4_upper_reciever_core = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "upper_reciever",
		a_obj = "a_body",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ass_m4_upper_reciever_core",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ass_m4_upper_reciever_core/wpn_fps_upg_ass_m4_upper_reciever_core",
		pcs = {},
		stats = {
			spread = -2,
			value = 1,
			damage = 2
		},
		override = {wpn_fps_m4_uupg_draghandle = {unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_m4_uupg_draghandle_core/wpn_fps_m4_uupg_draghandle_core"}}
	}
	self.parts.wpn_fps_m4_uupg_draghandle_ballos = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_m4_uupg_draghandle",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_m4_uupg_draghandle_ballos/wpn_fps_m4_uupg_draghandle_ballos",
		stats = {value = 1}
	}
	self.parts.wpn_fps_m4_uupg_draghandle_core = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_m4_uupg_draghandle",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_m4_uupg_draghandle_core/wpn_fps_m4_uupg_draghandle_core",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_ass_m4_lower_reciever_core = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "lower_reciever",
		a_obj = "a_body",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ass_m4_lower_reciever_core",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ass_m4_lower_reciever_core/wpn_fps_upg_ass_m4_lower_reciever_core",
		pcs = {},
		stats = {
			value = 1,
			damage = 2
		}
	}
	self.parts.wpn_fps_upg_m4_m_l5 = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		a_obj = "a_m",
		type = "magazine",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_m4_m_l5",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_m4_m_l5/wpn_fps_upg_m4_m_l5",
		pcs = {},
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 2,
			recoil = 1,
			value = 1
		}
	}
	self.parts.wpn_fps_upg_m4_s_ubr = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		type = "stock",
		a_obj = "a_s",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_m4_s_ubr",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_m4_s_ubr/wpn_fps_upg_m4_s_ubr",
		pcs = {},
		stats = {
			spread = 1,
			recoil = 1,
			value = 1,
			concealment = -2
		},
		adds_type = {"stock_adapter"},
		forbids = {"wpn_fps_shot_r870_ris_special"}
	}
	self.parts.wpn_fps_upg_ass_m4_b_beowulf = {
		is_a_unlockable = true,
		texture_bundle_folder = "dlc_akm4",
		a_obj = "a_b",
		type = "barrel",
		dlc = "akm4_pack",
		name_id = "bm_wp_upg_ass_m4_b_beowulf",
		unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_fps_upg_ass_m4_b_beowulf/wpn_fps_upg_ass_m4_b_beowulf",
		pcs = {},
		stats = {
			spread = 4,
			total_ammo_mod = -12,
			damage = 120,
			concealment = -4,
			value = 1,
			recoil = -10
		},
		custom_stats = {
			ammo_pickup_max_mul = 0.5,
			ammo_pickup_min_mul = 0.5
		},
		forbids = {"wpn_fps_ammo_type"},
		sound_switch = {suppressed = "regular_b"}
	}
	self.parts.wpn_fps_upg_ass_ak_b_zastava.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ass_ak_b_zastava/wpn_third_upg_ass_ak_b_zastava"
	self.parts.wpn_fps_upg_ak_b_ak105.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ak_b_ak105/wpn_third_upg_ak_b_ak105"
	self.parts.wpn_fps_upg_ak_ns_ak105.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ak_b_ak105/wpn_third_upg_ak_ns_ak105"
	self.parts.wpn_fps_upg_ak_fg_krebs.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ak_fg_krebs/wpn_third_upg_ak_fg_krebs"
	self.parts.wpn_fps_upg_ak_fg_trax.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ak_fg_trax/wpn_third_upg_ak_fg_trax"
	self.parts.wpn_fps_upg_ak_fg_zenit.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ak_fg_zenit/wpn_third_upg_ak_fg_zenit"
	self.parts.wpn_fps_upg_ak_g_rk3.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ak_g_rk3/wpn_third_upg_ak_g_rk3"
	self.parts.wpn_fps_upg_ak_m_uspalm.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ak_m_uspalm/wpn_third_upg_ak_m_uspalm"
	self.parts.wpn_fps_upg_ak_s_solidstock.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ak_s_solidstock/wpn_third_upg_ak_s_solidstock"
	self.parts.wpn_fps_upg_ns_ass_pbs1.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ns_ass_pbs1/wpn_third_upg_ns_ass_pbs1"
	self.parts.wpn_fps_upg_o_ak_scopemount.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_o_ak_scopemount/wpn_third_upg_o_ak_scopemount"
	self.parts.wpn_fps_upg_ass_m4_fg_lvoa.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ass_m4_fg_lvoa/wpn_third_upg_ass_m4_fg_lvoa"
	self.parts.wpn_fps_upg_ass_m4_fg_moe.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ass_m4_fg_moe/wpn_third_upg_ass_m4_fg_moe"
	self.parts.wpn_fps_upg_ass_m16_fg_stag.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ass_m16_fg_stag/wpn_third_upg_ass_m16_fg_stag"
	self.parts.wpn_fps_upg_smg_olympic_fg_lr300.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_smg_olympic_fg_lr300/wpn_third_upg_smg_olympic_fg_lr300"
	self.parts.wpn_fps_upg_ass_m4_upper_reciever_ballos.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ass_m4_upper_reciever_ballos/wpn_third_upg_ass_m4_upper_reciever_ballos"
	self.parts.wpn_fps_upg_ass_m4_upper_reciever_core.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ass_m4_upper_reciever_core/wpn_third_upg_ass_m4_upper_reciever_core"
	self.parts.wpn_fps_m4_uupg_draghandle_ballos.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_m4_uupg_draghandle_ballos/wpn_third_m4_uupg_draghandle_ballos"
	self.parts.wpn_fps_m4_uupg_draghandle_core.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_m4_uupg_draghandle_core/wpn_third_m4_uupg_draghandle_core"
	self.parts.wpn_fps_upg_ass_m4_lower_reciever_core.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ass_m4_lower_reciever_core/wpn_third_upg_ass_m4_lower_reciever_core"
	self.parts.wpn_fps_upg_m4_m_l5.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_m4_m_l5/wpn_third_upg_m4_m_l5"
	self.parts.wpn_fps_upg_m4_s_ubr.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_m4_s_ubr/wpn_third_upg_m4_s_ubr"
	self.parts.wpn_fps_upg_ass_m4_b_beowulf.third_unit = "units/pd2_dlc_akm4_modpack/weapons/wpn_third_upg_ass_m4_b_beowulf/wpn_third_upg_ass_m4_b_beowulf"
end

function WeaponFactoryTweakData:_init_m134()
	self.parts.wpn_fps_lmg_m134_body = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_m134_body",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_fps_lmg_m134_body",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_m134_body_upper = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_m134_body_upper",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_fps_lmg_m134_body_upper",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_m134_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m134_m_standard",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_fps_lmg_m134_m_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_m134_body_upper_light = {
		a_obj = "a_body",
		texture_bundle_folder = "dlc_pack_overkill",
		type = "extra",
		dlc = "overkill_pack",
		name_id = "bm_wp_m134_body_upper_light",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_fps_lmg_m134_body_upper_light",
		has_description = false,
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			total_ammo_mod = -8,
			spread = -1,
			concealment = 3,
			recoil = 3
		}
	}
	self.parts.wpn_fps_lmg_m134_barrel = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m134_barrel",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_fps_lmg_m134_barrel",
		stats = {value = 1},
		animations = {
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_lmg_m134_barrel_short = {
		texture_bundle_folder = "dlc_pack_overkill",
		a_obj = "a_b",
		type = "barrel",
		dlc = "overkill_pack",
		name_id = "bm_wp_m134_barrel_short",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_fps_lmg_m134_barrel_short",
		has_description = false,
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			recoil = 3,
			value = 1,
			concealment = 3
		},
		animations = {
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_lmg_m134_barrel_extreme = {
		texture_bundle_folder = "dlc_pack_overkill",
		type = "barrel",
		a_obj = "a_b",
		dlc = "overkill_pack",
		name_id = "bm_wp_m134_barrel_extreme",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_fps_lmg_m134_barrel_extreme",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			recoil = -3,
			value = 1,
			concealment = -3
		},
		animations = {
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_lmg_m134_body.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_third_lmg_m134_body"
	self.parts.wpn_fps_lmg_m134_body_upper.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_third_lmg_m134_body_upper"
	self.parts.wpn_fps_lmg_m134_body_upper_light.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_third_lmg_m134_body_upper_light"
	self.parts.wpn_fps_lmg_m134_m_standard.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_third_lmg_m134_m_standard"
	self.parts.wpn_fps_lmg_m134_barrel.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_third_lmg_m134_barrel"
	self.parts.wpn_fps_lmg_m134_barrel_short.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_third_lmg_m134_barrel_short"
	self.parts.wpn_fps_lmg_m134_barrel_extreme.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134_pts/wpn_third_lmg_m134_barrel_extreme"
	self.wpn_fps_lmg_m134 = {
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134/wpn_fps_lmg_m134",
		animations = {
			reload_not_empty = "reload",
			reload = "reload"
		},
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		default_blueprint = {
			"wpn_fps_lmg_m134_body",
			"wpn_fps_lmg_m134_body_upper",
			"wpn_fps_lmg_m134_m_standard",
			"wpn_fps_lmg_m134_barrel"
		},
		uses_parts = {
			"wpn_fps_lmg_m134_body",
			"wpn_fps_lmg_m134_body_upper",
			"wpn_fps_lmg_m134_body_upper_light",
			"wpn_fps_lmg_m134_m_standard",
			"wpn_fps_lmg_m134_barrel",
			"wpn_fps_lmg_m134_barrel_short",
			"wpn_fps_lmg_m134_barrel_extreme",
			"wpn_fps_lmg_m134_barrel_legendary",
			"wpn_fps_lmg_m134_body_upper_spikey",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg"
		}
	}
	self.wpn_fps_lmg_m134_npc = deep_clone(self.wpn_fps_lmg_m134)
	self.wpn_fps_lmg_m134_npc.unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_lmg_m134/wpn_fps_lmg_m134_npc"
end

function WeaponFactoryTweakData:_init_rpg7()
	self.parts.wpn_fps_rpg7_body = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_rpg7_body",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_rpg7_pts/wpn_fps_rpg7_body",
		stats = {value = 1},
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_rpg7_m_rocket = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_rpg7_m_rocket",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_rpg7_pts/wpn_fps_rpg7_m_rocket",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_rpg7_barrel = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_rpg7_barrel",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_rpg7_pts/wpn_fps_rpg7_barrel",
		stats = {value = 1}
	}
	self.parts.wpn_fps_rpg7_sight = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_rpg7_sight",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_rpg7_pts/wpn_fps_rpg7_sight",
		stats = {value = 1},
		stance_mod = {wpn_fps_rpg7 = {
			translation = Vector3(0.2, 0, -0.8),
			rotation = Rotation(0, 0, -5)
		}},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_rpg7_sight_adapter = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_rpg7_sight_adapter",
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_rpg7_pts/wpn_fps_rpg7_sight_adapter",
		stats = {value = 1},
		stance_mod = {wpn_fps_rpg7 = {
			translation = Vector3(0, 0, -2.25),
			rotation = Rotation(0, 0, 0)
		}}
	}
	self.parts.wpn_fps_rpg7_body.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_third_rpg7_pts/wpn_third_rpg7_body"
	self.parts.wpn_fps_rpg7_m_rocket.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_third_rpg7_pts/wpn_third_rpg7_m_rocket"
	self.parts.wpn_fps_rpg7_sight.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_third_rpg7_pts/wpn_third_rpg7_sight"
	self.parts.wpn_fps_rpg7_sight_adapter.third_unit = "units/pd2_dlc_overkill_pack/weapons/wpn_third_rpg7_pts/wpn_third_rpg7_sight_adapter"
	self.wpn_fps_rpg7 = {
		unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_rpg7/wpn_fps_rpg7",
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_docter = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_eotech = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_cmore = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_acog = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_cs = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_reflex = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_rpg7_sight_adapter"},
			wpn_fps_upg_o_spot = {"wpn_fps_rpg7_sight_adapter"}
		},
		default_blueprint = {
			"wpn_fps_rpg7_body",
			"wpn_fps_rpg7_m_rocket",
			"wpn_fps_rpg7_barrel",
			"wpn_fps_rpg7_sight"
		},
		uses_parts = {
			"wpn_fps_rpg7_body",
			"wpn_fps_rpg7_m_rocket",
			"wpn_fps_rpg7_barrel",
			"wpn_fps_rpg7_sight",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_rpg7_m_grinclown",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_rpg7_npc = deep_clone(self.wpn_fps_rpg7)
	self.wpn_fps_rpg7_npc.unit = "units/pd2_dlc_overkill_pack/weapons/wpn_fps_rpg7/wpn_fps_rpg7_npc"
end

function WeaponFactoryTweakData:_init_cobray()
	self.parts.wpn_fps_smg_cobray_body_lower = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_body_lower",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_cobray_body_lower_jacket = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_body_lower_jacket",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_cobray_body_upper = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_body_upper",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_cobray_body_upper_jacket = {
		is_a_unlockable = true,
		texture_bundle_folder = "hlm2",
		type = "upper_reciever",
		a_obj = "a_body",
		dlc = "hlm2_deluxe",
		name_id = "bm_wp_cobray_body_upper_jacket",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_body_upper_jacket",
		pcs = {},
		stats = {
			value = 1,
			recoil = 5,
			damage = 1,
			concealment = -3
		},
		override = {wpn_fps_smg_cobray_body_lower = {
			third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_body_lower_jacket",
			unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_body_lower_jacket"
		}}
	}
	self.parts.wpn_fps_smg_cobray_bolt = {
		a_obj = "a_bolt",
		type = "extra",
		name_id = "bm_wp_cobray_bolt",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_bolt",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_cobray_barrel = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_cobray_barrel",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_barrel",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_cobray_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_cobray_m_mag",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_m_standard",
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_cobray_ns_barrelextension = {
		type = "barrel_ext",
		texture_bundle_folder = "hlm2",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "hlm2_deluxe",
		name_id = "bm_wp_cobray_ns_barrelext",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_ns_barrelextension",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = -2,
			damage = 2,
			spread = 2,
			recoil = -2
		}
	}
	self.parts.wpn_fps_smg_cobray_ns_silencer = {
		a_obj = "a_ns",
		texture_bundle_folder = "hlm2",
		sub_type = "silencer",
		type = "barrel_ext",
		dlc = "hlm2_deluxe",
		parent = "barrel",
		name_id = "bm_wp_cobray_ns_silencer",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_ns_silencer",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread = 0,
			damage = -3,
			suppression = 12,
			value = 1,
			recoil = 1,
			concealment = -1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_smg_cobray_s_m4adapter = {
		a_obj = "a_s",
		type = "extra",
		name_id = "bm_wp_cobray_s_m4_adapter",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_s_m4adapter",
		stats = {value = 1},
		stance_mod = {wpn_fps_smg_cobray = {
			translation = Vector3(0, -10, 0),
			rotation = Rotation(0, 0, 0)
		}}
	}
	self.parts.wpn_fps_smg_cobray_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_cobray_s_standard",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_cobray_o_adapter = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_cobray_o_adapter",
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_fps_smg_cobray_o_adapter",
		stats = {value = 1},
		stance_mod = {wpn_fps_smg_cobray = {translation = Vector3(0, -14, -4.8)}}
	}
	self.parts.wpn_fps_smg_cobray_body_lower.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_body_lower"
	self.parts.wpn_fps_smg_cobray_body_lower_jacket.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_body_lower_jacket"
	self.parts.wpn_fps_smg_cobray_body_upper.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_body_upper"
	self.parts.wpn_fps_smg_cobray_body_upper_jacket.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_body_upper_jacket"
	self.parts.wpn_fps_smg_cobray_bolt.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_bolt"
	self.parts.wpn_fps_smg_cobray_barrel.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_barrel"
	self.parts.wpn_fps_smg_cobray_m_standard.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_m_standard"
	self.parts.wpn_fps_smg_cobray_ns_barrelextension.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_ns_barrelextension"
	self.parts.wpn_fps_smg_cobray_ns_silencer.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_ns_silencer"
	self.parts.wpn_fps_smg_cobray_s_m4adapter.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_s_m4adapter"
	self.parts.wpn_fps_smg_cobray_s_standard.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_s_standard"
	self.parts.wpn_fps_smg_cobray_o_adapter.third_unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray_pts/wpn_third_smg_cobray_o_adapter"
	self.wpn_fps_smg_cobray = {
		unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray/wpn_fps_smg_cobray",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_cobray_o_adapter"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_cobray_o_adapter"}
		},
		stock_adapter = "wpn_fps_smg_cobray_s_m4adapter",
		default_blueprint = {
			"wpn_fps_smg_cobray_body_lower",
			"wpn_fps_smg_cobray_body_upper",
			"wpn_fps_smg_cobray_bolt",
			"wpn_fps_smg_cobray_m_standard",
			"wpn_fps_smg_cobray_s_standard",
			"wpn_fps_smg_cobray_barrel"
		},
		uses_parts = {
			"wpn_fps_smg_cobray_body_lower",
			"wpn_fps_smg_cobray_body_upper",
			"wpn_fps_smg_cobray_body_lower_jacket",
			"wpn_fps_smg_cobray_body_upper_jacket",
			"wpn_fps_smg_cobray_bolt",
			"wpn_fps_smg_cobray_m_standard",
			"wpn_fps_smg_cobray_ns_barrelextension",
			"wpn_fps_smg_cobray_ns_silencer",
			"wpn_fps_smg_cobray_s_m4adapter",
			"wpn_fps_smg_cobray_s_standard",
			"wpn_fps_smg_cobray_barrel",
			"wpn_fps_smg_cobray_o_adapter",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_snp_tti_s_vltor"
		}
	}
	self.wpn_fps_smg_cobray_npc = deep_clone(self.wpn_fps_smg_cobray)
	self.wpn_fps_smg_cobray_npc.unit = "units/pd2_dlc_hotline2/weapons/wpn_fps_smg_cobray/wpn_fps_smg_cobray_npc"

	table.insert(self.wpn_fps_smg_mac10.uses_parts, "wpn_fps_smg_cobray_ns_barrelextension")
	table.insert(self.wpn_fps_smg_mac10.uses_parts, "wpn_fps_smg_cobray_ns_silencer")
end

function WeaponFactoryTweakData:_init_b682()
	self.parts.wpn_fps_shot_b682_b_short = {
		texture_bundle_folder = "character_pack_bonnie",
		type = "barrel",
		a_obj = "a_b",
		dlc = "pd2_clan",
		name_id = "bm_wp_b682_b_short",
		unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_fps_shot_b682_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -4,
			recoil = -3,
			value = 1,
			concealment = 10
		},
		sound_switch = {suppressed = "regular_b"},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_shot_b682_b_long = {
		texture_bundle_folder = "character_pack_bonnie",
		dlc = "pd2_clan",
		type = "barrel",
		name_id = "bm_wp_b682_b_long",
		unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_fps_shot_b682_b_long",
		a_obj = "a_b",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_shot_b682_body_standard = {
		texture_bundle_folder = "character_pack_bonnie",
		dlc = "pd2_clan",
		type = "lower_reciever",
		name_id = "bm_wp_b682_body_standard",
		unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_fps_shot_b682_body_standard",
		a_obj = "a_body",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_shot_b682_s_long = {
		texture_bundle_folder = "character_pack_bonnie",
		dlc = "pd2_clan",
		type = "stock",
		name_id = "bm_wp_b682_s_long",
		unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_fps_shot_b682_s_long",
		a_obj = "a_s",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_b682_s_short = {
		texture_bundle_folder = "character_pack_bonnie",
		dlc = "pd2_clan",
		type = "stock",
		name_id = "bm_wp_b682_s_short",
		unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_fps_shot_b682_s_short",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -4,
			recoil = -3,
			value = 1,
			concealment = 6
		}
	}
	self.parts.wpn_fps_shot_b682_s_ammopouch = {
		texture_bundle_folder = "character_pack_bonnie",
		dlc = "pd2_clan",
		type = "stock",
		name_id = "bm_wp_b682_s_ammopouch",
		unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_fps_shot_b682_s_ammopouch",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			total_ammo_mod = 6
		}
	}
	self.parts.wpn_fps_shot_b682_b_short.third_unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_third_shot_b682_b_short"
	self.parts.wpn_fps_shot_b682_b_long.third_unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_third_shot_b682_b_long"
	self.parts.wpn_fps_shot_b682_body_standard.third_unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_third_shot_b682_body_standard"
	self.parts.wpn_fps_shot_b682_s_long.third_unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_third_shot_b682_s_long"
	self.parts.wpn_fps_shot_b682_s_short.third_unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_third_shot_b682_s_short"
	self.parts.wpn_fps_shot_b682_s_ammopouch.third_unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682_pts/wpn_third_shot_b682_s_ammopouch"
	self.wpn_fps_shot_b682 = {
		unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682/wpn_fps_shot_b682",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {wpn_fps_upg_a_explosive = {custom_stats = {
			ignore_statistic = true,
			damage_far_mul = 2.5,
			damage_near_mul = 2,
			bullet_class = "InstantExplosiveBulletBase",
			rays = 1
		}}},
		default_blueprint = {
			"wpn_fps_shot_b682_body_standard",
			"wpn_fps_shot_b682_b_long",
			"wpn_fps_shot_b682_s_long"
		},
		uses_parts = {
			"wpn_fps_shot_b682_body_standard",
			"wpn_fps_shot_b682_b_long",
			"wpn_fps_shot_b682_s_long",
			"wpn_fps_shot_b682_b_short",
			"wpn_fps_shot_b682_s_short",
			"wpn_fps_shot_b682_s_ammopouch"
		}
	}
	self.wpn_fps_shot_b682_npc = deep_clone(self.wpn_fps_shot_b682)
	self.wpn_fps_shot_b682_npc.unit = "units/pd2_dlc_bonnie/weapons/wpn_fps_shot_b682/wpn_fps_shot_b682_npc"
end

function WeaponFactoryTweakData:_init_butchermodpack()
	self.parts.wpn_fps_saw_body_silent = {
		type = "lower_reciever",
		texture_bundle_folder = "butcher_pack_mods",
		a_obj = "a_body",
		dlc = "butch_pack_free",
		name_id = "bm_wp_saw_body_silent",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_saw_body_silent/wpn_fps_saw_body_silent",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			alert_size = 9,
			suppression = 9
		},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_saw_body_speed = {
		type = "lower_reciever",
		texture_bundle_folder = "butcher_pack_mods",
		a_obj = "a_body",
		dlc = "butch_pack_free",
		name_id = "bm_wp_saw_body_speed",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_saw_body_speed/wpn_fps_saw_body_speed",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			damage = 3
		},
		sound_switch = {suppressed = "regular_b"}
	}
	self.parts.wpn_fps_saw_m_blade_durable = {
		texture_bundle_folder = "butcher_pack_mods",
		type = "magazine",
		a_obj = "a_m",
		dlc = "butch_pack_free",
		name_id = "bm_wp_saw_m_blade_durable",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_saw_m_blade_durable/wpn_fps_saw_m_blade_durable",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			extra_ammo = 25,
			total_ammo_mod = 10,
			value = 1
		},
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_saw_m_blade_sharp = {
		texture_bundle_folder = "butcher_pack_mods",
		type = "magazine",
		a_obj = "a_m",
		dlc = "butch_pack_free",
		name_id = "bm_wp_saw_m_blade_sharp",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_saw_m_blade_sharp/wpn_fps_saw_m_blade_sharp",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			damage = 3
		},
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_aug_body_f90 = {
		texture_bundle_folder = "butcher_pack_mods",
		type = "lower_reciever",
		a_obj = "a_body",
		dlc = "butch_pack_free",
		name_id = "bm_wp_aug_body_f90",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_aug_body_f90/wpn_fps_aug_body_f90",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = -2,
			damage = 2,
			spread = 1,
			recoil = 2
		},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_ass_ak5_b_short = {
		texture_bundle_folder = "butcher_pack_mods",
		dlc = "butch_pack_free",
		type = "barrel",
		name_id = "bm_wp_ak5_b_short",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_ass_ak5_b_short/wpn_fps_ass_ak5_b_short",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread = 1,
			damage = 2,
			concealment = 2
		}
	}
	self.parts.wpn_fps_smg_mp5_m_straight = {
		texture_bundle_folder = "butcher_pack_mods",
		a_obj = "a_m",
		type = "magazine",
		dlc = "butch_pack_free",
		name_id = "bm_wp_mp5_m_straight",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_smg_mp5_m_straight/wpn_fps_smg_mp5_m_straight",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {
			value = 1,
			recoil = -7,
			damage = 4
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mp9_b_suppressed = {
		a_obj = "a_ns",
		texture_bundle_folder = "butcher_pack_mods",
		sub_type = "silencer",
		type = "barrel_ext",
		dlc = "butch_pack_free",
		parent = "barrel",
		name_id = "bm_wp_mp9_b_suppressed",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_smg_mp9_b_suppressed/wpn_fps_smg_mp9_b_suppressed",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread = 1,
			damage = 0,
			suppression = 12,
			value = 4,
			recoil = 3,
			spread_moving = -2,
			concealment = -4
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_smg_p90_b_civilian = {
		texture_bundle_folder = "butcher_pack_mods",
		dlc = "butch_pack_free",
		type = "barrel",
		name_id = "bm_wp_p90_b_civilian",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_smg_p90_b_civilian/wpn_fps_smg_p90_b_civilian",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = -4,
			damage = 2,
			spread = 2,
			recoil = -2
		}
	}
	self.parts.wpn_fps_smg_p90_b_ninja = {
		type = "barrel",
		texture_bundle_folder = "butcher_pack_mods",
		a_obj = "a_b",
		sub_type = "silencer",
		dlc = "butch_pack_free",
		name_id = "bm_wp_p90_b_ninja",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_smg_p90_b_ninja/wpn_fps_smg_p90_b_ninja",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			damage = -1,
			suppression = 12,
			value = 2,
			recoil = 3
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"},
		forbids = {
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ass_ns_battle"
		},
		override = {wpn_fps_ass_vhs_ns_vhs = {
			third_unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_ns_vhs_no",
			unit = "units/pd2_dlc_dragan/weapons/wpn_fps_ass_vhs_pts/wpn_fps_ass_vhs_ns_vhs_no"
		}}
	}
	self.parts.wpn_fps_upg_o_m14_scopemount = {
		depends_on = "sight",
		texture_bundle_folder = "butcher_pack_mods",
		type = "extra",
		a_obj = "a_body",
		dlc = "butch_pack_free",
		name_id = "bm_wp_upg_o_m14_scopemount",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_upg_o_m14_scopemount/wpn_fps_upg_o_m14_scopemount",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 1,
			concealment = -1
		},
		override = {
			wpn_fps_upg_o_specter = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_aimpoint = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_aimpoint_2 = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_docter = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_eotech = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_t1micro = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_cmore = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_cs = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_eotech_xps = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_reflex = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_rx01 = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_rx30 = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_acog = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 6, -5.21)}}
			},
			wpn_fps_upg_o_spot = {
				a_obj = "a_o_sm",
				stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}
			},
			wpn_fps_upg_o_xpsg33_magnifier = {stance_mod = {wpn_fps_ass_m14 = {translation = Vector3(-0.03, 0, -5.21)}}}
		}
	}
	self.parts.wpn_fps_pis_1911_g_engraved = {
		texture_bundle_folder = "butcher_pack_mods",
		dlc = "butch_pack_free",
		type = "grip",
		name_id = "bm_wp_1911_g_engraved",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_pis_1911_g_engraved/wpn_fps_pis_1911_g_engraved",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_pis_beretta_g_engraved = {
		texture_bundle_folder = "butcher_pack_mods",
		dlc = "butch_pack_free",
		type = "grip",
		name_id = "bm_wp_beretta_g_engraved",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_pis_beretta_g_engraved/wpn_fps_pis_beretta_g_engraved",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_upg_fl_ass_utg = {
		type = "gadget",
		texture_bundle_folder = "butcher_pack_mods",
		a_obj = "a_fl",
		sub_type = "laser",
		dlc = "butch_pack_free",
		name_id = "bm_wp_upg_fl_ass_utg",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_upg_fl_ass_utg/wpn_fps_upg_fl_ass_utg",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			concealment = -2,
			recoil = 2,
			value = 5
		},
		perks = {"gadget"},
		adds = {
			"wpn_fps_addon_ris",
			"wpn_fps_upg_fl_ass_peq15_flashlight"
		}
	}
	self.parts.wpn_fps_upg_fl_pis_m3x = {
		type = "gadget",
		texture_bundle_folder = "butcher_pack_mods",
		a_obj = "a_fl",
		sub_type = "flashlight",
		dlc = "butch_pack_free",
		name_id = "bm_wp_upg_fl_pis_m3x",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_upg_fl_pis_m3x/wpn_fps_upg_fl_pis_m3x",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_upg_ass_ns_battle = {
		type = "barrel_ext",
		texture_bundle_folder = "butcher_pack_mods",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "butch_pack_free",
		name_id = "bm_wp_ns_battle",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_upg_ass_ns_battle/wpn_fps_upg_ass_ns_battle",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = -1,
			damage = 2,
			spread = 1,
			recoil = -2
		}
	}
	self.parts.wpn_fps_upg_ns_ass_filter = {
		type = "barrel_ext",
		texture_bundle_folder = "butcher_pack_mods",
		sub_type = "silencer",
		a_obj = "a_ns",
		dlc = "butch_pack_free",
		parent = "slide",
		name_id = "bm_wp_upg_ns_ass_filter",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_upg_ns_ass_filter/wpn_fps_upg_ns_ass_filter",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread = -1,
			damage = -3,
			suppression = 12,
			value = 0,
			spread_moving = -2,
			concealment = -3
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_upg_ns_pis_jungle = {
		type = "barrel_ext",
		texture_bundle_folder = "butcher_pack_mods",
		sub_type = "silencer",
		a_obj = "a_ns",
		dlc = "butch_pack_free",
		parent = "slide",
		name_id = "bm_wp_upg_ns_pis_jungle",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_upg_ns_pis_jungle/wpn_fps_upg_ns_pis_jungle",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			value = 5,
			concealment = -5,
			suppression = 12,
			spread = 1,
			recoil = 2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_upg_ns_sho_salvo_large = {
		type = "barrel_ext",
		texture_bundle_folder = "butcher_pack_mods",
		sub_type = "silencer",
		a_obj = "a_ns",
		dlc = "butch_pack_free",
		parent = "barrel",
		name_id = "bm_wp_upg_ns_sho_salvo_large",
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_upg_ns_sho_salvo/wpn_fps_upg_ns_sho_salvo_large",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread = 1,
			damage = -4,
			suppression = 12,
			value = 7,
			recoil = 1,
			spread_moving = -2,
			concealment = -4
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_saw_body_silent.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_saw_body_silent/wpn_third_saw_body_silent"
	self.parts.wpn_fps_saw_body_speed.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_saw_body_speed/wpn_third_saw_body_speed"
	self.parts.wpn_fps_saw_m_blade_durable.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_saw_m_blade_durable/wpn_third_saw_m_blade_durable"
	self.parts.wpn_fps_saw_m_blade_sharp.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_saw_m_blade_sharp/wpn_third_saw_m_blade_sharp"
	self.parts.wpn_fps_aug_body_f90.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_aug_body_f90/wpn_third_aug_body_f90"
	self.parts.wpn_fps_ass_ak5_b_short.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_ass_ak5_b_short/wpn_third_ass_ak5_b_short"
	self.parts.wpn_fps_smg_mp5_m_straight.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_smg_mp5_m_straight/wpn_third_smg_mp5_m_straight"
	self.parts.wpn_fps_smg_mp9_b_suppressed.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_smg_mp9_b_suppressed/wpn_third_smg_mp9_b_suppressed"
	self.parts.wpn_fps_smg_p90_b_civilian.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_smg_p90_b_civilian/wpn_third_smg_p90_b_civilian"
	self.parts.wpn_fps_smg_p90_b_ninja.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_smg_p90_b_ninja/wpn_third_smg_p90_b_ninja"
	self.parts.wpn_fps_upg_o_m14_scopemount.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_upg_o_m14_scopemount/wpn_third_upg_o_m14_scopemount"
	self.parts.wpn_fps_pis_1911_g_engraved.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_pis_1911_g_engraved/wpn_third_pis_1911_g_engraved"
	self.parts.wpn_fps_pis_beretta_g_engraved.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_pis_beretta_g_engraved/wpn_third_pis_beretta_g_engraved"
	self.parts.wpn_fps_upg_fl_ass_utg.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_upg_fl_ass_utg/wpn_third_upg_fl_ass_utg"
	self.parts.wpn_fps_upg_fl_pis_m3x.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_upg_fl_pis_m3x/wpn_third_upg_fl_pis_m3x"
	self.parts.wpn_fps_upg_ass_ns_battle.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_upg_ass_ns_battle/wpn_third_upg_ass_ns_battle"
	self.parts.wpn_fps_upg_ns_ass_filter.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_upg_ns_ass_filter/wpn_third_upg_ns_ass_filter"
	self.parts.wpn_fps_upg_ns_pis_jungle.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_upg_ns_pis_jungle/wpn_third_upg_ns_pis_jungle"
	self.parts.wpn_fps_upg_ns_sho_salvo_large.third_unit = "units/pd2_dlc_butcher_mods/weapons/wpn_third_upg_ns_sho_salvo/wpn_third_upg_ns_sho_salvo_large"
end

function WeaponFactoryTweakData:_init_x_g22c()
	self.wpn_fps_pis_x_g22c = {
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_pis_x_g22c/wpn_fps_pis_x_g22c",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		animations = {
			reload = "reload_right",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_left = "reload_left",
			magazine_empty = "last_recoil"
		},
		override = {
			wpn_fps_pis_g18c_m_mag_33rnd = {
				animations = {
					reload_not_empty = "reload_not_empty_right",
					reload = "reload_right",
					reload_left = "reload_left",
					reload_not_empty_left = "reload_not_empty_left"
				},
				stats = {
					value = 3,
					spread_moving = -2,
					concealment = -1,
					extra_ammo = 12
				}
			},
			wpn_fps_pis_g18c_m_mag_17rnd = {animations = {
				reload_not_empty = "reload_not_empty_right",
				reload = "reload_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}},
			wpn_fps_pis_g22c_b_standard = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_g22c_b_long = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}}
		},
		default_blueprint = {
			"wpn_fps_pis_g22c_b_standard",
			"wpn_fps_pis_g22c_body_standard",
			"wpn_fps_pis_g18c_m_mag_17rnd"
		},
		uses_parts = {
			"wpn_fps_pis_g22c_b_standard",
			"wpn_fps_pis_g22c_b_long",
			"wpn_fps_pis_g22c_body_standard",
			"wpn_fps_pis_g18c_g_ergo",
			"wpn_fps_pis_g18c_co_1",
			"wpn_fps_pis_g18c_co_comp_2",
			"wpn_fps_pis_g18c_m_mag_33rnd",
			"wpn_fps_pis_g18c_m_mag_17rnd",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_pis_g26_g_gripforce",
			"wpn_fps_pis_g26_g_laser",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_x_g22c_npc = deep_clone(self.wpn_fps_pis_x_g22c)
	self.wpn_fps_pis_x_g22c_npc.unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_pis_x_g22c/wpn_fps_pis_x_g22c_npc"
end

function WeaponFactoryTweakData:_init_x_g17()
	self.wpn_fps_pis_x_g17 = {
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_pis_x_g17/wpn_fps_pis_x_g17",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		animations = {
			reload = "reload_right",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_left = "reload_left"
		},
		override = {
			wpn_fps_pis_g17_m_standard = {animations = {
				reload_not_empty = "reload_not_empty_right",
				reload = "reload_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}},
			wpn_fps_pis_g17_b_standard = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_g18c_m_mag_33rnd = {
				animations = {
					reload_not_empty = "reload_not_empty_right",
					reload = "reload_right",
					reload_left = "reload_left",
					reload_not_empty_left = "reload_not_empty_left"
				},
				stats = {
					value = 3,
					spread_moving = -2,
					concealment = -1,
					extra_ammo = 12
				}
			}
		},
		default_blueprint = {
			"wpn_fps_pis_g17_body_standard",
			"wpn_fps_pis_g17_b_standard",
			"wpn_fps_pis_g17_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_g17_body_standard",
			"wpn_fps_pis_g17_b_standard",
			"wpn_fps_pis_g17_m_standard",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_pis_g26_g_gripforce",
			"wpn_fps_pis_g26_g_laser",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle",
			"wpn_fps_pis_g18c_m_mag_33rnd"
		}
	}
	self.wpn_fps_pis_x_g17_npc = deep_clone(self.wpn_fps_pis_x_g17)
	self.wpn_fps_pis_x_g17_npc.unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_pis_x_g17/wpn_fps_pis_x_g17_npc"
end

function WeaponFactoryTweakData:_init_x_usp()
	self.wpn_fps_pis_x_usp = {
		unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_pis_x_usp/wpn_fps_pis_x_usp",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_usp_fl_adapter"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_usp_fl_adapter"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_usp_fl_adapter"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_usp_fl_adapter"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_usp_fl_adapter"}
		},
		animations = {
			reload = "reload_right",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_left = "reload_left"
		},
		override = {
			wpn_fps_pis_usp_m_standard = {animations = {
				reload_not_empty = "reload_not_empty_right",
				reload = "reload_right",
				reload_left = "reload_left",
				reload_not_empty_left = "reload_not_empty_left"
			}},
			wpn_fps_pis_usp_m_extended = {
				animations = {
					reload_not_empty = "reload_not_empty_right",
					reload = "reload_right",
					reload_left = "reload_left",
					reload_not_empty_left = "reload_not_empty_left"
				},
				stats = {
					value = 3,
					spread_moving = -2,
					concealment = -1,
					extra_ammo = 8
				}
			},
			wpn_fps_pis_usp_b_tactical = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_usp_b_expert = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_usp_b_match = {animations = {
				reload_left = "reload_left",
				fire = "recoil",
				fire_steelsight = "recoil",
				reload = "reload_right",
				magazine_empty = "last_recoil"
			}},
			wpn_fps_pis_usp_m_big = {
				animations = {
					reload_not_empty = "reload_not_empty_right",
					reload = "reload_right",
					reload_left = "reload_left",
					reload_not_empty_left = "reload_not_empty_left"
				},
				stats = {
					extra_ammo = 12,
					value = 4,
					recoil = 2,
					concealment = -2,
					spread_moving = -1
				}
			}
		},
		default_blueprint = {
			"wpn_fps_pis_usp_b_tactical",
			"wpn_fps_pis_usp_body_standard",
			"wpn_fps_pis_usp_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_usp_b_match",
			"wpn_fps_pis_usp_body_standard",
			"wpn_fps_pis_usp_m_standard",
			"wpn_fps_pis_usp_m_extended",
			"wpn_fps_pis_usp_b_expert",
			"wpn_fps_pis_usp_b_tactical",
			"wpn_fps_pis_usp_co_comp_1",
			"wpn_fps_pis_usp_co_comp_2",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle",
			"wpn_fps_pis_usp_m_big"
		}
	}
	self.wpn_fps_pis_x_usp_npc = deep_clone(self.wpn_fps_pis_x_usp)
	self.wpn_fps_pis_x_usp_npc.unit = "units/pd2_dlc_butcher_mods/weapons/wpn_fps_pis_x_usp/wpn_fps_pis_x_usp_npc"
end

function WeaponFactoryTweakData:_init_flamethrower_mk2()
	self.parts.wpn_fps_fla_mk2_empty = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_huntsman_b_long",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2_pts/wpn_fps_fla_mk2_empty",
		stats = {value = 1}
	}
	self.parts.wpn_fps_fla_mk2_body = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_huntsman_body_standard",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2_pts/wpn_fps_fla_mk2_body",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_fla_mk2_mag_rare = {
		texture_bundle_folder = "bbq",
		dlc = "bbq",
		type = "magazine",
		name_id = "bm_wp_fla_mk2_mag_rare",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2_pts/wpn_fps_fla_mk2_mag_rare",
		a_obj = "a_m",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 1,
			total_ammo_mod = 5,
			damage = -3
		}
	}
	self.parts.wpn_fps_fla_mk2_mag = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_fla_mk2_mag_medium",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2_pts/wpn_fps_fla_mk2_mag",
		stats = {value = 1}
	}
	self.parts.wpn_fps_fla_mk2_mag_welldone = {
		texture_bundle_folder = "bbq",
		dlc = "bbq",
		type = "magazine",
		name_id = "bm_wp_fla_mk2_mag_welldone",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2_pts/wpn_fps_fla_mk2_mag_welldone",
		a_obj = "a_m",
		pcs = {
			20,
			30,
			40
		},
		stats = {
			value = 1,
			total_ammo_mod = -5,
			damage = 3
		}
	}
	self.parts.wpn_fps_fla_mk2_body.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2_pts/wpn_third_fla_mk2_body"
	self.parts.wpn_fps_fla_mk2_mag_rare.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2_pts/wpn_third_fla_mk2_mag_rare"
	self.parts.wpn_fps_fla_mk2_mag.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2_pts/wpn_third_fla_mk2_mag"
	self.parts.wpn_fps_fla_mk2_mag_welldone.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2_pts/wpn_third_fla_mk2_mag_welldone"
	self.wpn_fps_fla_mk2 = {
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2/wpn_fps_fla_mk2",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		animations = {
			reload_not_empty = "reload",
			reload = "reload"
		},
		default_blueprint = {
			"wpn_fps_fla_mk2_empty",
			"wpn_fps_fla_mk2_body",
			"wpn_fps_fla_mk2_mag"
		},
		uses_parts = {
			"wpn_fps_fla_mk2_empty",
			"wpn_fps_fla_mk2_body",
			"wpn_fps_fla_mk2_mag_rare",
			"wpn_fps_fla_mk2_mag",
			"wpn_fps_fla_mk2_mag_welldone",
			"wpn_fps_fla_mk2_body_fierybeast"
		}
	}
	self.wpn_fps_fla_mk2_npc = deep_clone(self.wpn_fps_fla_mk2)
	self.wpn_fps_fla_mk2_npc.unit = "units/pd2_dlc_bbq/weapons/wpn_fps_fla_mk2/wpn_fps_fla_mk2_npc"
end

function WeaponFactoryTweakData:_init_m32()
	self.parts.wpn_fps_gre_m32_barrel = {
		texture_bundle_folder = "bbq",
		dlc = "bbq",
		type = "barrel",
		name_id = "bm_wp_l85a2_fg_medium",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_barrel",
		a_obj = "a_b",
		stats = {value = 1},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_gre_m32_barrel_short = {
		type = "barrel",
		texture_bundle_folder = "bbq",
		a_obj = "a_b",
		dlc = "bbq",
		name_id = "bm_wp_m32_barrel_short",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_barrel_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			recoil = 5,
			value = 1,
			concealment = 2
		},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_gre_m32_bolt = {
		texture_bundle_folder = "bbq",
		dlc = "bbq",
		type = "extra",
		name_id = "bm_wp_l85a2_fg_medium",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_bolt",
		a_obj = "a_bolt",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_m32_lower_reciever = {
		texture_bundle_folder = "bbq",
		dlc = "bbq",
		type = "lower_reciever",
		name_id = "bm_wp_l85a2_fg_medium",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_lower_reciever",
		a_obj = "a_body",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_m32_mag = {
		texture_bundle_folder = "bbq",
		dlc = "bbq",
		type = "magazine",
		name_id = "bm_wp_l85a2_fg_medium",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_mag",
		a_obj = "a_m",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			reload_enter = "reload_enter"
		}
	}
	self.parts.wpn_fps_gre_m32_stock_adapter = {
		texture_bundle_folder = "bbq",
		dlc = "pd2_clan",
		type = "stock_adapter",
		name_id = "bm_wp_l85a2_fg_medium",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_stock_adapter",
		a_obj = "a_s",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_m32_no_stock = {
		is_a_unlockable = true,
		texture_bundle_folder = "bbq",
		type = "stock",
		a_obj = "a_s",
		dlc = "bbq",
		name_id = "bm_wp_m32_no_stock",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_no_stock",
		pcs = {},
		stats = {
			concealment = 4,
			recoil = -4,
			value = 0
		}
	}
	self.parts.wpn_fps_gre_m32_upper_reciever = {
		texture_bundle_folder = "bbq",
		dlc = "bbq",
		type = "upper_reciever",
		name_id = "bm_wp_l85a2_fg_medium",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_upper_reciever",
		a_obj = "a_body_2",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_m32_barrel.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_third_gre_m32_barrel"
	self.parts.wpn_fps_gre_m32_barrel_short.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_third_gre_m32_barrel_short"
	self.parts.wpn_fps_gre_m32_bolt.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_no_stock"
	self.parts.wpn_fps_gre_m32_lower_reciever.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_third_gre_m32_lower_reciever"
	self.parts.wpn_fps_gre_m32_mag.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_no_stock"
	self.parts.wpn_fps_gre_m32_stock_adapter.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_third_gre_m32_stock_adapter"
	self.parts.wpn_fps_gre_m32_upper_reciever.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32_pts/wpn_fps_gre_m32_no_stock"
	self.wpn_fps_gre_m32 = {
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32/wpn_fps_gre_m32",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		animations = {
			fire = "recoil",
			fire_steelsight = "recoil_zoom",
			reload_not_empty_exit = "reload_exit",
			reload_exit = "reload_exit",
			reload_enter = "reload_enter"
		},
		stock_adapter = "wpn_fps_gre_m32_stock_adapter",
		forbids = {"wpn_fps_addon_ris"},
		adds = {},
		default_blueprint = {
			"wpn_fps_gre_m32_barrel",
			"wpn_fps_gre_m32_bolt",
			"wpn_fps_gre_m32_lower_reciever",
			"wpn_fps_gre_m32_mag",
			"wpn_fps_gre_m32_upper_reciever",
			"wpn_fps_upg_m4_s_standard_vanilla"
		},
		uses_parts = {
			"wpn_fps_gre_m32_barrel",
			"wpn_fps_gre_m32_barrel_short",
			"wpn_fps_gre_m32_bolt",
			"wpn_fps_gre_m32_lower_reciever",
			"wpn_fps_gre_m32_mag",
			"wpn_fps_gre_m32_stock_adapter",
			"wpn_fps_gre_m32_no_stock",
			"wpn_fps_gre_m32_upper_reciever",
			"wpn_fps_upg_m4_s_standard_vanilla",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_gre_m32_npc = deep_clone(self.wpn_fps_gre_m32)
	self.wpn_fps_gre_m32_npc.unit = "units/pd2_dlc_bbq/weapons/wpn_fps_gre_m32/wpn_fps_gre_m32_npc"
end

function WeaponFactoryTweakData:_init_aa12()
	self.parts.wpn_fps_sho_aa12_barrel = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_aa12_barrel",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_barrel",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_aa12_barrel_long = {
		texture_bundle_folder = "bbq",
		dlc = "bbq",
		type = "barrel",
		name_id = "bm_wp_aa12_barrel_long",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_barrel_long",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 2,
			recoil = 2,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_sho_aa12_barrel_silenced = {
		type = "barrel",
		texture_bundle_folder = "bbq",
		dlc = "bbq",
		a_obj = "a_b",
		sub_type = "silencer",
		name_id = "bm_wp_aa12_barrel_silenced",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_barrel_silenced",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			value = 5,
			damage = -2,
			suppression = 12,
			spread = 1,
			recoil = -2,
			spread_moving = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"},
		forbids = {
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_a_dragons_breath",
			"wpn_fps_upg_ns_duck"
		}
	}
	self.parts.wpn_fps_sho_aa12_body = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_aa12_body",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_body",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_aa12_body_rail = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_aa12_body_rail ",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_body_rail",
		stats = {value = 1},
		stance_mod = {wpn_fps_sho_aa12 = {translation = Vector3(0, 2, -0.8)}},
		forbids = {"wpn_fps_sho_aa12_body_rear_sight"}
	}
	self.parts.wpn_fps_sho_aa12_body_rear_sight = {
		a_obj = "a_body",
		type = "sight",
		name_id = "bm_wp_aa12_body_rear_sight",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_body_rear_sight",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_sho_aa12_bolt = {
		a_obj = "a_bolt",
		type = "extra",
		name_id = "bm_wp_aa12_bolt",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_bolt",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_aa12_dh = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_aa12_dh",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_dh",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_aa12_mag_drum = {
		texture_bundle_folder = "bbq",
		a_obj = "a_m",
		type = "magazine",
		dlc = "bbq",
		name_id = "bm_wp_aa12_mag_drum",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_mag_drum",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 21,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 6,
			value = 1,
			concealment = -4
		},
		animations = {
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_sho_aa12_mag_straight = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_aa12_mag_straight",
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_fps_sho_aa12_mag_straight",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_aa12_barrel.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_barrel"
	self.parts.wpn_fps_sho_aa12_barrel_long.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_barrel_long"
	self.parts.wpn_fps_sho_aa12_barrel_silenced.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_barrel_silenced"
	self.parts.wpn_fps_sho_aa12_body.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_body"
	self.parts.wpn_fps_sho_aa12_body_rail.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_body_rail"
	self.parts.wpn_fps_sho_aa12_body_rear_sight.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_body_rear_sight"
	self.parts.wpn_fps_sho_aa12_bolt.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_bolt"
	self.parts.wpn_fps_sho_aa12_dh.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_dh"
	self.parts.wpn_fps_sho_aa12_mag_drum.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_mag_drum"
	self.parts.wpn_fps_sho_aa12_mag_straight.third_unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12_pts/wpn_third_sho_aa12_mag_straight"
	self.wpn_fps_sho_aa12 = {
		unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12/wpn_fps_sho_aa12",
		stock_adapter = "wpn_upg_ak_s_adapter",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_sho_aa12_body_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_sho_aa12_body_rail"}
		},
		default_blueprint = {
			"wpn_fps_sho_aa12_mag_straight",
			"wpn_fps_sho_aa12_dh",
			"wpn_fps_sho_aa12_bolt",
			"wpn_fps_sho_aa12_body",
			"wpn_fps_sho_aa12_barrel",
			"wpn_fps_sho_aa12_body_rear_sight"
		},
		uses_parts = {
			"wpn_fps_sho_aa12_barrel",
			"wpn_fps_sho_aa12_barrel_long",
			"wpn_fps_sho_aa12_barrel_silenced",
			"wpn_fps_sho_aa12_body",
			"wpn_fps_sho_aa12_body_rail",
			"wpn_fps_sho_aa12_body_rear_sight",
			"wpn_fps_sho_aa12_bolt",
			"wpn_fps_sho_aa12_dh",
			"wpn_fps_sho_aa12_mag_drum",
			"wpn_fps_sho_aa12_mag_straight",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_sho_aa12_npc = deep_clone(self.wpn_fps_sho_aa12)
	self.wpn_fps_sho_aa12_npc.unit = "units/pd2_dlc_bbq/weapons/wpn_fps_sho_aa12/wpn_fps_sho_aa12_npc"
end

function WeaponFactoryTweakData:_init_peacemaker()
	self.parts.wpn_fps_pis_peacemaker_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_peacemaker_body_standard",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker_pts/wpn_fps_pis_peacemaker_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty_exit = "reload_exit",
			reload_exit = "reload_exit",
			reload_enter = "reload_enter"
		}
	}
	self.parts.wpn_fps_pis_peacemaker_b_standard = {
		a_obj = "a_b",
		type = "slide",
		name_id = "bm_wp_peacemaker_barrel_standard",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker_pts/wpn_fps_pis_peacemaker_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_peacemaker_b_long = {
		texture_bundle_folder = "west",
		dlc = "west",
		type = "slide",
		name_id = "bm_wp_peacemaker_barrel_long",
		a_obj = "a_b",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker_pts/wpn_fps_pis_peacemaker_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			spread_moving = -1,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_pis_peacemaker_b_short = {
		texture_bundle_folder = "west",
		dlc = "west",
		type = "slide",
		name_id = "bm_wp_peacemaker_barrel_short",
		a_obj = "a_b",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker_pts/wpn_fps_pis_peacemaker_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			spread_moving = -1,
			value = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_pis_peacemaker_m_standard = {
		a_obj = "a_m",
		type = "upper_reciever",
		name_id = "bm_wp_peacemaker_m_standard",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker_pts/wpn_fps_pis_peacemaker_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			reload_enter = "reload_enter"
		}
	}
	self.parts.wpn_fps_pis_peacemaker_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_peacemaker_handle_standard",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker_pts/wpn_fps_pis_peacemaker_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_peacemaker_g_bling = {
		texture_bundle_folder = "west",
		dlc = "west",
		type = "grip",
		name_id = "bm_wp_peacemaker_handle_bling",
		a_obj = "a_g",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker_pts/wpn_fps_pis_peacemaker_g_bling",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_pis_peacemaker_s_skeletal = {
		texture_bundle_folder = "west",
		dlc = "west",
		type = "stock",
		name_id = "bm_wp_peacemaker_rifle_stock",
		a_obj = "a_s",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker_pts/wpn_fps_pis_peacemaker_s_skeletal",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 2,
			concealment = -2
		}
	}
	self.parts.wpn_fps_pis_peacemaker_body_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_third_pis_peacemaker_pts/wpn_third_pis_peacemaker_body_standard"
	self.parts.wpn_fps_pis_peacemaker_b_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_third_pis_peacemaker_pts/wpn_third_pis_peacemaker_b_standard"
	self.parts.wpn_fps_pis_peacemaker_b_long.third_unit = "units/pd2_dlc_west/weapons/wpn_third_pis_peacemaker_pts/wpn_third_pis_peacemaker_b_long"
	self.parts.wpn_fps_pis_peacemaker_b_short.third_unit = "units/pd2_dlc_west/weapons/wpn_third_pis_peacemaker_pts/wpn_third_pis_peacemaker_b_short"
	self.parts.wpn_fps_pis_peacemaker_m_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_third_pis_peacemaker_pts/wpn_third_pis_peacemaker_m_standard"
	self.parts.wpn_fps_pis_peacemaker_g_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_third_pis_peacemaker_pts/wpn_third_pis_peacemaker_g_standard"
	self.parts.wpn_fps_pis_peacemaker_g_bling.third_unit = "units/pd2_dlc_west/weapons/wpn_third_pis_peacemaker_pts/wpn_third_pis_peacemaker_g_bling"
	self.parts.wpn_fps_pis_peacemaker_s_skeletal.third_unit = "units/pd2_dlc_west/weapons/wpn_third_pis_peacemaker_pts/wpn_third_pis_peacemaker_s_skeletal"
	self.wpn_fps_pis_peacemaker = {
		unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker/wpn_fps_pis_peacemaker",
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		default_blueprint = {
			"wpn_fps_pis_peacemaker_body_standard",
			"wpn_fps_pis_peacemaker_b_standard",
			"wpn_fps_pis_peacemaker_m_standard",
			"wpn_fps_pis_peacemaker_g_standard"
		},
		uses_parts = {
			"wpn_fps_pis_peacemaker_body_standard",
			"wpn_fps_pis_peacemaker_b_standard",
			"wpn_fps_pis_peacemaker_b_long",
			"wpn_fps_pis_peacemaker_b_short",
			"wpn_fps_pis_peacemaker_m_standard",
			"wpn_fps_pis_peacemaker_g_standard",
			"wpn_fps_pis_peacemaker_g_bling",
			"wpn_fps_pis_peacemaker_s_skeletal"
		}
	}
	self.wpn_fps_pis_peacemaker_npc = deep_clone(self.wpn_fps_pis_peacemaker)
	self.wpn_fps_pis_peacemaker_npc.unit = "units/pd2_dlc_west/weapons/wpn_fps_pis_peacemaker/wpn_fps_pis_peacemaker_npc"
end

function WeaponFactoryTweakData:_init_winchester1874()
	self.parts.wpn_fps_snp_winchester_b_standard = {
		texture_bundle_folder = "west",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_winchester_b_medium",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_snp_winchester_pts/wpn_fps_snp_winchester_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_winchester_b_long = {
		texture_bundle_folder = "west",
		dlc = "west",
		type = "barrel",
		name_id = "bm_wp_winchester_b_long",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_snp_winchester_pts/wpn_fps_snp_winchester_b_long",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			recoil = 0,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_snp_winchester_b_suppressed = {
		a_obj = "a_b",
		texture_bundle_folder = "west",
		type = "barrel",
		sub_type = "silencer",
		dlc = "west",
		name_id = "bm_wp_winchester_b_suppressed",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_snp_winchester_pts/wpn_fps_snp_winchester_b_suppressed",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			value = 6,
			damage = -3,
			suppression = 12,
			spread = -1,
			recoil = 3,
			concealment = -2,
			spread_moving = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_snp_winchester_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_winchester_body_standard",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_snp_winchester_pts/wpn_fps_snp_winchester_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_snp_winchester_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_snp_winchester_pts/wpn_fps_snp_winchester_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_snp_winchester_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_winchester_body_standard",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_snp_winchester_pts/wpn_fps_snp_winchester_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_winchester_o_classic = {
		type = "sight",
		texture_bundle_folder = "west",
		reticle_obj = "g_reticle",
		a_obj = "a_o",
		dlc = "west",
		name_id = "bm_wp_winchester_sniper_scope",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_snp_winchester_pts/wpn_fps_upg_winchester_o_classic",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			zoom = 10,
			recoil = 1,
			value = 0,
			concealment = -3
		},
		stance_mod = {wpn_fps_snp_winchester = {translation = Vector3(0, -28, -1.69)}}
	}
	self.parts.wpn_fps_snp_winchester_b_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_third_snp_winchester/wpn_third_snp_winchester_b_standard"
	self.parts.wpn_fps_snp_winchester_b_long.third_unit = "units/pd2_dlc_west/weapons/wpn_third_snp_winchester/wpn_third_snp_winchester_b_long"
	self.parts.wpn_fps_snp_winchester_b_suppressed.third_unit = "units/pd2_dlc_west/weapons/wpn_third_snp_winchester/wpn_third_snp_winchester_b_suppressed"
	self.parts.wpn_fps_snp_winchester_body_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_third_snp_winchester/wpn_third_snp_winchester_body_standard"
	self.parts.wpn_fps_snp_winchester_m_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_third_snp_winchester/wpn_third_snp_winchester_m_standard"
	self.parts.wpn_fps_snp_winchester_s_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_third_snp_winchester/wpn_third_snp_winchester_s_standard"
	self.parts.wpn_fps_upg_winchester_o_classic.third_unit = "units/pd2_dlc_west/weapons/wpn_third_snp_winchester/wpn_third_upg_winchester_o_classic"
	self.wpn_fps_snp_winchester = {
		unit = "units/pd2_dlc_west/weapons/wpn_fps_snp_winchester/wpn_fps_snp_winchester",
		optional_types = {
			"gadget",
			"sight"
		},
		default_blueprint = {
			"wpn_fps_snp_winchester_b_standard",
			"wpn_fps_snp_winchester_body_standard",
			"wpn_fps_snp_winchester_m_standard",
			"wpn_fps_snp_winchester_s_standard"
		},
		uses_parts = {
			"wpn_fps_snp_winchester_b_standard",
			"wpn_fps_snp_winchester_b_long",
			"wpn_fps_snp_winchester_b_suppressed",
			"wpn_fps_snp_winchester_body_standard",
			"wpn_fps_snp_winchester_m_standard",
			"wpn_fps_snp_winchester_s_standard",
			"wpn_fps_upg_winchester_o_classic"
		}
	}
	self.wpn_fps_snp_winchester_npc = deep_clone(self.wpn_fps_snp_winchester)
	self.wpn_fps_snp_winchester_npc.unit = "units/pd2_dlc_west/weapons/wpn_fps_snp_winchester/wpn_fps_snp_winchester_npc"
end

function WeaponFactoryTweakData:_init_plainsrider()
	self.parts.wpn_fps_bow_plainsrider_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_plainsrider_barrel",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_bow_plainsrider_pts/wpn_fps_bow_plainsrider_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_bow_plainsrider_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_plainsrider_barrel",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_bow_plainsrider_pts/wpn_fps_bow_plainsrider_body_standard",
		stats = {value = 1},
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			charge = "charge"
		}
	}
	self.parts.wpn_fps_bow_plainsrider_m_standard = {
		parent = "lower_reciever",
		type = "ammo",
		name_id = "bm_wp_plainsrider_barrel",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_bow_plainsrider_pts/wpn_fps_bow_plainsrider_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_a_bow_explosion = {
		is_a_unlockable = true,
		texture_bundle_folder = "west",
		type = "ammo",
		a_obj = "a_m",
		third_unit = "units/pd2_dlc_west/weapons/wpn_fps_bow_plainsrider_pts/wpn_third_bow_plainsrider_m_explosive",
		sub_type = "ammo_explosive",
		parent = "lower_reciever",
		dlc = "west",
		name_id = "bm_wpn_fps_upg_a_bow_explosion",
		unit = "units/pd2_dlc_west/weapons/wpn_fps_bow_plainsrider_pts/wpn_fps_bow_plainsrider_m_explosive",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {damage = -30},
		custom_stats = {launcher_grenade = "west_arrow_exp"}
	}
	self.parts.wpn_fps_upg_a_bow_poison = {
		is_a_unlockable = true,
		texture_bundle_folder = "turtles",
		type = "ammo",
		a_obj = "a_m",
		third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_plainsrider_m_poison/wpn_third_bow_plainsrider_m_poison",
		sub_type = "ammo_poison",
		parent = "lower_reciever",
		name_id = "bm_wp_upg_a_bow_poison",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_plainsrider_m_poison/wpn_fps_bow_plainsrider_m_poison",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			damage = -90,
			total_ammo_mod = -6
		},
		custom_stats = {
			launcher_grenade = "bow_poison_arrow",
			dot_data = {
				type = "poison",
				custom_data = {}
			}
		}
	}
	self.parts.wpn_fps_bow_plainsrider_body_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_fps_bow_plainsrider_pts/wpn_third_bow_plainsrider_body_standard"
	self.parts.wpn_fps_bow_plainsrider_m_standard.third_unit = "units/pd2_dlc_west/weapons/wpn_fps_bow_plainsrider_pts/wpn_third_bow_plainsrider_m_standard"
	self.wpn_fps_bow_plainsrider = {
		unit = "units/pd2_dlc_west/weapons/wpn_fps_bow_plainsrider/wpn_fps_bow_plainsrider",
		default_blueprint = {
			"wpn_fps_bow_plainsrider_b_standard",
			"wpn_fps_bow_plainsrider_body_standard",
			"wpn_fps_bow_plainsrider_m_standard"
		},
		uses_parts = {
			"wpn_fps_bow_plainsrider_b_standard",
			"wpn_fps_bow_plainsrider_body_standard",
			"wpn_fps_bow_plainsrider_m_standard",
			"wpn_fps_upg_a_bow_explosion",
			"wpn_fps_upg_a_bow_poison"
		}
	}
	self.wpn_fps_bow_plainsrider_npc = deep_clone(self.wpn_fps_bow_plainsrider)
	self.wpn_fps_bow_plainsrider_npc.unit = "units/pd2_dlc_west/weapons/wpn_fps_bow_plainsrider/wpn_fps_bow_plainsrider_npc"
	self.wpn_fps_bow_plainsrider_npc.skip_thq_parts = true
end

function WeaponFactoryTweakData:_init_mateba()
	self.parts.wpn_fps_pis_2006m_b_long = {
		texture_bundle_folder = "dlc_arena",
		dlc = "arena",
		type = "barrel",
		name_id = "bm_wp_2006m_b_long",
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m_pts/wpn_fps_pis_2006m_b_long",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_pis_2006m_b_medium = {
		texture_bundle_folder = "dlc_arena",
		dlc = "arena",
		type = "barrel",
		name_id = "bm_wp_2006m_b_medium",
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m_pts/wpn_fps_pis_2006m_b_medium",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			value = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_pis_2006m_b_short = {
		texture_bundle_folder = "dlc_arena",
		dlc = "arena",
		type = "barrel",
		name_id = "bm_wp_2006m_b_short",
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m_pts/wpn_fps_pis_2006m_b_short",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -2,
			value = 1,
			concealment = 4
		}
	}
	self.parts.wpn_fps_pis_2006m_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_2006m_b_long",
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m_pts/wpn_fps_pis_2006m_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_2006m_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_2006m_b_long",
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m_pts/wpn_fps_pis_2006m_body_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_pis_2006m_fl_adapter = {
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_wp_2006m_b_long",
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m_pts/wpn_fps_pis_2006m_fl_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_2006m_g_bling = {
		texture_bundle_folder = "dlc_arena",
		dlc = "arena",
		type = "grip",
		name_id = "bm_wp_2006m_g_bling",
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m_pts/wpn_fps_pis_2006m_g_bling",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_pis_2006m_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_2006m_b_long",
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m_pts/wpn_fps_pis_2006m_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_2006m_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_2006m_b_long",
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m_pts/wpn_fps_pis_2006m_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_2006m_b_long.third_unit = "units/pd2_dlc_arena/weapons/wpn_third_pis_2006m_pts/wpn_third_pis_2006m_b_long"
	self.parts.wpn_fps_pis_2006m_b_standard.third_unit = "units/pd2_dlc_arena/weapons/wpn_third_pis_2006m_pts/wpn_third_pis_2006m_b_standard"
	self.parts.wpn_fps_pis_2006m_b_short.third_unit = "units/pd2_dlc_arena/weapons/wpn_third_pis_2006m_pts/wpn_third_pis_2006m_b_short"
	self.parts.wpn_fps_pis_2006m_b_medium.third_unit = "units/pd2_dlc_arena/weapons/wpn_third_pis_2006m_pts/wpn_third_pis_2006m_b_medium"
	self.parts.wpn_fps_pis_2006m_body_standard.third_unit = "units/pd2_dlc_arena/weapons/wpn_third_pis_2006m_pts/wpn_third_pis_2006m_body_standard"
	self.parts.wpn_fps_pis_2006m_fl_adapter.third_unit = "units/pd2_dlc_arena/weapons/wpn_third_pis_2006m_pts/wpn_third_pis_2006m_fl_adapter"
	self.parts.wpn_fps_pis_2006m_g_bling.third_unit = "units/pd2_dlc_arena/weapons/wpn_third_pis_2006m_pts/wpn_third_pis_2006m_g_bling"
	self.parts.wpn_fps_pis_2006m_g_standard.third_unit = "units/pd2_dlc_arena/weapons/wpn_third_pis_2006m_pts/wpn_third_pis_2006m_g_standard"
	self.parts.wpn_fps_pis_2006m_m_standard.third_unit = "units/pd2_dlc_arena/weapons/wpn_third_pis_2006m_pts/wpn_third_pis_2006m_m_standard"
	self.wpn_fps_pis_2006m = {
		unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m/wpn_fps_pis_2006m",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_2006m_fl_adapter"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_2006m_fl_adapter"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_2006m_fl_adapter"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_2006m_fl_adapter"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_2006m_fl_adapter"}
		},
		default_blueprint = {
			"wpn_fps_pis_2006m_b_standard",
			"wpn_fps_pis_2006m_body_standard",
			"wpn_fps_pis_2006m_g_standard",
			"wpn_fps_pis_2006m_m_standard"
		},
		uses_parts = {
			"wpn_fps_pis_2006m_b_long",
			"wpn_fps_pis_2006m_b_medium",
			"wpn_fps_pis_2006m_b_short",
			"wpn_fps_pis_2006m_b_standard",
			"wpn_fps_pis_2006m_body_standard",
			"wpn_fps_pis_2006m_fl_adapter",
			"wpn_fps_pis_2006m_g_bling",
			"wpn_fps_pis_2006m_g_standard",
			"wpn_fps_pis_2006m_m_standard",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_fl_pis_m3x"
		}
	}
	self.wpn_fps_pis_2006m_npc = deep_clone(self.wpn_fps_pis_2006m)
	self.wpn_fps_pis_2006m_npc.unit = "units/pd2_dlc_arena/weapons/wpn_fps_pis_2006m/wpn_fps_pis_2006m_npc"
end

function WeaponFactoryTweakData:_init_asval()
	self.parts.wpn_fps_ass_asval_b_proto = {
		is_a_unlockable = true,
		texture_bundle_folder = "character_pack_sokol",
		dlc = "character_pack_sokol",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		name_id = "bm_wp_asval_b_proto",
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval_pts/wpn_fps_ass_asval_b_proto",
		pcs = {},
		stats = {
			value = 1,
			spread = -1,
			alert_size = 12,
			suppression = 12,
			concealment = 2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_ass_asval_b_standard = {
		sub_type = "silencer",
		type = "barrel",
		name_id = "bm_wp_asval_b_pro",
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval_pts/wpn_fps_ass_asval_b_standard",
		a_obj = "a_b",
		stats = {
			value = 1,
			alert_size = 12,
			suppression = 12
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_ass_asval_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_asval_b_st",
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval_pts/wpn_fps_ass_asval_body_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_ass_asval_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_asval_fg_st",
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval_pts/wpn_fps_ass_asval_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_asval_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_asval_g_standard",
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval_pts/wpn_fps_ass_asval_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_asval_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_asval_b_pro",
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval_pts/wpn_fps_ass_asval_m_standard",
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_asval_s_solid = {
		is_a_unlockable = true,
		texture_bundle_folder = "character_pack_sokol",
		type = "stock",
		a_obj = "a_s",
		dlc = "character_pack_sokol",
		name_id = "bm_wp_asval_s_solid",
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval_pts/wpn_fps_ass_asval_s_solid",
		pcs = {},
		stats = {
			value = 1,
			recoil = 5,
			concealment = -3
		},
		forbids = {"wpn_fps_ass_asval_g_standard"}
	}
	self.parts.wpn_fps_ass_asval_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_asval_b_pro",
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval_pts/wpn_fps_ass_asval_s_standard",
		stats = {value = 1},
		adds = {"wpn_fps_ass_asval_g_standard"}
	}
	self.parts.wpn_fps_ass_asval_scopemount = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_asval_scopemount",
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval_pts/wpn_fps_ass_asval_scopemount",
		stats = {value = 1},
		stance_mod = {wpn_fps_ass_asval = {
			translation = Vector3(0, 0, -6.48),
			rotation = Rotation(0, 0, 0)
		}}
	}
	self.parts.wpn_fps_ass_asval_b_proto.third_unit = "units/pd2_dlc_character_sokol/weapons/wpn_third_ass_asval_pts/wpn_third_ass_asval_b_proto"
	self.parts.wpn_fps_ass_asval_b_standard.third_unit = "units/pd2_dlc_character_sokol/weapons/wpn_third_ass_asval_pts/wpn_third_ass_asval_b_standard"
	self.parts.wpn_fps_ass_asval_body_standard.third_unit = "units/pd2_dlc_character_sokol/weapons/wpn_third_ass_asval_pts/wpn_third_ass_asval_body_standard"
	self.parts.wpn_fps_ass_asval_fg_standard.third_unit = "units/pd2_dlc_character_sokol/weapons/wpn_third_ass_asval_pts/wpn_third_ass_asval_fg_standard"
	self.parts.wpn_fps_ass_asval_g_standard.third_unit = "units/pd2_dlc_character_sokol/weapons/wpn_third_ass_asval_pts/wpn_third_ass_asval_g_standard"
	self.parts.wpn_fps_ass_asval_m_standard.third_unit = "units/pd2_dlc_character_sokol/weapons/wpn_third_ass_asval_pts/wpn_third_ass_asval_m_standard"
	self.parts.wpn_fps_ass_asval_s_solid.third_unit = "units/pd2_dlc_character_sokol/weapons/wpn_third_ass_asval_pts/wpn_third_ass_asval_s_solid"
	self.parts.wpn_fps_ass_asval_s_standard.third_unit = "units/pd2_dlc_character_sokol/weapons/wpn_third_ass_asval_pts/wpn_third_ass_asval_s_standard"
	self.parts.wpn_fps_ass_asval_scopemount.third_unit = "units/pd2_dlc_character_sokol/weapons/wpn_third_ass_asval_pts/wpn_third_ass_asval_scopemount"
	self.wpn_fps_ass_asval = {
		unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval/wpn_fps_ass_asval",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_docter = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_acog = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_cs = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ass_asval_scopemount"},
			wpn_fps_upg_o_spot = {"wpn_fps_ass_asval_scopemount"}
		},
		default_blueprint = {
			"wpn_fps_ass_asval_b_standard",
			"wpn_fps_ass_asval_body_standard",
			"wpn_fps_ass_asval_fg_standard",
			"wpn_fps_ass_asval_m_standard",
			"wpn_fps_ass_asval_s_standard"
		},
		uses_parts = {
			"wpn_fps_ass_asval_b_standard",
			"wpn_fps_ass_asval_b_proto",
			"wpn_fps_ass_asval_body_standard",
			"wpn_fps_ass_asval_fg_standard",
			"wpn_fps_ass_asval_g_standard",
			"wpn_fps_ass_asval_m_standard",
			"wpn_fps_ass_asval_s_standard",
			"wpn_fps_ass_asval_s_solid",
			"wpn_fps_ass_asval_scopemount",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_asval_npc = deep_clone(self.wpn_fps_ass_asval)
	self.wpn_fps_ass_asval_npc.unit = "units/pd2_dlc_character_sokol/weapons/wpn_fps_ass_asval/wpn_fps_ass_asval_npc"
end

function WeaponFactoryTweakData:_init_sub2000()
	self.parts.wpn_fps_ass_sub2000_b_std = {
		parent = "foregrip",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_sub2000_b_std",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_b_std",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_sub2000_body_gen1 = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_sub2000_body_gen1",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_body_gen1",
		stats = {value = 1},
		adds = {"wpn_fps_ass_sub2000_dh_standard"}
	}
	self.parts.wpn_fps_ass_sub2000_body_gen2 = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_sub2000_body_gen2",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_body_gen2",
		stats = {value = 1},
		adds = {"wpn_fps_ass_sub2000_dh_standard"}
	}
	self.parts.wpn_fps_ass_sub2000_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_sub2000_dh_standard",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_dh_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_ass_sub2000_fg_gen1 = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_sub2000_fg_gen1",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_fg_gen1",
		stats = {value = 1},
		adds = {"wpn_fps_ass_sub2000_o_front"},
		animations = {
			equip = "equip",
			unequip = "unequip"
		}
	}
	self.parts.wpn_fps_ass_sub2000_fg_gen2 = {
		is_a_unlockable = true,
		texture_bundle_folder = "kenaz",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "kenaz",
		name_id = "bm_wp_sub2000_fg_gen2",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_fg_gen2",
		pcs = {},
		stats = {
			value = 1,
			recoil = -4,
			concealment = 3
		},
		override = {wpn_fps_ass_sub2000_body_gen1 = {
			third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_body_gen2",
			unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_body_gen2"
		}},
		adds = {"wpn_fps_ass_sub2000_o_front"},
		animations = {
			equip = "equip",
			unequip = "unequip"
		}
	}
	self.parts.wpn_fps_ass_sub2000_fg_railed = {
		is_a_unlockable = true,
		texture_bundle_folder = "kenaz",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "kenaz",
		name_id = "bm_wp_sub2000_fg_railed",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_fg_railed",
		pcs = {},
		stats = {
			value = 1,
			recoil = 2,
			concealment = -2
		},
		forbids = {"wpn_fps_ass_sub2000_o_front"},
		animations = {
			equip = "equip",
			unequip = "unequip"
		}
	}
	self.parts.wpn_fps_ass_sub2000_fg_suppressed = {
		is_a_unlockable = true,
		texture_bundle_folder = "kenaz",
		dlc = "kenaz",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_sub2000_fg_suppressed",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_fg_suppressed",
		pcs = {},
		stats = {
			alert_size = 12,
			value = 5,
			damage = -1,
			suppression = 12,
			spread = 1,
			recoil = -2,
			spread_moving = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"},
		forbids = {
			"wpn_fps_ass_sub2000_o_front",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ass_ns_battle"
		},
		override = {wpn_fps_ass_sub2000_body_gen1 = {
			third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_body_gen2",
			unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_body_gen2"
		}},
		animations = {
			equip = "equip",
			unequip = "unequip"
		}
	}
	self.parts.wpn_fps_ass_sub2000_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_sub2000_m_standard",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_sub2000_o_back = {
		a_obj = "a_ob",
		type = "extra",
		name_id = "bm_wp_sub2000_o_back",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_o_back",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_sub2000_o_back_down = {
		a_obj = "a_ob",
		type = "extra",
		name_id = "bm_wp_sub2000_o_back_down",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_o_back_down",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_sub2000_o_front = {
		a_obj = "a_of",
		type = "extra",
		name_id = "bm_wp_sub2000_o_front",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_o_front",
		stats = {value = 1},
		animations = {
			equip = "equip",
			unequip = "unequip"
		}
	}
	self.parts.wpn_fps_ass_sub2000_o_adapter = {
		parent = "foregrip",
		a_obj = "a_o_adapter",
		type = "extra",
		name_id = "bm_wp_sub2000_o_front",
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_o_adapter",
		stats = {value = 1},
		override = {wpn_fps_ass_sub2000_o_back = {
			third_unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_o_back_down",
			unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000_pts/wpn_fps_ass_sub2000_o_back_down"
		}},
		stance_mod = {wpn_fps_ass_sub2000 = {
			translation = Vector3(0, 0, -1.8),
			rotation = Rotation(0, 0, 0)
		}}
	}
	self.parts.wpn_fps_ass_sub2000_body_gen1.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_body_gen1"
	self.parts.wpn_fps_ass_sub2000_body_gen2.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_body_gen2"
	self.parts.wpn_fps_ass_sub2000_b_std.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_b_std"
	self.parts.wpn_fps_ass_sub2000_dh_standard.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_dh_standard"
	self.parts.wpn_fps_ass_sub2000_fg_gen1.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_fg_gen1"
	self.parts.wpn_fps_ass_sub2000_fg_gen2.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_fg_gen2"
	self.parts.wpn_fps_ass_sub2000_fg_railed.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_fg_railed"
	self.parts.wpn_fps_ass_sub2000_fg_suppressed.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_fg_suppressed"
	self.parts.wpn_fps_ass_sub2000_o_back.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_o_back"
	self.parts.wpn_fps_ass_sub2000_o_back_down.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_o_back_down"
	self.parts.wpn_fps_ass_sub2000_o_front.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_o_front"
	self.parts.wpn_fps_ass_sub2000_o_adapter.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_o_adapter"
	self.parts.wpn_fps_ass_sub2000_m_standard.third_unit = "units/pd2_dlc_casino/weapons/wpn_third_ass_sub2000_pts/wpn_third_ass_sub2000_m_standard"
	self.wpn_fps_ass_sub2000 = {
		unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000/wpn_fps_ass_sub2000",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		override = {
			wpn_fps_upg_o_specter = {parent = "foregrip"},
			wpn_fps_upg_o_aimpoint = {parent = "foregrip"},
			wpn_fps_upg_o_aimpoint_2 = {parent = "foregrip"},
			wpn_fps_upg_o_docter = {parent = "foregrip"},
			wpn_fps_upg_o_eotech = {parent = "foregrip"},
			wpn_fps_upg_o_t1micro = {parent = "foregrip"},
			wpn_fps_upg_o_cmore = {parent = "foregrip"},
			wpn_fps_upg_o_acog = {parent = "foregrip"},
			wpn_fps_upg_o_cs = {parent = "foregrip"},
			wpn_fps_upg_o_eotech_xps = {parent = "foregrip"},
			wpn_fps_upg_o_reflex = {parent = "foregrip"},
			wpn_fps_upg_o_rx01 = {parent = "foregrip"},
			wpn_fps_upg_o_rx30 = {parent = "foregrip"},
			wpn_fps_upg_o_spot = {parent = "foregrip"},
			wpn_fps_upg_ns_ass_smg_large = {parent = "foregrip"},
			wpn_fps_upg_ns_ass_smg_medium = {parent = "foregrip"},
			wpn_fps_upg_ns_ass_smg_small = {parent = "foregrip"},
			wpn_fps_upg_ns_ass_smg_firepig = {parent = "foregrip"},
			wpn_fps_upg_ns_ass_smg_stubby = {parent = "foregrip"},
			wpn_fps_upg_ns_ass_smg_tank = {parent = "foregrip"},
			wpn_fps_upg_ass_ns_jprifles = {parent = "foregrip"},
			wpn_fps_upg_ass_ns_linear = {parent = "foregrip"},
			wpn_fps_upg_ass_ns_surefire = {parent = "foregrip"},
			wpn_fps_upg_ass_ns_battle = {parent = "foregrip"},
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {parent = "foregrip"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {parent = "foregrip"},
			wpn_fps_upg_fl_ass_peq15 = {parent = "foregrip"},
			wpn_fps_upg_fl_ass_laser = {parent = "foregrip"},
			wpn_fps_upg_fl_ass_utg = {parent = "foregrip"}
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_docter = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_acog = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_cs = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ass_sub2000_o_adapter"},
			wpn_fps_upg_o_spot = {"wpn_fps_ass_sub2000_o_adapter"}
		},
		default_blueprint = {
			"wpn_fps_ass_sub2000_b_std",
			"wpn_fps_ass_sub2000_body_gen1",
			"wpn_fps_ass_sub2000_dh_standard",
			"wpn_fps_ass_sub2000_fg_gen1",
			"wpn_fps_ass_sub2000_o_back",
			"wpn_fps_ass_sub2000_o_front",
			"wpn_fps_ass_sub2000_m_standard"
		},
		uses_parts = {
			"wpn_fps_ass_sub2000_b_std",
			"wpn_fps_ass_sub2000_body_gen1",
			"wpn_fps_ass_sub2000_dh_standard",
			"wpn_fps_ass_sub2000_fg_gen1",
			"wpn_fps_ass_sub2000_fg_gen2",
			"wpn_fps_ass_sub2000_fg_railed",
			"wpn_fps_ass_sub2000_fg_suppressed",
			"wpn_fps_ass_sub2000_o_back",
			"wpn_fps_ass_sub2000_o_back_down",
			"wpn_fps_ass_sub2000_o_front",
			"wpn_fps_ass_sub2000_o_adapter",
			"wpn_fps_ass_sub2000_m_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_sub2000_npc = deep_clone(self.wpn_fps_ass_sub2000)
	self.wpn_fps_ass_sub2000_npc.unit = "units/pd2_dlc_casino/weapons/wpn_fps_ass_sub2000/wpn_fps_ass_sub2000_npc"
end

function WeaponFactoryTweakData:_init_wa2000()
	self.parts.wpn_fps_snp_wa2000_body_standard = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_wa2000_body_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_snp_wa2000_m_standard = {
		texture_bundle_folder = "turtles",
		a_obj = "a_m",
		type = "magazine",
		dlc = "turtles",
		name_id = "bm_wp_wa2000_m_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_m_standard",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_snp_wa2000_b_long = {
		texture_bundle_folder = "turtles",
		dlc = "turtles",
		type = "barrel",
		name_id = "bm_wp_wa2000_b_long",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_b_long",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 1,
			concealment = -3
		}
	}
	self.parts.wpn_fps_snp_wa2000_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_wa2000_b_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_wa2000_b_suppressed = {
		type = "barrel",
		texture_bundle_folder = "turtles",
		a_obj = "a_b",
		sub_type = "silencer",
		dlc = "turtles",
		name_id = "bm_wp_wa2000_b_suppressed",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_b_suppressed",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread = -1,
			damage = -4,
			suppression = 12,
			value = 6,
			recoil = 2,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_snp_wa2000_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_wa2000_g_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_wa2000_g_light = {
		texture_bundle_folder = "turtles",
		dlc = "turtles",
		type = "grip",
		name_id = "bm_wp_wa2000_g_light",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_g_light",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_snp_wa2000_g_stealth = {
		texture_bundle_folder = "turtles",
		dlc = "turtles",
		type = "grip",
		name_id = "bm_wp_wa2000_g_stealth",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_g_stealth",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = -1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_snp_wa2000_g_walnut = {
		texture_bundle_folder = "turtles",
		dlc = "turtles",
		type = "grip",
		name_id = "bm_wp_wa2000_g_walnut",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_g_walnut",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_snp_wa2000_s_standard = {
		texture_bundle_folder = "pd2_clan",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_wa2000_s_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000_pts/wpn_fps_snp_wa2000_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_wa2000_body_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_body_standard"
	self.parts.wpn_fps_snp_wa2000_m_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_m_standard"
	self.parts.wpn_fps_snp_wa2000_b_suppressed.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_b_suppressed"
	self.parts.wpn_fps_snp_wa2000_b_long.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_b_long"
	self.parts.wpn_fps_snp_wa2000_b_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_b_standard"
	self.parts.wpn_fps_snp_wa2000_g_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_g_standard"
	self.parts.wpn_fps_snp_wa2000_g_light.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_g_light"
	self.parts.wpn_fps_snp_wa2000_g_stealth.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_g_stealth"
	self.parts.wpn_fps_snp_wa2000_g_walnut.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_g_walnut"
	self.parts.wpn_fps_snp_wa2000_s_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_snp_wa2000_pts/wpn_third_snp_wa2000_s_standard"
	self.wpn_fps_snp_wa2000 = {
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000/wpn_fps_snp_wa2000",
		optional_types = {
			"gadget",
			"sight"
		},
		default_blueprint = {
			"wpn_fps_snp_wa2000_body_standard",
			"wpn_fps_snp_wa2000_m_standard",
			"wpn_fps_snp_wa2000_b_standard",
			"wpn_fps_snp_wa2000_g_standard",
			"wpn_fps_snp_wa2000_s_standard",
			"wpn_fps_upg_o_shortdot"
		},
		uses_parts = {
			"wpn_fps_snp_wa2000_body_standard",
			"wpn_fps_snp_wa2000_m_standard",
			"wpn_fps_snp_wa2000_b_standard",
			"wpn_fps_snp_wa2000_g_standard",
			"wpn_fps_snp_wa2000_s_standard",
			"wpn_fps_snp_wa2000_g_walnut",
			"wpn_fps_snp_wa2000_g_stealth",
			"wpn_fps_snp_wa2000_g_light",
			"wpn_fps_snp_wa2000_b_long",
			"wpn_fps_snp_wa2000_b_suppressed",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_snp_wa2000_npc = deep_clone(self.wpn_fps_snp_wa2000)
	self.wpn_fps_snp_wa2000_npc.unit = "units/pd2_dlc_turtles/weapons/wpn_fps_snp_wa2000/wpn_fps_snp_wa2000_npc"
end

function WeaponFactoryTweakData:_init_polymer()
	self.parts.wpn_fps_smg_polymer_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_polymer_bolt_standard = {
		a_obj = "a_bolt",
		type = "extra",
		name_id = "bm_wp_polymer_bolt",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_bolt_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_polymer_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_polymer_bolt",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_polymer_extra_sling = {
		a_obj = "a_sling",
		type = "extra",
		name_id = "bm_wp_polymer_bolt",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_extra_sling",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_polymer_o_iron = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_polymer_bolt",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_o_iron",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_smg_polymer_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_polymer_bolt",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_polymer_barrel_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_polymer_barrel",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_barrel_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_polymer_barrel_precision = {
		texture_bundle_folder = "turtles",
		dlc = "turtles",
		type = "barrel_ext",
		name_id = "bm_wp_polymer_barrel_precision",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_barrel_precision",
		a_obj = "a_ns",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread = 2,
			damage = 2,
			concealment = -4,
			recoil = -3
		}
	}
	self.parts.wpn_fps_smg_polymer_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_polymer_m_mag",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_polymer_ns_silencer = {
		a_obj = "a_ns",
		texture_bundle_folder = "turtles",
		sub_type = "silencer",
		type = "barrel_ext",
		dlc = "turtles",
		parent = "barrel",
		name_id = "bm_wp_polymer_ns_silencer",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_ns_silencer",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread = 0,
			damage = -3,
			suppression = 12,
			value = 1,
			recoil = 1,
			concealment = -1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_smg_polymer_s_adapter = {
		a_obj = "a_s",
		type = "stock_adapter",
		name_id = "bm_wp_polymer_s_m4_adapter",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_s_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_polymer_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_polymer_s_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_fps_smg_polymer_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_polymer_body_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_body_standard"
	self.parts.wpn_fps_smg_polymer_bolt_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_bolt_standard"
	self.parts.wpn_fps_smg_polymer_dh_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_dh_standard"
	self.parts.wpn_fps_smg_polymer_extra_sling.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_extra_sling"
	self.parts.wpn_fps_smg_polymer_o_iron.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_o_iron"
	self.parts.wpn_fps_smg_polymer_fg_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_fg_standard"
	self.parts.wpn_fps_smg_polymer_barrel_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_barrel_standard"
	self.parts.wpn_fps_smg_polymer_barrel_precision.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_barrel_precision"
	self.parts.wpn_fps_smg_polymer_m_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_m_standard"
	self.parts.wpn_fps_smg_polymer_ns_silencer.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_ns_silencer"
	self.parts.wpn_fps_smg_polymer_s_adapter.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_s_adapter"
	self.parts.wpn_fps_smg_polymer_s_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer_pts/wpn_third_smg_polymer_s_standard"
	self.wpn_fps_smg_polymer = {
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer/wpn_fps_smg_polymer",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		},
		stock_adapter = "wpn_fps_smg_polymer_s_adapter",
		default_blueprint = {
			"wpn_fps_smg_polymer_body_standard",
			"wpn_fps_smg_polymer_bolt_standard",
			"wpn_fps_smg_polymer_dh_standard",
			"wpn_fps_smg_polymer_extra_sling",
			"wpn_fps_smg_polymer_o_iron",
			"wpn_fps_smg_polymer_fg_standard",
			"wpn_fps_smg_polymer_barrel_standard",
			"wpn_fps_smg_polymer_m_standard",
			"wpn_fps_smg_polymer_s_standard"
		},
		uses_parts = {
			"wpn_fps_smg_polymer_body_standard",
			"wpn_fps_smg_polymer_bolt_standard",
			"wpn_fps_smg_polymer_dh_standard",
			"wpn_fps_smg_polymer_extra_sling",
			"wpn_fps_smg_polymer_o_iron",
			"wpn_fps_smg_polymer_fg_standard",
			"wpn_fps_smg_polymer_barrel_standard",
			"wpn_fps_smg_polymer_m_standard",
			"wpn_fps_smg_polymer_s_standard",
			"wpn_fps_smg_polymer_barrel_precision",
			"wpn_fps_smg_polymer_ns_silencer",
			"wpn_fps_smg_polymer_s_adapter",
			"wpn_fps_upg_m4_s_standard",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_polymer_npc = deep_clone(self.wpn_fps_smg_polymer)
	self.wpn_fps_smg_polymer_npc.unit = "units/pd2_dlc_turtles/weapons/wpn_fps_smg_polymer/wpn_fps_smg_polymer_npc"
end

function WeaponFactoryTweakData:_init_hunter()
	self.parts.wpn_fps_bow_hunter_b_carbon = {
		texture_bundle_folder = "turtles",
		type = "barrel",
		a_obj = "a_b",
		dlc = "turtles",
		name_id = "bm_wp_bow_hunter_b_carbon",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_b_carbon",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = 1
		},
		animations = {reload = "recoil"}
	}
	self.parts.wpn_fps_bow_hunter_b_skeletal = {
		texture_bundle_folder = "turtles",
		type = "barrel",
		a_obj = "a_b",
		dlc = "turtles",
		name_id = "bm_wp_bow_hunter_b_skeletal",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_b_skeletal",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = 1
		},
		animations = {reload = "recoil"}
	}
	self.parts.wpn_fps_bow_hunter_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_b_standard",
		stats = {value = 1},
		animations = {reload = "recoil"}
	}
	self.parts.wpn_fps_bow_hunter_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_body_standard",
		stats = {value = 1},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_bow_hunter_g_camo = {
		texture_bundle_folder = "turtles",
		dlc = "turtles",
		type = "grip",
		name_id = "bm_wp_bow_hunter_g_camo",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_g_camo",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = 1
		}
	}
	self.parts.wpn_fps_bow_hunter_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_bow_hunter_g_walnut = {
		texture_bundle_folder = "turtles",
		dlc = "turtles",
		type = "grip",
		name_id = "bm_wp_bow_hunter_g_walnut",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_g_walnut",
		a_obj = "a_g",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_bow_hunter_m_standard = {
		a_obj = "a_m",
		type = "ammo",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_bow_hunter_o_standard = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_o_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_upg_a_crossbow_poison = {
		is_a_unlockable = true,
		texture_bundle_folder = "turtles",
		a_obj = "a_m",
		type = "ammo",
		third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_m_poison",
		sub_type = "ammo_poison",
		name_id = "bm_wp_upg_a_crossbow_poison",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_m_poison",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			damage = -25,
			total_ammo_mod = -6
		},
		custom_stats = {
			launcher_grenade = "crossbow_poison_arrow",
			dot_data = {
				type = "poison",
				custom_data = {}
			}
		}
	}
	self.parts.wpn_fps_upg_a_crossbow_explosion = {
		is_a_unlockable = true,
		texture_bundle_folder = "turtles",
		a_obj = "a_m",
		type = "ammo",
		third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_m_explosive",
		sub_type = "ammo_explosive",
		name_id = "bm_wp_upg_a_crossbow_explosion",
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter_pts/wpn_fps_bow_hunter_m_explosive",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {damage = -5},
		custom_stats = {launcher_grenade = "crossbow_arrow_exp"}
	}
	self.parts.wpn_fps_bow_hunter_b_carbon.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_b_carbon"
	self.parts.wpn_fps_bow_hunter_b_skeletal.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_b_skeletal"
	self.parts.wpn_fps_bow_hunter_b_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_b_standard"
	self.parts.wpn_fps_bow_hunter_body_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_body_standard"
	self.parts.wpn_fps_bow_hunter_g_camo.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_g_camo"
	self.parts.wpn_fps_bow_hunter_g_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_g_standard"
	self.parts.wpn_fps_bow_hunter_g_walnut.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_g_walnut"
	self.parts.wpn_fps_bow_hunter_m_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_m_standard"
	self.parts.wpn_fps_bow_hunter_o_standard.third_unit = "units/pd2_dlc_turtles/weapons/wpn_third_bow_hunter_pts/wpn_third_bow_hunter_o_standard"
	self.wpn_fps_bow_hunter = {
		unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter/wpn_fps_bow_hunter",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		},
		override = {wpn_fps_upg_o_rmr = {parent = "lower_reciever"}},
		default_blueprint = {
			"wpn_fps_bow_hunter_b_standard",
			"wpn_fps_bow_hunter_body_standard",
			"wpn_fps_bow_hunter_g_standard",
			"wpn_fps_bow_hunter_m_standard",
			"wpn_fps_bow_hunter_o_standard"
		},
		uses_parts = {
			"wpn_fps_bow_hunter_b_carbon",
			"wpn_fps_bow_hunter_b_skeletal",
			"wpn_fps_bow_hunter_b_standard",
			"wpn_fps_bow_hunter_body_standard",
			"wpn_fps_bow_hunter_g_camo",
			"wpn_fps_bow_hunter_g_standard",
			"wpn_fps_bow_hunter_g_walnut",
			"wpn_fps_bow_hunter_o_standard",
			"wpn_fps_bow_hunter_m_standard",
			"wpn_fps_upg_a_crossbow_poison",
			"wpn_fps_upg_a_crossbow_explosion",
			"wpn_fps_upg_o_rmr"
		}
	}
	self.wpn_fps_bow_hunter_npc = deep_clone(self.wpn_fps_bow_hunter)
	self.wpn_fps_bow_hunter_npc.unit = "units/pd2_dlc_turtles/weapons/wpn_fps_bow_hunter/wpn_fps_bow_hunter_npc"
end

function WeaponFactoryTweakData:_init_baka()
	self.parts.wpn_fps_smg_baka_body_standard = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_baka_body_standard",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_baka_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_baka_m_standard",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_m_standard",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_baka_b_comp = {
		texture_bundle_folder = "dragon",
		dlc = "dragon",
		type = "barrel",
		name_id = "bm_wp_baka_b_comp",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_b_comp",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_smg_baka_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_baka_b_standard",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_baka_b_midsupp = {
		type = "barrel_ext",
		texture_bundle_folder = "dragon",
		a_obj = "a_b",
		sub_type = "silencer",
		dlc = "dragon",
		name_id = "bm_wp_baka_b_midsupp",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_b_midsupp",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			concealment = -2,
			alert_size = 12,
			damage = -2,
			suppression = 12,
			value = 1,
			recoil = 2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_smg_baka_b_smallsupp = {
		type = "barrel_ext",
		texture_bundle_folder = "dragon",
		a_obj = "a_b",
		sub_type = "silencer",
		dlc = "dragon",
		name_id = "bm_wp_baka_b_smallsupp",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_b_smallsupp",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			concealment = 0,
			damage = -4,
			suppression = 12,
			value = 1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_smg_baka_b_longsupp = {
		type = "barrel_ext",
		texture_bundle_folder = "dragon",
		a_obj = "a_b",
		sub_type = "silencer",
		dlc = "dragon",
		name_id = "bm_wp_baka_b_longsupp",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_b_longsupp",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			concealment = -4,
			alert_size = 12,
			suppression = 12,
			value = 1,
			recoil = 5
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_smg_baka_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_baka_g_standard",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_baka_s_standard = {
		texture_bundle_folder = "dragon",
		dlc = "dragon",
		type = "stock",
		name_id = "bm_wp_baka_s_standard",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_s_standard",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = -2,
			concealment = 1
		}
	}
	self.parts.wpn_fps_smg_baka_s_folded = {
		texture_bundle_folder = "dragon",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_baka_s_folded",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_s_folded",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_baka_s_unfolded = {
		texture_bundle_folder = "dragon",
		dlc = "dragon",
		type = "stock",
		name_id = "bm_wp_baka_s_unfolded",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_s_unfolded",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 2,
			concealment = -3
		}
	}
	self.parts.wpn_fps_smg_baka_o_adapter = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_w_baka_o_adapter",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_o_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_baka_fl_adapter = {
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_w_baka_fl_adapter",
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka_pts/wpn_fps_smg_baka_fl_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_baka_body_standard.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_body_standard"
	self.parts.wpn_fps_smg_baka_m_standard.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_m_standard"
	self.parts.wpn_fps_smg_baka_b_comp.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_b_comp"
	self.parts.wpn_fps_smg_baka_b_standard.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_b_standard"
	self.parts.wpn_fps_smg_baka_b_midsupp.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_b_midsupp"
	self.parts.wpn_fps_smg_baka_b_smallsupp.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_b_smallsupp"
	self.parts.wpn_fps_smg_baka_b_longsupp.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_b_longsupp"
	self.parts.wpn_fps_smg_baka_g_standard.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_g_standard"
	self.parts.wpn_fps_smg_baka_s_standard.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_s_standard"
	self.parts.wpn_fps_smg_baka_s_folded.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_s_folded"
	self.parts.wpn_fps_smg_baka_s_unfolded.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_s_unfolded"
	self.parts.wpn_fps_smg_baka_o_adapter.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_o_adapter"
	self.parts.wpn_fps_smg_baka_fl_adapter.third_unit = "units/pd2_dlc_dragon/weapons/wpn_third_smg_baka_pts/wpn_third_smg_baka_fl_adapter"
	self.wpn_fps_smg_baka = {
		unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka/wpn_fps_smg_baka",
		optional_types = {
			"gadget",
			"sight"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_smg_baka_fl_adapter"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_smg_baka_fl_adapter"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_smg_baka_fl_adapter"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_smg_baka_fl_adapter"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_smg_baka_fl_adapter"}
		},
		default_blueprint = {
			"wpn_fps_smg_baka_body_standard",
			"wpn_fps_smg_baka_m_standard",
			"wpn_fps_smg_baka_b_standard",
			"wpn_fps_smg_baka_g_standard",
			"wpn_fps_smg_baka_s_folded"
		},
		uses_parts = {
			"wpn_fps_smg_baka_body_standard",
			"wpn_fps_smg_baka_m_standard",
			"wpn_fps_smg_baka_b_standard",
			"wpn_fps_smg_baka_g_standard",
			"wpn_fps_smg_baka_s_standard",
			"wpn_fps_smg_baka_s_folded",
			"wpn_fps_smg_baka_s_unfolded",
			"wpn_fps_smg_baka_b_comp",
			"wpn_fps_smg_baka_b_midsupp",
			"wpn_fps_smg_baka_b_smallsupp",
			"wpn_fps_smg_baka_b_longsupp",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_pis_m3x"
		}
	}
	self.wpn_fps_smg_baka_npc = deep_clone(self.wpn_fps_smg_baka)
	self.wpn_fps_smg_baka_npc.unit = "units/pd2_dlc_dragon/weapons/wpn_fps_smg_baka/wpn_fps_smg_baka_npc"
end

function WeaponFactoryTweakData:_init_arblast()
	self.parts.wpn_fps_bow_arblast_b_steel = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_fps_bow_arblast_b_steel",
		stats = {value = 1},
		animations = {reload = "recoil"}
	}
	self.parts.wpn_fps_bow_arblast_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_fps_bow_arblast_body_standard",
		stats = {value = 1},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_bow_arblast_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_fps_bow_arblast_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_bow_arblast_m_standard = {
		a_obj = "a_m",
		type = "ammo",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_fps_bow_arblast_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_bow_arblast_m_poison = {
		is_a_unlockable = true,
		texture_bundle_folder = "steel",
		a_obj = "a_m",
		type = "ammo",
		third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_third_bow_arblast_m_poison",
		sub_type = "ammo_poison",
		name_id = "bm_wp_upg_a_arblast_poison",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_fps_bow_arblast_m_poison",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			damage = -17,
			total_ammo_mod = -6
		},
		custom_stats = {
			launcher_grenade = "arblast_poison_arrow",
			dot_data = {
				type = "poison",
				custom_data = {}
			}
		}
	}
	self.parts.wpn_fps_bow_arblast_m_explosive = {
		is_a_unlockable = true,
		texture_bundle_folder = "steel",
		a_obj = "a_m",
		type = "ammo",
		third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_third_bow_arblast_m_explosive",
		sub_type = "ammo_explosive",
		name_id = "bm_wp_upg_a_arblast_explosion",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_fps_bow_arblast_m_explosive",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {damage = -6},
		custom_stats = {launcher_grenade = "arblast_arrow_exp"}
	}
	self.parts.wpn_fps_bow_arblast_b_steel.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_third_bow_arblast_b_steel"
	self.parts.wpn_fps_bow_arblast_body_standard.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_third_bow_arblast_body_standard"
	self.parts.wpn_fps_bow_arblast_g_standard.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_third_bow_arblast_g_standard"
	self.parts.wpn_fps_bow_arblast_m_standard.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast_pts/wpn_third_bow_arblast_m_standard"
	self.wpn_fps_bow_arblast = {
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast/wpn_fps_bow_arblast",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		},
		default_blueprint = {
			"wpn_fps_bow_arblast_b_steel",
			"wpn_fps_bow_arblast_body_standard",
			"wpn_fps_bow_arblast_g_standard",
			"wpn_fps_bow_arblast_m_standard"
		},
		uses_parts = {
			"wpn_fps_bow_arblast_b_steel",
			"wpn_fps_bow_arblast_body_standard",
			"wpn_fps_bow_arblast_g_standard",
			"wpn_fps_bow_arblast_m_standard",
			"wpn_fps_bow_arblast_m_poison",
			"wpn_fps_bow_arblast_m_explosive"
		}
	}
	self.wpn_fps_bow_arblast_npc = deep_clone(self.wpn_fps_bow_arblast)
	self.wpn_fps_bow_arblast_npc.unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_arblast/wpn_fps_bow_arblast_npc"
end

function WeaponFactoryTweakData:_init_frankish()
	self.parts.wpn_fps_bow_frankish_b_steel = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_fps_bow_frankish_b_steel",
		stats = {value = 1},
		animations = {reload = "recoil"}
	}
	self.parts.wpn_fps_bow_frankish_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_fps_bow_frankish_body_standard",
		stats = {value = 1},
		animations = {reload = "reload"}
	}
	self.parts.wpn_fps_bow_frankish_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_fps_bow_frankish_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_bow_frankish_m_standard = {
		a_obj = "a_m",
		type = "ammo",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_fps_bow_frankish_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_bow_frankish_m_poison = {
		is_a_unlockable = true,
		texture_bundle_folder = "steel",
		a_obj = "a_m",
		type = "ammo",
		third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_third_bow_frankish_m_poison",
		sub_type = "ammo_poison",
		name_id = "bm_wp_upg_a_frankish_poison",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_fps_bow_frankish_m_poison",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			damage = -65,
			total_ammo_mod = -6
		},
		custom_stats = {
			launcher_grenade = "frankish_poison_arrow",
			dot_data = {
				type = "poison",
				custom_data = {}
			}
		}
	}
	self.parts.wpn_fps_bow_frankish_m_explosive = {
		is_a_unlockable = true,
		texture_bundle_folder = "steel",
		a_obj = "a_m",
		type = "ammo",
		third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_third_bow_frankish_m_explosive",
		sub_type = "ammo_explosive",
		name_id = "bm_wp_upg_a_frankish_explosion",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_fps_bow_frankish_m_explosive",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {damage = -5},
		custom_stats = {launcher_grenade = "frankish_arrow_exp"}
	}
	self.parts.wpn_fps_bow_frankish_b_steel.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_third_bow_frankish_b_steel"
	self.parts.wpn_fps_bow_frankish_body_standard.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_third_bow_frankish_body_standard"
	self.parts.wpn_fps_bow_frankish_g_standard.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_third_bow_frankish_g_standard"
	self.parts.wpn_fps_bow_frankish_m_standard.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish_pts/wpn_third_bow_frankish_m_standard"
	self.wpn_fps_bow_frankish = {
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish/wpn_fps_bow_frankish",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		},
		default_blueprint = {
			"wpn_fps_bow_frankish_b_steel",
			"wpn_fps_bow_frankish_body_standard",
			"wpn_fps_bow_frankish_g_standard",
			"wpn_fps_bow_frankish_m_standard"
		},
		uses_parts = {
			"wpn_fps_bow_frankish_b_steel",
			"wpn_fps_bow_frankish_body_standard",
			"wpn_fps_bow_frankish_g_standard",
			"wpn_fps_bow_frankish_m_standard",
			"wpn_fps_bow_frankish_m_poison",
			"wpn_fps_bow_frankish_m_explosive"
		}
	}
	self.wpn_fps_bow_frankish_npc = deep_clone(self.wpn_fps_bow_frankish)
	self.wpn_fps_bow_frankish_npc.unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_frankish/wpn_fps_bow_frankish_npc"
end

function WeaponFactoryTweakData:_init_long()
	self.parts.wpn_fps_bow_long_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_long_barrel",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long_pts/wpn_fps_bow_long_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_bow_long_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_long_barrel",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long_pts/wpn_fps_bow_long_body_standard",
		stats = {value = 1},
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			charge = "charge"
		}
	}
	self.parts.wpn_fps_bow_long_m_standard = {
		parent = "lower_reciever",
		type = "ammo",
		name_id = "bm_wp_long_barrel",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long_pts/wpn_fps_bow_long_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_bow_long_m_explosive = {
		is_a_unlockable = true,
		texture_bundle_folder = "steel",
		type = "ammo",
		a_obj = "a_m",
		third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long_pts/wpn_third_bow_long_m_explosive",
		sub_type = "ammo_explosive",
		parent = "lower_reciever",
		name_id = "bm_wp_bow_long_explosion",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long_pts/wpn_fps_bow_long_m_explosive",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {damage = -6},
		custom_stats = {launcher_grenade = "long_arrow_exp"}
	}
	self.parts.wpn_fps_bow_long_m_poison = {
		is_a_unlockable = true,
		texture_bundle_folder = "steel",
		type = "ammo",
		a_obj = "a_m",
		third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long_pts/wpn_third_bow_long_m_poison",
		sub_type = "ammo_poison",
		parent = "lower_reciever",
		name_id = "bm_wp_bow_long_poison",
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long_pts/wpn_fps_bow_long_m_poison",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			damage = -17,
			total_ammo_mod = -6
		},
		custom_stats = {
			launcher_grenade = "long_poison_arrow",
			dot_data = {
				type = "poison",
				custom_data = {}
			}
		}
	}
	self.parts.wpn_fps_bow_long_body_standard.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long_pts/wpn_third_bow_long_body_standard"
	self.parts.wpn_fps_bow_long_m_standard.third_unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long_pts/wpn_third_bow_long_m_standard"
	self.wpn_fps_bow_long = {
		unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long/wpn_fps_bow_long",
		default_blueprint = {
			"wpn_fps_bow_long_b_standard",
			"wpn_fps_bow_long_body_standard",
			"wpn_fps_bow_long_m_standard"
		},
		uses_parts = {
			"wpn_fps_bow_long_b_standard",
			"wpn_fps_bow_long_body_standard",
			"wpn_fps_bow_long_m_standard",
			"wpn_fps_bow_long_m_explosive",
			"wpn_fps_bow_long_m_poison"
		}
	}
	self.wpn_fps_bow_long_npc = deep_clone(self.wpn_fps_bow_long)
	self.wpn_fps_bow_long_npc.unit = "units/pd2_dlc_steel/weapons/wpn_fps_bow_long/wpn_fps_bow_long_npc"
	self.wpn_fps_bow_long_npc.skip_thq_parts = true
end

function WeaponFactoryTweakData:_init_par()
	self.parts.wpn_fps_lmg_par_b_short = {
		texture_bundle_folder = "par",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_par_b_short",
		unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par_pts/wpn_fps_lmg_par_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 0,
			concealment = 2
		}
	}
	self.parts.wpn_fps_lmg_par_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_par_b_standard",
		unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par_pts/wpn_fps_lmg_par_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_par_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_par_body_standard",
		unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par_pts/wpn_fps_lmg_par_body_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_lmg_par_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_par_m_standard",
		unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par_pts/wpn_fps_lmg_par_m_standard",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_lmg_par_s_plastic = {
		texture_bundle_folder = "par",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_par_s_plastic",
		unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par_pts/wpn_fps_lmg_par_s_plastic",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 0,
			recoil = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_lmg_par_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_par_s_standard",
		unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par_pts/wpn_fps_lmg_par_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_par_upper_reciever = {
		a_obj = "a_upper",
		type = "upper_reciever",
		name_id = "bm_wp_par_body_upper",
		unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par_pts/wpn_fps_lmg_par_upper_reciever",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_lmg_par_b_short.third_unit = "units/pd2_dlc_par/weapons/wpn_third_lmg_par_pts/wpn_third_lmg_par_b_short"
	self.parts.wpn_fps_lmg_par_b_standard.third_unit = "units/pd2_dlc_par/weapons/wpn_third_lmg_par_pts/wpn_third_lmg_par_b_standard"
	self.parts.wpn_fps_lmg_par_body_standard.third_unit = "units/pd2_dlc_par/weapons/wpn_third_lmg_par_pts/wpn_third_lmg_par_body_standard"
	self.parts.wpn_fps_lmg_par_m_standard.third_unit = "units/pd2_dlc_par/weapons/wpn_third_lmg_par_pts/wpn_third_lmg_par_m_standard"
	self.parts.wpn_fps_lmg_par_s_plastic.third_unit = "units/pd2_dlc_par/weapons/wpn_third_lmg_par_pts/wpn_third_lmg_par_s_plastic"
	self.parts.wpn_fps_lmg_par_s_standard.third_unit = "units/pd2_dlc_par/weapons/wpn_third_lmg_par_pts/wpn_third_lmg_par_s_standard"
	self.parts.wpn_fps_lmg_par_upper_reciever.third_unit = "units/pd2_dlc_par/weapons/wpn_third_lmg_par_pts/wpn_third_lmg_par_upper_reciever"
	self.wpn_fps_lmg_par = {
		unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par/wpn_fps_lmg_par",
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight",
			"vertical_grip"
		},
		default_blueprint = {
			"wpn_fps_lmg_par_b_standard",
			"wpn_fps_lmg_par_body_standard",
			"wpn_fps_lmg_par_m_standard",
			"wpn_fps_lmg_par_s_standard",
			"wpn_fps_lmg_par_upper_reciever"
		},
		uses_parts = {
			"wpn_fps_lmg_par_b_short",
			"wpn_fps_lmg_par_b_standard",
			"wpn_fps_lmg_par_body_standard",
			"wpn_fps_lmg_par_m_standard",
			"wpn_fps_lmg_par_s_standard",
			"wpn_fps_lmg_par_s_plastic",
			"wpn_fps_lmg_par_upper_reciever",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_lmg_svinet_b_standard",
			"wpn_fps_lmg_svinet_s_legend"
		}
	}
	self.wpn_fps_lmg_par_npc = deep_clone(self.wpn_fps_lmg_par)
	self.wpn_fps_lmg_par_npc.unit = "units/pd2_dlc_par/weapons/wpn_fps_lmg_par/wpn_fps_lmg_par_npc"
end

function WeaponFactoryTweakData:_init_sparrow()
	self.parts.wpn_fps_pis_sparrow_b_941 = {
		texture_bundle_folder = "rip",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_sparrow_b_941",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_b_941",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_sparrow_b_rpl = {
		texture_bundle_folder = "rip",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_sparrow_b_rpl",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_b_rpl",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_sparrow_b_comp = {
		type = "barrel",
		texture_bundle_folder = "rip",
		a_obj = "a_b",
		dlc = "berry",
		name_id = "bm_wp_sparrow_b_comp",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_b_comp",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread = 1
		},
		forbids = {
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.parts.wpn_fps_pis_sparrow_b_threaded = {
		texture_bundle_folder = "rip",
		dlc = "berry",
		type = "barrel",
		name_id = "bm_wp_sparrow_b_threaded",
		a_obj = "a_b",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_b_threaded",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_pis_sparrow_body_941 = {
		type = "lower_reciever",
		texture_bundle_folder = "rip",
		a_obj = "a_body",
		dlc = "berry",
		name_id = "bm_wp_sparrow_body_941",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_body_941",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			recoil = -2,
			concealment = 1,
			value = 1
		},
		adds = {"wpn_fps_pis_sparrow_g_dummy"},
		override = {
			wpn_fps_pis_sparrow_b_rpl = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_b_941",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_b_941"
			},
			wpn_fps_pis_sparrow_fl_dummy = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_fl_rail",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_fl_rail"
			},
			wpn_fps_pis_sparrow_g_dummy = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_g_941",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_g_941"
			},
			wpn_fps_pis_sparrow_sl_rpl = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_sl_941",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_sl_941"
			}
		}
	}
	self.parts.wpn_fps_pis_sparrow_body_rpl = {
		texture_bundle_folder = "rip",
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_sparrow_body_rpl",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_body_rpl",
		stats = {value = 1},
		override = {
			wpn_fps_pis_sparrow_b_941 = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_b_rpl",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_b_rpl"
			},
			wpn_fps_pis_sparrow_fl_rail = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_fl_dummy",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_fl_dummy"
			},
			wpn_fps_pis_sparrow_g_941 = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_g_dummy",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_g_dummy"
			},
			wpn_fps_pis_sparrow_sl_941 = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_sl_rpl",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_sl_rpl"
			},
			wpn_fps_pis_sparrow_b_rpl = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_b_rpl",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_b_rpl"
			},
			wpn_fps_pis_sparrow_fl_dummy = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_fl_dummy",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_fl_dummy"
			},
			wpn_fps_pis_sparrow_g_dummy = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_g_dummy",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_g_dummy"
			},
			wpn_fps_pis_sparrow_sl_rpl = {
				third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_sl_rpl",
				unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_sl_rpl"
			}
		},
		forbids = {"wpn_fps_pis_sparrow_g_cowboy"}
	}
	self.parts.wpn_fps_pis_sparrow_fl_rail = {
		texture_bundle_folder = "rip",
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_wp_sparrow_fl_rail",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_fl_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_sparrow_fl_dummy = {
		texture_bundle_folder = "rip",
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_wp_sparrow_fl_rail",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_fl_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_sparrow_g_941 = {
		texture_bundle_folder = "rip",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_sparrow_g_941",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_g_941",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_sparrow_g_cowboy = {
		type = "grip",
		texture_bundle_folder = "rip",
		a_obj = "a_g",
		dlc = "berry",
		name_id = "bm_wp_sparrow_g_cowboy",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_g_cowboy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 2,
			concealment = -2
		},
		forbids = {"wpn_fps_pis_sparrow_g_dummy"}
	}
	self.parts.wpn_fps_pis_sparrow_g_dummy = {
		texture_bundle_folder = "rip",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_sparrow_g_dummy",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_g_dummy",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_sparrow_m_standard = {
		texture_bundle_folder = "rip",
		type = "magazine",
		name_id = "bm_wp_sparrow_m_standard",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_sparrow_sl_941 = {
		texture_bundle_folder = "rip",
		a_obj = "a_sl",
		type = "slide",
		name_id = "bm_wp_sparrow_sl_941",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_sl_941",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_sparrow_sl_rpl = {
		texture_bundle_folder = "rip",
		a_obj = "a_sl",
		type = "slide",
		name_id = "bm_wp_sparrow_sl_rpl",
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow_pts/wpn_fps_pis_sparrow_sl_rpl",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_sparrow_b_941.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_b_941"
	self.parts.wpn_fps_pis_sparrow_b_rpl.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_b_rpl"
	self.parts.wpn_fps_pis_sparrow_b_comp.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_b_comp"
	self.parts.wpn_fps_pis_sparrow_b_threaded.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_b_threaded"
	self.parts.wpn_fps_pis_sparrow_body_941.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_body_941"
	self.parts.wpn_fps_pis_sparrow_body_rpl.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_body_rpl"
	self.parts.wpn_fps_pis_sparrow_fl_rail.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_fl_rail"
	self.parts.wpn_fps_pis_sparrow_g_941.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_g_941"
	self.parts.wpn_fps_pis_sparrow_g_cowboy.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_g_cowboy"
	self.parts.wpn_fps_pis_sparrow_m_standard.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_m_standard"
	self.parts.wpn_fps_pis_sparrow_sl_941.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_sl_941"
	self.parts.wpn_fps_pis_sparrow_sl_rpl.third_unit = "units/pd2_dlc_rip/weapons/wpn_third_pis_sparrow_pts/wpn_third_pis_sparrow_sl_rpl"
	self.wpn_fps_pis_sparrow = {
		unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow/wpn_fps_pis_sparrow",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_fl_pis_laser = {"wpn_fps_pis_sparrow_fl_dummy"},
			wpn_fps_upg_fl_pis_tlr1 = {"wpn_fps_pis_sparrow_fl_dummy"},
			wpn_fps_upg_fl_pis_crimson = {"wpn_fps_pis_sparrow_fl_dummy"},
			wpn_fps_upg_fl_pis_x400v = {"wpn_fps_pis_sparrow_fl_dummy"},
			wpn_fps_upg_fl_pis_m3x = {"wpn_fps_pis_sparrow_fl_dummy"}
		},
		override = {
			wpn_fps_upg_o_rmr = {parent = "slide"},
			wpn_fps_upg_pis_ns_flash = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_slim = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_ass_filter = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_jungle = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_small = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large_kac = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_gem = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_ipsccomp = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_meatgrinder = {
				a_obj = "a_ns",
				parent = "barrel"
			}
		},
		default_blueprint = {
			"wpn_fps_pis_sparrow_b_rpl",
			"wpn_fps_pis_sparrow_body_rpl",
			"wpn_fps_pis_sparrow_g_dummy",
			"wpn_fps_pis_sparrow_m_standard",
			"wpn_fps_pis_sparrow_sl_rpl"
		},
		uses_parts = {
			"wpn_fps_pis_sparrow_b_941",
			"wpn_fps_pis_sparrow_b_rpl",
			"wpn_fps_pis_sparrow_b_comp",
			"wpn_fps_pis_sparrow_b_threaded",
			"wpn_fps_pis_sparrow_body_941",
			"wpn_fps_pis_sparrow_body_rpl",
			"wpn_fps_pis_sparrow_fl_rail",
			"wpn_fps_pis_sparrow_fl_dummy",
			"wpn_fps_pis_sparrow_g_941",
			"wpn_fps_pis_sparrow_g_cowboy",
			"wpn_fps_pis_sparrow_g_dummy",
			"wpn_fps_pis_sparrow_m_standard",
			"wpn_fps_pis_sparrow_sl_941",
			"wpn_fps_pis_sparrow_sl_rpl",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_sparrow_npc = deep_clone(self.wpn_fps_pis_sparrow)
	self.wpn_fps_pis_sparrow_npc.unit = "units/pd2_dlc_rip/weapons/wpn_fps_pis_sparrow/wpn_fps_pis_sparrow_npc"
end

function WeaponFactoryTweakData:_init_model70()
	self.parts.wpn_fps_snp_model70_b_standard = {
		texture_bundle_folder = "berry",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_model70_b_standard",
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70_pts/wpn_fps_snp_model70_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_model70_ns_suppressor = {
		a_obj = "a_ns",
		texture_bundle_folder = "berry",
		sub_type = "silencer",
		type = "barrel_ext",
		parent = "barrel",
		name_id = "bm_wp_model70_ns_suppressor",
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70_pts/wpn_fps_snp_model70_ns_suppressor",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = -2,
			damage = -3,
			suppression = 12,
			value = 1,
			recoil = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_b"}
	}
	self.parts.wpn_fps_snp_model70_s_standard = {
		texture_bundle_folder = "berry",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_model70_s_standard",
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70_pts/wpn_fps_snp_model70_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_model70_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_model70_body_standard",
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70_pts/wpn_fps_snp_model70_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_snp_model70_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70_pts/wpn_fps_snp_model70_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_snp_model70_o_rail = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70_pts/wpn_fps_snp_model70_o_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_model70_fl_rail = {
		a_obj = "a_fl",
		type = "extra",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70_pts/wpn_fps_snp_model70_fl_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_model70_iron_sight = {
		is_a_unlockable = true,
		texture_bundle_folder = "berry",
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_model70_iron_sight",
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70_pts/wpn_fps_snp_model70_iron_sight",
		pcs = {},
		stats = {
			zoom = 3,
			recoil = -1,
			value = 0,
			concealment = 2
		},
		forbids = {
			"wpn_fps_upg_o_45iron",
			"wpn_fps_snp_model70_o_rail",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_45rds_v2",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.parts.wpn_fps_snp_model70_ns_suppressor.third_unit = "units/pd2_dlc_berry/weapons/wpn_third_snp_model70/wpn_third_snp_model70_ns_suppressor"
	self.parts.wpn_fps_snp_model70_b_standard.third_unit = "units/pd2_dlc_berry/weapons/wpn_third_snp_model70/wpn_third_snp_model70_b_standard"
	self.parts.wpn_fps_snp_model70_s_standard.third_unit = "units/pd2_dlc_berry/weapons/wpn_third_snp_model70/wpn_third_snp_model70_s_standard"
	self.parts.wpn_fps_snp_model70_body_standard.third_unit = "units/pd2_dlc_berry/weapons/wpn_third_snp_model70/wpn_third_snp_model70_body_standard"
	self.parts.wpn_fps_snp_model70_m_standard.third_unit = "units/pd2_dlc_berry/weapons/wpn_third_snp_model70/wpn_third_snp_model70_m_standard"
	self.parts.wpn_fps_snp_model70_o_rail.third_unit = "units/pd2_dlc_berry/weapons/wpn_third_snp_model70/wpn_third_snp_model70_o_rail"
	self.wpn_fps_snp_model70 = {
		unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70/wpn_fps_snp_model70",
		optional_types = {
			"gadget",
			"sight",
			"bayonet"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_shortdot = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_leupold = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_shortdot_vanilla = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_o_box = {"wpn_fps_snp_model70_o_rail"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {"wpn_fps_snp_model70_fl_rail"},
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {"wpn_fps_snp_model70_fl_rail"},
			wpn_fps_upg_fl_ass_peq15 = {"wpn_fps_snp_model70_fl_rail"},
			wpn_fps_upg_fl_ass_laser = {"wpn_fps_snp_model70_fl_rail"},
			wpn_fps_upg_fl_ass_utg = {"wpn_fps_snp_model70_fl_rail"}
		},
		default_blueprint = {
			"wpn_fps_snp_model70_b_standard",
			"wpn_fps_snp_model70_body_standard",
			"wpn_fps_snp_model70_s_standard",
			"wpn_fps_snp_model70_m_standard",
			"wpn_fps_upg_o_shortdot_vanilla"
		},
		uses_parts = {
			"wpn_fps_snp_model70_b_standard",
			"wpn_fps_snp_model70_s_standard",
			"wpn_fps_snp_model70_body_standard",
			"wpn_fps_snp_model70_m_standard",
			"wpn_fps_snp_model70_o_rail",
			"wpn_fps_snp_model70_fl_rail",
			"wpn_fps_snp_model70_iron_sight",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_shortdot_vanilla",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_snp_model70_b_legend",
			"wpn_fps_snp_model70_s_legend",
			"wpn_fps_snp_model70_ns_suppressor",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_snp_model70_npc = deep_clone(self.wpn_fps_snp_model70)
	self.wpn_fps_snp_model70_npc.unit = "units/pd2_dlc_berry/weapons/wpn_fps_snp_model70/wpn_fps_snp_model70_npc"
end

function WeaponFactoryTweakData:_init_legendary()
	self.parts.wpn_fps_ass_74_b_legend = {
		a_obj = "a_b",
		unatainable = true,
		type = "barrel",
		name_id = "bm_wp_upg_ass_74_b_legend",
		unit = "units/payday2_cash/safes/sputnik/weapons/wpn_fps_ass_74_rodina_pts/wpn_fps_ass_74_b_legend",
		stats = {
			spread = 8,
			recoil = 7,
			damage = 6,
			value = 1
		}
	}
	self.parts.wpn_upg_ak_fg_legend = {
		a_obj = "a_fg",
		unatainable = true,
		type = "foregrip",
		name_id = "bm_wp_upg_ass_74_fg_legend",
		unit = "units/payday2_cash/safes/sputnik/weapons/wpn_fps_ass_74_rodina_pts/wpn_upg_ak_fg_legend",
		stats = {value = 1}
	}
	self.parts.wpn_upg_ak_g_legend = {
		a_obj = "a_g",
		unatainable = true,
		type = "grip",
		name_id = "bm_wp_upg_ass_74_g_legend",
		unit = "units/payday2_cash/safes/sputnik/weapons/wpn_fps_ass_74_rodina_pts/wpn_upg_ak_g_legend",
		stats = {value = 1}
	}
	self.parts.wpn_upg_ak_s_legend = {
		a_obj = "a_s",
		unatainable = true,
		type = "stock",
		name_id = "bm_wp_upg_ass_74_s_legend",
		unit = "units/payday2_cash/safes/sputnik/weapons/wpn_fps_ass_74_rodina_pts/wpn_upg_ak_s_legend",
		stats = {value = 1}
	}
	self.parts.wpn_upg_ak_fl_legend = {
		sub_type = "laser",
		type = "gadget",
		name_id = "bm_wp_upg_ass_74_fl_legend",
		unit = "units/payday2_cash/safes/sputnik/weapons/wpn_fps_ass_74_rodina_pts/wpn_upg_ak_fl_legend",
		unatainable = true,
		a_obj = "a_body",
		stats = {value = 1},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_ass_74_b_legend.third_unit = "units/payday2_cash/safes/sputnik/weapons/wpn_fps_ass_74_rodina_pts/wpn_third_ass_74_b_legend"
	self.parts.wpn_upg_ak_fg_legend.third_unit = "units/payday2_cash/safes/sputnik/weapons/wpn_fps_ass_74_rodina_pts/wpn_third_upg_ak_fg_legend"
	self.parts.wpn_upg_ak_g_legend.third_unit = "units/payday2_cash/safes/sputnik/weapons/wpn_fps_ass_74_rodina_pts/wpn_third_upg_ak_g_legend"
	self.parts.wpn_upg_ak_s_legend.third_unit = "units/payday2_cash/safes/sputnik/weapons/wpn_fps_ass_74_rodina_pts/wpn_third_upg_ak_s_legend"
	self.parts.wpn_fps_pis_deagle_b_legend = {
		unatainable = true,
		type = "slide",
		name_id = "bm_wp_deagle_b_long",
		unit = "units/payday2_cash/safes/cf15/weapons/wpn_fps_pis_deagle_bling_pts/wpn_fps_pis_deagle_b_legend",
		a_obj = "a_b",
		stats = {
			spread = 2,
			concealment = -10,
			damage = 2,
			value = 1,
			recoil = 3
		},
		forbids = {
			"wpn_fps_pis_deagle_co_long",
			"wpn_fps_pis_deagle_co_short",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp"
		},
		override = {wpn_upg_o_marksmansight_front = {a_obj = "a_ol"}},
		third_unit = "units/payday2_cash/safes/cf15/weapons/wpn_fps_pis_deagle_bling_pts/wpn_third_pis_deagle_b_legend"
	}
	self.parts.wpn_fps_fla_mk2_body_fierybeast = {
		a_obj = "a_body",
		unatainable = true,
		type = "lower_reciever",
		name_id = "bm_wp_huntsman_body_standard",
		unit = "units/payday2_cash/safes/cop/weapons/wpn_fps_fla_mk2_body_fierybeast_pts/wpn_fps_fla_mk2_body_fierybeast",
		stats = {
			value = 1,
			total_ammo_mod = 5,
			damage = -2
		},
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_rpg7_m_grinclown = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_rpg7_m_rocket",
		unit = "units/payday2_cash/safes/cop/weapons/wpn_fps_rpg7_m_grinclown/wpn_fps_rpg7_m_grinclown",
		unatainable = true,
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {reload = "reload"},
		third_unit = "units/payday2_cash/safes/cop/weapons/wpn_fps_rpg7_m_grinclown/wpn_third_rpg7_m_grinclown"
	}
	self.parts.wpn_fps_lmg_m134_body_upper_spikey = {
		a_obj = "a_body",
		unatainable = true,
		type = "extra",
		name_id = "bm_wp_m134_body_upper_spikey",
		unit = "units/payday2_cash/safes/cop/weapons/wpn_fps_lmg_m134_legend_pts/wpn_fps_lmg_m134_body_upper_spikey",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_m134_barrel_legendary = {
		a_obj = "a_b",
		unatainable = true,
		type = "barrel",
		name_id = "bm_wp_m134_barrel_legendary",
		unit = "units/payday2_cash/safes/cop/weapons/wpn_fps_lmg_m134_legend_pts/wpn_fps_lmg_m134_barrel_legendary",
		stats = {value = 1},
		animations = {
			fire_steelsight = "recoil",
			fire = "recoil"
		}
	}
	self.parts.wpn_fps_lmg_m134_body_upper_spikey.third_unit = "units/payday2_cash/safes/cop/weapons/wpn_fps_lmg_m134_legend_pts/wpn_third_lmg_m134_body_upper_spikey"
	self.parts.wpn_fps_lmg_m134_barrel_legendary.third_unit = "units/payday2_cash/safes/cop/weapons/wpn_fps_lmg_m134_legend_pts/wpn_third_lmg_m134_barrel_legendary"
	self.parts.wpn_fps_smg_p90_b_legend = {
		a_obj = "a_b",
		unatainable = true,
		type = "slide",
		name_id = "bm_wp_p90_b_legend ",
		unit = "units/payday2_cash/safes/dallas/weapons/wpn_fps_smg_p90_b_legendary/wpn_fps_smg_p90_b_legend",
		stats = {value = 1},
		third_unit = "units/payday2_cash/safes/dallas/weapons/wpn_third_smg_p90_b_legendary/wpn_third_smg_p90_b_legend"
	}
	self.parts.wpn_fps_shot_r870_b_legendary = {
		a_obj = "a_b",
		unatainable = true,
		type = "barrel",
		name_id = "bm_wp_r870_b_legend ",
		unit = "units/payday2_cash/safes/surf/weapons/wpn_fps_shot_r870_b_legend/wpn_fps_shot_r870_b_legendary",
		stats = {
			value = 1,
			recoil = 10,
			damage = 3,
			extra_ammo = 2
		},
		stance_mod = {wpn_fps_shot_r870 = {translation = Vector3(0, 0, 0.8)}}
	}
	self.parts.wpn_fps_shot_r870_s_legendary = {
		a_obj = "a_s",
		unatainable = true,
		type = "stock",
		name_id = "bm_wp_r870_b_legend ",
		unit = "units/payday2_cash/safes/surf/weapons/wpn_fps_shot_r870_fg_legend/wpn_fps_shot_r870_s_legendary",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_r870_fg_legendary = {
		a_obj = "a_fg",
		unatainable = true,
		type = "foregrip",
		name_id = "bm_wp_r870_b_legend ",
		unit = "units/payday2_cash/safes/surf/weapons/wpn_fps_shot_r870_fg_legend/wpn_fps_shot_r870_fg_legendary",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil_zoom"
		}
	}
	self.parts.wpn_fps_shot_r870_b_legendary.third_unit = "units/payday2_cash/safes/surf/weapons/wpn_fps_shot_r870_b_legend/wpn_third_shot_r870_b_legendary"
	self.parts.wpn_fps_shot_r870_s_legendary.third_unit = "units/payday2_cash/safes/surf/weapons/wpn_fps_shot_r870_fg_legend/wpn_third_shot_r870_s_legendary"
	self.parts.wpn_fps_shot_r870_fg_legendary.third_unit = "units/payday2_cash/safes/surf/weapons/wpn_fps_shot_r870_fg_legend/wpn_third_shot_r870_fg_legendary"
	self.parts.wpn_fps_pis_1911_g_legendary = {
		a_obj = "a_g",
		unatainable = true,
		type = "grip",
		name_id = "bm_wp_1911_g_legendary",
		unit = "units/payday2_cash/safes/flake/weapons/wpn_fps_pis_1911_g_legendary/wpn_fps_pis_1911_g_legendary",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_1911_fl_legendary = {
		sub_type = "laser",
		type = "gadget",
		name_id = "bm_wp_1911_fl_legendary",
		unit = "units/payday2_cash/safes/flake/weapons/wpn_fps_pis_1911_fl_legendary/wpn_fps_pis_1911_fl_legendary",
		unatainable = true,
		a_obj = "a_fl",
		stats = {
			spread = 3,
			recoil = 1,
			concealment = 1,
			value = 1
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_pis_1911_g_legendary.third_unit = "units/payday2_cash/safes/flake/weapons/wpn_fps_pis_1911_g_legendary/wpn_third_pis_1911_g_legendary"
	self.parts.wpn_fps_pis_1911_fl_legendary.third_unit = "units/payday2_cash/safes/flake/weapons/wpn_fps_pis_1911_fl_legendary/wpn_third_pis_1911_fl_legendary"
	self.parts.wpn_fps_snp_model70_b_legend = {
		texture_bundle_folder = "berry",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_model70_b_standard",
		unit = "units/payday2_cash/safes/bah/weapons/wpn_fps_snp_model70_legendary_pts/wpn_fps_snp_model70_b_legend",
		unatainable = true,
		stats = {value = 1},
		stance_mod = {wpn_fps_snp_model70 = {translation = Vector3(0, -5, 0)}}
	}
	self.parts.wpn_fps_snp_model70_s_legend = {
		texture_bundle_folder = "berry",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_model70_s_standard",
		unit = "units/payday2_cash/safes/bah/weapons/wpn_fps_snp_model70_legendary_pts/wpn_fps_snp_model70_s_legend",
		unatainable = true,
		stats = {
			spread = 3,
			recoil = 1,
			concealment = 1,
			value = 1
		}
	}
	self.parts.wpn_fps_snp_model70_b_legend.third_unit = "units/payday2_cash/safes/bah/weapons/wpn_fps_snp_model70_legendary_pts/wpn_third_snp_model70_b_legend"
	self.parts.wpn_fps_snp_model70_s_legend.third_unit = "units/payday2_cash/safes/bah/weapons/wpn_fps_snp_model70_legendary_pts/wpn_third_snp_model70_s_legend"
	self.parts.wpn_fps_lmg_svinet_b_standard = {
		a_obj = "a_b",
		unatainable = true,
		type = "barrel",
		name_id = "bm_wp_svinet_b_standard",
		unit = "units/payday2_cash/safes/pack/weapons/wpn_fps_lmg_ksp58_b_legendary/wpn_fps_lmg_svinet_b_standard",
		stats = {
			spread = 3,
			recoil = 3,
			value = 1
		}
	}
	self.parts.wpn_fps_lmg_svinet_s_legend = {
		a_obj = "a_s",
		unatainable = true,
		type = "stock",
		name_id = "bm_wp_svinet_s_legend",
		unit = "units/payday2_cash/safes/pack/weapons/wpn_fps_lmg_ksp58_s_legendary/wpn_fps_lmg_svinet_s_legend",
		stats = {value = 1}
	}
	self.parts.wpn_fps_lmg_svinet_b_standard.third_unit = "units/payday2_cash/safes/pack/weapons/wpn_fps_lmg_ksp58_b_legendary/wpn_third_lmg_svinet_b_legend"
	self.parts.wpn_fps_lmg_svinet_s_legend.third_unit = "units/payday2_cash/safes/pack/weapons/wpn_fps_lmg_ksp58_s_legendary/wpn_third_lmg_svinet_s_legend"
	self.parts.wpn_fps_ass_m16_b_legend = {
		a_obj = "a_b",
		unatainable = true,
		type = "barrel",
		name_id = "bm_wp_m16_b_legend",
		unit = "units/payday2_cash/safes/cola/weapons/wpn_fps_ass_m16_legendary/wpn_fps_ass_m16_b_legend",
		stats = {
			spread = 3,
			recoil = 3,
			value = 1
		},
		forbids = {"wpn_fps_ass_m16_os_frontsight"}
	}
	self.parts.wpn_fps_ass_m16_fg_legend = {
		a_obj = "a_fg",
		type = "gadget",
		name_id = "bm_wp_m16_fg_legend",
		unit = "units/payday2_cash/safes/cola/weapons/wpn_fps_ass_m16_legendary/wpn_fps_ass_m16_fg_legend",
		unatainable = true,
		stats = {value = 1},
		stance_mod = {wpn_fps_ass_m16 = {translation = Vector3(0, 10, -0.12)}},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_ass_m16_s_legend = {
		a_obj = "a_s",
		unatainable = true,
		type = "stock",
		name_id = "bm_wp_m16_s_legend",
		unit = "units/payday2_cash/safes/cola/weapons/wpn_fps_ass_m16_legendary/wpn_fps_ass_m16_s_legend",
		stats = {
			spread = 6,
			concealment = -6,
			damage = 3,
			value = 1,
			recoil = 10
		},
		stance_mod = {wpn_fps_ass_m16 = {translation = Vector3(0, 10, -0.12)}}
	}
	self.parts.wpn_fps_ass_m16_b_legend.third_unit = "units/payday2_cash/safes/cola/weapons/wpn_fps_ass_m16_legendary/wpn_third_ass_m16_b_legend"
	self.parts.wpn_fps_ass_m16_fg_legend.third_unit = "units/payday2_cash/safes/cola/weapons/wpn_fps_ass_m16_legendary/wpn_third_ass_m16_fg_legend"
	self.parts.wpn_fps_ass_m16_s_legend.third_unit = "units/payday2_cash/safes/cola/weapons/wpn_fps_ass_m16_legendary/wpn_third_ass_m16_s_legend"
	self.parts.wpn_fps_pis_judge_b_legend = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_judge_b_legend",
		unit = "units/payday2_cash/safes/burn/weapons/wpn_fps_pis_judge_b_legend/wpn_fps_pis_judge_b_legend",
		unatainable = true,
		stats = {
			spread = -3,
			recoil = 6,
			value = 1,
			total_ammo_mod = 2
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_pis_judge_g_legend = {
		a_obj = "a_g",
		unatainable = true,
		type = "grip",
		name_id = "bm_wp_judge_g_legend",
		unit = "units/payday2_cash/safes/burn/weapons/wpn_fps_pis_judge_g_legend/wpn_fps_pis_judge_g_legend",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_judge_b_legend.third_unit = "units/payday2_cash/safes/burn/weapons/wpn_fps_pis_judge_b_legend/wpn_third_pis_judge_b_legend"
	self.parts.wpn_fps_pis_judge_g_legend.third_unit = "units/payday2_cash/safes/burn/weapons/wpn_fps_pis_judge_g_legend/wpn_third_pis_judge_g_legend"
	self.parts.wpn_fps_sho_boot_b_legendary = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_boot_b_legend",
		unit = "units/payday2_cash/safes/buck/weapons/wpn_fps_sho_boot_legendary/wpn_fps_sho_boot_b_legendary",
		unatainable = true,
		stats = {
			spread = -3,
			recoil = 6,
			value = 1,
			total_ammo_mod = 2
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_sho_boot_fg_legendary = {
		a_obj = "a_fg",
		unatainable = true,
		type = "foregrip",
		name_id = "bm_wp_boot_fg_legend",
		unit = "units/payday2_cash/safes/buck/weapons/wpn_fps_sho_boot_legendary/wpn_fps_sho_boot_fg_legendary",
		stats = {
			value = 1,
			damage = 20
		}
	}
	self.parts.wpn_fps_sho_boot_o_legendary = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_boot_o_legend",
		unit = "units/payday2_cash/safes/buck/weapons/wpn_fps_sho_boot_legendary/wpn_fps_sho_boot_o_legendary",
		unatainable = true,
		stats = {
			value = 1,
			zoom = 1
		},
		perks = {"scope"},
		stance_mod = {wpn_fps_sho_boot = {translation = Vector3(0, -5, -1.5)}}
	}
	self.parts.wpn_fps_sho_boot_s_legendary = {
		a_obj = "a_s",
		unatainable = true,
		type = "stock",
		name_id = "bm_wp_boot_s_legend",
		unit = "units/payday2_cash/safes/buck/weapons/wpn_fps_sho_boot_legendary/wpn_fps_sho_boot_s_legendary",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_boot_b_legendary.third_unit = "units/payday2_cash/safes/buck/weapons/wpn_third_sho_boot_legendary/wpn_third_sho_boot_b_legendary"
	self.parts.wpn_fps_sho_boot_fg_legendary.third_unit = "units/payday2_cash/safes/buck/weapons/wpn_third_sho_boot_legendary/wpn_third_sho_boot_fg_legendary"
	self.parts.wpn_fps_sho_boot_o_legendary.third_unit = "units/payday2_cash/safes/buck/weapons/wpn_third_sho_boot_legendary/wpn_third_sho_boot_o_legendary"
	self.parts.wpn_fps_sho_boot_s_legendary.third_unit = "units/payday2_cash/safes/buck/weapons/wpn_third_sho_boot_legendary/wpn_third_sho_boot_s_legendary"
	self.parts.wpn_fps_sho_ksg_b_legendary = {
		sub_type = "silencer",
		type = "barrel",
		name_id = "bm_wp_ksg_b_legend",
		unit = "units/payday2_cash/safes/same/weapons/wpn_fps_sho_ksg_b_legendary/wpn_fps_sho_ksg_b_legendary",
		unatainable = true,
		a_obj = "a_b",
		stats = {
			extra_ammo = 2,
			total_ammo_mod = 2,
			spread = -1,
			value = 1,
			recoil = 6
		},
		perks = {"gadget"},
		third_unit = "units/payday2_cash/safes/same/weapons/wpn_third_sho_ksg_b_legendary/wpn_third_sho_ksg_b_legendary"
	}
	self.parts.wpn_fps_ass_tecci_b_legend = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_tecci_b_legend",
		unit = "units/payday2_cash/safes/grunt/weapons/wpn_fps_ass_tecci_legendary/wpn_fps_ass_tecci_b_legend",
		unatainable = true,
		stats = {
			spread = 4,
			recoil = 3,
			value = 1,
			concealment = 4
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_ass_tecci_fg_legend = {
		a_obj = "a_fg",
		unatainable = true,
		type = "foregrip",
		name_id = "bm_wp_tecci_fg_legend",
		unit = "units/payday2_cash/safes/grunt/weapons/wpn_fps_ass_tecci_legendary/wpn_fps_ass_tecci_fg_legend",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_s_legend = {
		a_obj = "a_s",
		unatainable = true,
		type = "stock",
		name_id = "bm_wp_tecci_s_legend",
		unit = "units/payday2_cash/safes/grunt/weapons/wpn_fps_ass_tecci_legendary/wpn_fps_ass_tecci_s_legend",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_b_legend.third_unit = "units/payday2_cash/safes/grunt/weapons/wpn_third_ass_tecci_legendary/wpn_third_ass_tecci_b_legend"
	self.parts.wpn_fps_ass_tecci_fg_legend.third_unit = "units/payday2_cash/safes/grunt/weapons/wpn_third_ass_tecci_legendary/wpn_third_ass_tecci_fg_legend"
	self.parts.wpn_fps_ass_tecci_s_legend.third_unit = "units/payday2_cash/safes/grunt/weapons/wpn_third_ass_tecci_legendary/wpn_third_ass_tecci_s_legend"
	self.parts.wpn_fps_shot_shorty_b_legendary = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_shorty_b_legend",
		unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_shot_shorty_legendary_pts/wpn_fps_shot_shorty_b_legendary",
		unatainable = true,
		stats = {
			spread = -1,
			recoil = 5,
			value = 1,
			extra_ammo = 2
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_shot_shorty_fg_legendary = {
		a_obj = "a_fg",
		unatainable = true,
		type = "foregrip",
		name_id = "bm_wp_shorty_fg_legend",
		unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_shot_shorty_legendary_pts/wpn_fps_shot_shorty_fg_legendary",
		stats = {
			value = 1,
			damage = 15
		},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil_zoom"
		}
	}
	self.parts.wpn_fps_shot_shorty_s_legendary = {
		a_obj = "a_s",
		unatainable = true,
		type = "stock",
		name_id = "bm_wp_shorty_s_legend",
		unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_shot_shorty_legendary_pts/wpn_fps_shot_shorty_s_legendary",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_shorty_b_legendary.third_unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_shot_shorty_legendary_pts/wpn_third_shot_shorty_b_legendary"
	self.parts.wpn_fps_shot_shorty_fg_legendary.third_unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_shot_shorty_legendary_pts/wpn_third_shot_shorty_fg_legendary"
	self.parts.wpn_fps_shot_shorty_s_legendary.third_unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_shot_shorty_legendary_pts/wpn_third_shot_shorty_s_legendary"
	self.parts.wpn_fps_ass_m14_b_legendary = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m14_b_legend",
		unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_ass_m14_legendary_pts/wpn_fps_ass_m14_b_legendary",
		unatainable = true,
		stats = {
			spread = 5,
			recoil = 2,
			value = 1
		},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_ass_m14_body_legendary = {
		a_obj = "a_body",
		unatainable = true,
		type = "stock",
		name_id = "bm_wp_m14_body_legend",
		unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_ass_m14_legendary_pts/wpn_fps_ass_m14_body_legendary",
		stats = {
			value = 1,
			damage = 3
		}
	}
	self.parts.wpn_fps_ass_m14_body_upper_legendary = {
		a_obj = "a_body",
		type = "upper_body",
		name_id = "bm_wp_m14_upper_legend",
		unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_ass_m14_legendary_pts/wpn_fps_ass_m14_body_upper_legendary",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_ass_m14_body_lower_legendary = {
		a_obj = "a_body",
		type = "lower_body",
		name_id = "bm_wp_m14_body_lower_legend",
		unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_ass_m14_legendary_pts/wpn_fps_ass_m14_body_lower_legendary",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_m14_b_legendary.third_unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_ass_m14_legendary_pts/wpn_third_ass_m14_b_legendary"
	self.parts.wpn_fps_ass_m14_body_legendary.third_unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_ass_m14_legendary_pts/wpn_third_ass_m14_body_legendary"
	self.parts.wpn_fps_ass_m14_body_upper_legendary.third_unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_ass_m14_legendary_pts/wpn_third_ass_m14_body_upper_legendary"
	self.parts.wpn_fps_ass_m14_body_lower_legendary.third_unit = "units/payday2_cash/safes/lones/weapons/wpn_fps_ass_m14_legendary_pts/wpn_third_ass_m14_body_lower_legendary"
end

function WeaponFactoryTweakData:_init_cc_material_config()
	local parts = self.parts
	parts.wpn_fps_smg_m45_s_folded.material_config = Idstring("units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_s_standard")
	parts.wpn_fps_smg_m45_s_folded.thq_material_config = Idstring("units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_s_standard_thq")
	parts.wpn_fps_smg_m45_s_folded.cc_thq_material_config = Idstring("units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_s_standard_cc_thq")
	parts.wpn_fps_smg_m45_s_folded.cc_material_config = Idstring("units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_s_standard_cc")
	parts.wpn_fps_smg_m45_b_small.bmaterial_config = Idstring("units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_b_standard")
	parts.wpn_fps_smg_m45_b_small.thq_material_config = Idstring("units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_b_standard_thq")
	parts.wpn_fps_smg_m45_b_small.cc_thq_material_config = Idstring("units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_b_standard_cc_thq")
	parts.wpn_fps_smg_m45_b_small.cc_material_config = Idstring("units/pd2_dlc1/weapons/wpn_fps_smg_m45_pts/wpn_fps_smg_m45_b_standard_cc")
	parts.wpn_fps_pis_c96_nozzle.material_config = Idstring("units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_body_standard")
	parts.wpn_fps_pis_c96_nozzle.thq_material_config = Idstring("units/pd2_dlc_gage_historical/weapons/wpn_fps_pis_c96_pts/wpn_fps_pis_c96_body_standard_thq")
	parts.wpn_fps_pis_g18c_body_frame.material_config = Idstring("units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_frame")
	parts.wpn_fps_pis_g18c_body_frame.thq_material_config = Idstring("units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_frame_thq")
	parts.wpn_fps_pis_g18c_body_frame.cc_thq_material_config = Idstring("units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_frame_cc_thq")
	parts.wpn_fps_pis_g18c_body_frame.cc_material_config = Idstring("units/payday2/weapons/wpn_fps_pis_g18c_pts/wpn_fps_pis_g18c_frame_cc")
	parts.wpn_fps_upg_o_mbus_rear.material_config = Idstring("units/pd2_dlc_gage_shot/weapons/wpn_fps_upg_o_mbus/wpn_fps_upg_o_mbus_front")
	parts.wpn_fps_upg_o_mbus_rear.thq_material_config = Idstring("units/pd2_dlc_gage_shot/weapons/wpn_fps_upg_o_mbus/wpn_fps_upg_o_mbus_front_thq")
	parts.wpn_fps_aug_ris_special.material_config = Idstring("units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_body_aug")
	parts.wpn_fps_aug_ris_special.thq_material_config = Idstring("units/payday2/weapons/wpn_fps_ass_aug_pts/wpn_fps_aug_body_aug_thq")
end

function WeaponFactoryTweakData:_init_bipods()
	self.parts.wpn_fps_upg_bp_lmg_lionbipod = {
		texture_bundle_folder = "par",
		type = "bipod",
		a_obj = "a_bp",
		sub_type = "bipod",
		name_id = "bm_wp_upg_lmg_lionbipod",
		unit = "units/pd2_crimefest_2015/update_5/weapons/wpn_fps_upg_bp_lmg_lionbipod/wpn_fps_upg_bp_lmg_lionbipod",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 0,
			zoom = 1
		},
		animations = {
			undeploy = "undeploy",
			deploy = "deploy"
		},
		forbids = {"wpn_fps_lmg_hk21_fg_short"},
		perks = {"bipod"},
		third_unit = "units/pd2_crimefest_2015/update_5/weapons/wpn_fps_upg_bp_lmg_lionbipod/wpn_third_upg_bp_lmg_lionbipod"
	}

	table.map_append(self.parts.wpn_fps_lmg_hk21_fg_short, {forbids = {"wpn_fps_upg_bp_lmg_lionbipod"}})
	table.list_append(self.wpn_fps_lmg_hk21.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
	table.list_append(self.wpn_fps_lmg_hk21_npc.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
	table.list_append(self.wpn_fps_lmg_m249.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
	table.list_append(self.wpn_fps_lmg_m249_npc.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
	table.list_append(self.wpn_fps_lmg_rpk.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
	table.list_append(self.wpn_fps_lmg_rpk_npc.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
	table.list_append(self.wpn_fps_lmg_mg42.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
	table.list_append(self.wpn_fps_lmg_mg42_npc.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
	table.list_append(self.wpn_fps_lmg_par.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
	table.list_append(self.wpn_fps_lmg_par_npc.uses_parts, {"wpn_fps_upg_bp_lmg_lionbipod"})
end

function WeaponFactoryTweakData:_init_m37()
	self.parts.wpn_fps_shot_m37_b_short = {
		texture_bundle_folder = "peta",
		dlc = "peta",
		type = "barrel",
		name_id = "bm_wp_m37_b_short",
		unit = "units/pd2_dlc_peta/weapons/wpn_fps_shot_m37_pts/wpn_fps_shot_m37_b_short",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -2,
			value = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_shot_m37_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m37_b_standard",
		unit = "units/pd2_dlc_peta/weapons/wpn_fps_shot_m37_pts/wpn_fps_shot_m37_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_m37_s_short = {
		texture_bundle_folder = "peta",
		dlc = "peta",
		type = "stock",
		name_id = "bm_wp_m37_s_short",
		unit = "units/pd2_dlc_peta/weapons/wpn_fps_shot_m37_pts/wpn_fps_shot_m37_s_short",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = -2,
			concealment = 2
		}
	}
	self.parts.wpn_fps_shot_m37_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m37_s_standard",
		unit = "units/pd2_dlc_peta/weapons/wpn_fps_shot_m37_pts/wpn_fps_shot_m37_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_m37_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m37_m_standard",
		unit = "units/pd2_dlc_peta/weapons/wpn_fps_shot_m37_pts/wpn_fps_shot_m37_m_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_m37_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_m37_body_standard",
		unit = "units/pd2_dlc_peta/weapons/wpn_fps_shot_m37_pts/wpn_fps_shot_m37_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_shot_m37_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m37_fg_standard",
		unit = "units/pd2_dlc_peta/weapons/wpn_fps_shot_m37_pts/wpn_fps_shot_m37_fg_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_shot_m37_b_short.third_unit = "units/pd2_dlc_peta/weapons/wpn_third_shot_m37_pts/wpn_third_shot_m37_b_short"
	self.parts.wpn_fps_shot_m37_b_standard.third_unit = "units/pd2_dlc_peta/weapons/wpn_third_shot_m37_pts/wpn_third_shot_m37_b_standard"
	self.parts.wpn_fps_shot_m37_s_short.third_unit = "units/pd2_dlc_peta/weapons/wpn_third_shot_m37_pts/wpn_third_shot_m37_s_short"
	self.parts.wpn_fps_shot_m37_s_standard.third_unit = "units/pd2_dlc_peta/weapons/wpn_third_shot_m37_pts/wpn_third_shot_m37_s_standard"
	self.parts.wpn_fps_shot_m37_m_standard.third_unit = "units/pd2_dlc_peta/weapons/wpn_third_shot_m37_pts/wpn_third_shot_m37_m_standard"
	self.parts.wpn_fps_shot_m37_body_standard.third_unit = "units/pd2_dlc_peta/weapons/wpn_third_shot_m37_pts/wpn_third_shot_m37_body_standard"
	self.parts.wpn_fps_shot_m37_fg_standard.third_unit = "units/pd2_dlc_peta/weapons/wpn_third_shot_m37_pts/wpn_third_shot_m37_fg_standard"
	self.wpn_fps_shot_m37 = {
		unit = "units/pd2_dlc_peta/weapons/wpn_fps_shot_m37/wpn_fps_shot_m37",
		animations = {
			reload_exit = "reload_exit",
			fire = "recoil",
			fire_steelsight = "recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		override = {
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {
				a_obj = "a_fl",
				parent = "foregrip"
			},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {
				a_obj = "a_fl",
				parent = "foregrip"
			},
			wpn_fps_upg_fl_ass_peq15 = {
				a_obj = "a_fl",
				parent = "foregrip"
			},
			wpn_fps_upg_fl_ass_laser = {
				a_obj = "a_fl",
				parent = "foregrip"
			},
			wpn_fps_upg_fl_ass_utg = {
				a_obj = "a_fl",
				parent = "foregrip"
			}
		},
		default_blueprint = {
			"wpn_fps_shot_m37_b_standard",
			"wpn_fps_shot_m37_s_standard",
			"wpn_fps_shot_m37_m_standard",
			"wpn_fps_shot_m37_body_standard",
			"wpn_fps_shot_m37_fg_standard"
		},
		uses_parts = {
			"wpn_fps_shot_m37_b_short",
			"wpn_fps_shot_m37_b_standard",
			"wpn_fps_shot_m37_s_short",
			"wpn_fps_shot_m37_s_standard",
			"wpn_fps_shot_m37_m_standard",
			"wpn_fps_shot_m37_body_standard",
			"wpn_fps_shot_m37_fg_standard",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_duck"
		}
	}
	self.wpn_fps_shot_m37_npc = deep_clone(self.wpn_fps_shot_m37)
	self.wpn_fps_shot_m37_npc.unit = "units/pd2_dlc_peta/weapons/wpn_fps_shot_m37/wpn_fps_shot_m37_npc"
end

function WeaponFactoryTweakData:_init_china()
	self.parts.wpn_fps_gre_china_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_gre_china_barrel",
		unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china_pts/wpn_fps_gre_china_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_china_body_standard = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_china_receiver",
		unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china_pts/wpn_fps_gre_china_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil",
			reload_enter = "reload_enter"
		}
	}
	self.parts.wpn_fps_gre_china_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_china_receiver",
		unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china_pts/wpn_fps_gre_china_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_china_m_standard = {
		a_obj = "a_body",
		type = "extra",
		name_id = "bm_wp_gre_china_m_standard",
		unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china_pts/wpn_fps_gre_china_m_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_china_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_china_stock_standard",
		unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china_pts/wpn_fps_gre_china_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_m79_grenade_whole = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_gre_m79_grenade",
		unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china_pts/wpn_fps_gre_m79_grenade_whole",
		bullet_objects = {
			amount = 1,
			prefix = "g_grenade_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_china_s_short = {
		texture_bundle_folder = "lupus",
		dlc = "pal",
		type = "stock",
		name_id = "bm_wp_china_stock_short",
		unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china_pts/wpn_fps_gre_china_s_short",
		a_obj = "a_s",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = -1,
			spread = 0,
			concealment = 4
		}
	}
	self.parts.wpn_fps_gre_china_b_standard.third_unit = "units/pd2_dlc_lupus/weapons/wpn_third_gre_china_pts/wpn_third_gre_china_b_standard"
	self.parts.wpn_fps_gre_china_body_standard.third_unit = "units/pd2_dlc_lupus/weapons/wpn_third_gre_china_pts/wpn_third_gre_china_body_standard"
	self.parts.wpn_fps_gre_china_fg_standard.third_unit = "units/pd2_dlc_lupus/weapons/wpn_third_gre_china_pts/wpn_third_gre_china_fg_standard"
	self.parts.wpn_fps_gre_china_m_standard.third_unit = "units/pd2_dlc_lupus/weapons/wpn_third_gre_china_pts/wpn_third_gre_china_m_standard"
	self.parts.wpn_fps_gre_china_s_short.third_unit = "units/pd2_dlc_lupus/weapons/wpn_third_gre_china_pts/wpn_third_gre_china_s_short"
	self.parts.wpn_fps_gre_china_s_standard.third_unit = "units/pd2_dlc_lupus/weapons/wpn_third_gre_china_pts/wpn_third_gre_china_s_standard"
	self.parts.wpn_fps_gre_m79_grenade_whole.third_unit = "units/pd2_dlc_gage_assault/weapons/wpn_fps_gre_m79_pts/wpn_third_gre_m79_grenade"
	self.wpn_fps_gre_china = {
		unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china/wpn_fps_gre_china",
		animations = {
			fire = "recoil",
			reload_exit = "reload_exit",
			fire_steelsight = "recoil",
			reload_enter = "reload_enter"
		},
		default_blueprint = {
			"wpn_fps_gre_china_b_standard",
			"wpn_fps_gre_china_body_standard",
			"wpn_fps_gre_china_fg_standard",
			"wpn_fps_gre_m79_sight_up",
			"wpn_fps_gre_china_m_standard",
			"wpn_fps_gre_china_s_standard",
			"wpn_fps_gre_m79_grenade_whole"
		},
		uses_parts = {
			"wpn_fps_gre_china_b_standard",
			"wpn_fps_gre_china_body_standard",
			"wpn_fps_gre_china_fg_standard",
			"wpn_fps_gre_m79_sight_up",
			"wpn_fps_gre_china_m_standard",
			"wpn_fps_gre_china_s_standard",
			"wpn_fps_gre_m79_grenade_whole",
			"wpn_fps_gre_china_s_short"
		}
	}
	self.wpn_fps_gre_china_npc = deep_clone(self.wpn_fps_gre_china)
	self.wpn_fps_gre_china_npc.unit = "units/pd2_dlc_lupus/weapons/wpn_fps_gre_china/wpn_fps_gre_china_npc"
end

function WeaponFactoryTweakData:_init_sr2()
	self.parts.wpn_fps_smg_sr2_body_lower = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_fps_smg_sr2_body_lower",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_sr2_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_fps_smg_sr2_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_sr2_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_fps_smg_sr2_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_sr2_m_mag = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_fps_smg_sr2_m_mag",
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_sr2_s_folded = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_fps_smg_sr2_s_folded",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_sr2_s_unfolded = {
		texture_bundle_folder = "coco",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_sr2_s_unfolded",
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_fps_smg_sr2_s_unfolded",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 0,
			recoil = 2
		}
	}
	self.parts.wpn_fps_smg_sr2_vg_standard = {
		a_obj = "a_vg",
		type = "vertical_grip",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_fps_smg_sr2_vg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_sr2_ns_silencer = {
		type = "barrel_ext",
		texture_bundle_folder = "coco",
		sub_type = "silencer",
		a_obj = "a_ns",
		parent = "barrel",
		name_id = "bm_wp_sr2_ns_silencer",
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_fps_smg_sr2_ns_silencer",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = -1,
			damage = -2,
			suppression = 12,
			value = 3,
			recoil = 2,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_smg_sr2_o_rail = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_standard",
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_fps_smg_sr2_o_rail",
		stats = {value = 0}
	}
	self.parts.wpn_fps_smg_sr2_body_lower.third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_third_smg_sr2_body_lower"
	self.parts.wpn_fps_smg_sr2_b_standard.third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_third_smg_sr2_b_standard"
	self.parts.wpn_fps_smg_sr2_fg_standard.third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_third_smg_sr2_fg_standard"
	self.parts.wpn_fps_smg_sr2_m_mag.third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_third_smg_sr2_m_mag"
	self.parts.wpn_fps_smg_sr2_s_folded.third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_third_smg_sr2_s_folded"
	self.parts.wpn_fps_smg_sr2_s_unfolded.third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_third_smg_sr2_s_unfolded"
	self.parts.wpn_fps_smg_sr2_vg_standard.third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_third_smg_sr2_vg_standard"
	self.parts.wpn_fps_smg_sr2_ns_silencer.third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_third_smg_sr2_ns_silencer"
	self.parts.wpn_fps_smg_sr2_o_rail.third_unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2_parts/wpn_third_smg_sr2_o_rail"
	self.wpn_fps_smg_sr2 = {
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2/wpn_fps_smg_sr2",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_sr2_o_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_sr2_o_rail"}
		},
		default_blueprint = {
			"wpn_fps_smg_sr2_body_lower",
			"wpn_fps_smg_sr2_b_standard",
			"wpn_fps_smg_sr2_fg_standard",
			"wpn_fps_smg_sr2_m_mag",
			"wpn_fps_smg_sr2_s_folded",
			"wpn_fps_smg_sr2_vg_standard"
		},
		uses_parts = {
			"wpn_fps_smg_sr2_body_lower",
			"wpn_fps_smg_sr2_b_standard",
			"wpn_fps_smg_sr2_fg_standard",
			"wpn_fps_smg_sr2_m_mag",
			"wpn_fps_smg_sr2_s_folded",
			"wpn_fps_smg_sr2_s_unfolded",
			"wpn_fps_smg_sr2_vg_standard",
			"wpn_fps_smg_sr2_ns_silencer",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_smg_sr2_m_quick"
		}
	}
	self.wpn_fps_smg_sr2_npc = deep_clone(self.wpn_fps_smg_sr2)
	self.wpn_fps_smg_sr2_npc.unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_sr2/wpn_fps_smg_sr2_npc"
end

function WeaponFactoryTweakData:_init_x_sr2()
	self.wpn_fps_smg_x_sr2 = {
		unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_x_sr2/wpn_fps_smg_x_sr2",
		optional_types = {
			"gadget",
			"barrel_ext"
		},
		override = {},
		default_blueprint = {
			"wpn_fps_smg_sr2_body_lower",
			"wpn_fps_smg_sr2_b_standard",
			"wpn_fps_smg_sr2_fg_standard",
			"wpn_fps_smg_sr2_m_mag",
			"wpn_fps_smg_sr2_s_folded",
			"wpn_fps_smg_sr2_vg_standard"
		},
		uses_parts = {
			"wpn_fps_smg_sr2_body_lower",
			"wpn_fps_smg_sr2_b_standard",
			"wpn_fps_smg_sr2_fg_standard",
			"wpn_fps_smg_sr2_m_mag",
			"wpn_fps_smg_sr2_s_folded",
			"wpn_fps_smg_sr2_s_unfolded",
			"wpn_fps_smg_sr2_vg_standard",
			"wpn_fps_smg_sr2_ns_silencer",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_smg_sr2_m_quick"
		}
	}
	self.wpn_fps_smg_x_sr2_npc = deep_clone(self.wpn_fps_smg_x_sr2)
	self.wpn_fps_smg_x_sr2_npc.unit = "units/pd2_dlc_coco/weapons/wpn_fps_smg_x_sr2/wpn_fps_smg_x_sr2_npc"
end

function WeaponFactoryTweakData:_init_pl14()
	self.parts.wpn_fps_pis_pl14_b_comp = {
		texture_bundle_folder = "mad",
		unit = "units/pd2_dlc_mad/weapons/wpn_fps_pis_pl14_pts/wpn_fps_pis_pl14_b_comp",
		type = "barrel",
		name_id = "bm_wp_pl14_b_comp",
		a_obj = "a_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			value = 1,
			concealment = -1
		},
		forbids = {
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.parts.wpn_fps_pis_pl14_b_standard = {
		texture_bundle_folder = "mad",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_pl14_b_standard",
		unit = "units/pd2_dlc_mad/weapons/wpn_fps_pis_pl14_pts/wpn_fps_pis_pl14_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_pl14_body_standard = {
		texture_bundle_folder = "mad",
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_pl14_body_standard",
		unit = "units/pd2_dlc_mad/weapons/wpn_fps_pis_pl14_pts/wpn_fps_pis_pl14_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_pl14_m_extended = {
		texture_bundle_folder = "mad",
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_pl14_m_extended",
		unit = "units/pd2_dlc_mad/weapons/wpn_fps_pis_pl14_pts/wpn_fps_pis_pl14_m_extended",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 1,
			value = 1,
			concealment = -1
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_pl14_m_standard = {
		texture_bundle_folder = "mad",
		type = "magazine",
		name_id = "bm_wp_pl14_m_standard",
		unit = "units/pd2_dlc_mad/weapons/wpn_fps_pis_pl14_pts/wpn_fps_pis_pl14_m_standard",
		a_obj = "a_m",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_pl14_sl_standard = {
		texture_bundle_folder = "mad",
		a_obj = "a_sl",
		type = "slide",
		name_id = "bm_wp_pl14_sl_standard",
		unit = "units/pd2_dlc_mad/weapons/wpn_fps_pis_pl14_pts/wpn_fps_pis_pl14_sl_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_pl14_b_comp.third_unit = "units/pd2_dlc_mad/weapons/wpn_third_pis_pl14_pts/wpn_third_pis_pl14_b_comp"
	self.parts.wpn_fps_pis_pl14_b_standard.third_unit = "units/pd2_dlc_mad/weapons/wpn_third_pis_pl14_pts/wpn_third_pis_pl14_b_standard"
	self.parts.wpn_fps_pis_pl14_body_standard.third_unit = "units/pd2_dlc_mad/weapons/wpn_third_pis_pl14_pts/wpn_third_pis_pl14_body_standard"
	self.parts.wpn_fps_pis_pl14_m_extended.third_unit = "units/pd2_dlc_mad/weapons/wpn_third_pis_pl14_pts/wpn_third_pis_pl14_m_extended"
	self.parts.wpn_fps_pis_pl14_m_standard.third_unit = "units/pd2_dlc_mad/weapons/wpn_third_pis_pl14_pts/wpn_third_pis_pl14_m_standard"
	self.parts.wpn_fps_pis_pl14_sl_standard.third_unit = "units/pd2_dlc_mad/weapons/wpn_third_pis_pl14_pts/wpn_third_pis_pl14_sl_standard"
	self.wpn_fps_pis_pl14 = {
		unit = "units/pd2_dlc_mad/weapons/wpn_fps_pis_pl14/wpn_fps_pis_pl14",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		override = {
			wpn_fps_upg_o_rmr = {parent = "slide"},
			wpn_fps_upg_pis_ns_flash = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_slim = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_ass_filter = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_jungle = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_small = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large_kac = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_gem = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_ipsccomp = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_meatgrinder = {
				a_obj = "a_ns",
				parent = "barrel"
			}
		},
		default_blueprint = {
			"wpn_fps_pis_pl14_b_standard",
			"wpn_fps_pis_pl14_body_standard",
			"wpn_fps_pis_pl14_m_standard",
			"wpn_fps_pis_pl14_sl_standard"
		},
		uses_parts = {
			"wpn_fps_pis_pl14_b_comp",
			"wpn_fps_pis_pl14_b_standard",
			"wpn_fps_pis_pl14_body_standard",
			"wpn_fps_pis_pl14_m_extended",
			"wpn_fps_pis_pl14_m_standard",
			"wpn_fps_pis_pl14_sl_standard",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_pl14_npc = deep_clone(self.wpn_fps_pis_pl14)
	self.wpn_fps_pis_pl14_npc.unit = "units/pd2_dlc_mad/weapons/wpn_fps_pis_pl14/wpn_fps_pis_pl14_npc"
end

function WeaponFactoryTweakData:_init_x_mp5()
	self.parts.wpn_fps_smg_mp5_s_ring_vanilla = deep_clone(self.parts.wpn_fps_smg_mp5_s_ring)
	self.parts.wpn_fps_smg_mp5_s_ring_vanilla.stats = nil
	self.parts.wpn_fps_smg_mp5_s_ring_vanilla.pcs = nil
	self.wpn_fps_smg_x_mp5 = {
		unit = "units/pd2_dlc_dos/weapons/wpn_fps_smg_x_mp5/wpn_fps_smg_x_mp5",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		override = {
			wpn_fps_smg_mp5_fg_m5k = {animations = {}},
			wpn_fps_smg_mp5_fg_mp5a4 = {animations = {}},
			wpn_fps_smg_mp5_fg_mp5a5 = {animations = {}},
			wpn_fps_smg_mp5_fg_mp5sd = {animations = {}},
			wpn_fps_smg_mp5_m_std = {animations = {}},
			wpn_fps_smg_mp5_m_straight = {animations = {}}
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_mp5_body_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_mp5_body_rail"}
		},
		default_blueprint = {
			"wpn_fps_smg_mp5_body_mp5",
			"wpn_fps_smg_mp5_fg_mp5a4",
			"wpn_fps_smg_mp5_m_std",
			"wpn_fps_smg_mp5_s_ring_vanilla"
		},
		uses_parts = {
			"wpn_fps_smg_mp5_body_mp5",
			"wpn_fps_smg_mp5_fg_m5k",
			"wpn_fps_smg_mp5_fg_mp5a4",
			"wpn_fps_smg_mp5_fg_mp5a5",
			"wpn_fps_smg_mp5_fg_mp5sd",
			"wpn_fps_smg_mp5_m_std",
			"wpn_fps_smg_mp5_m_drum",
			"wpn_fps_smg_mp5_s_ring_vanilla",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_smg_mp5_m_straight",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_smg_mp5_fg_flash"
		}
	}
	self.wpn_fps_smg_x_mp5_npc = deep_clone(self.wpn_fps_smg_x_mp5)
	self.wpn_fps_smg_x_mp5_npc.unit = "units/pd2_dlc_dos/weapons/wpn_fps_smg_x_mp5/wpn_fps_smg_x_mp5_npc"
end

function WeaponFactoryTweakData:_init_x_akmsu()
	self.wpn_fps_smg_x_akmsu = {
		unit = "units/pd2_dlc_dos/weapons/wpn_fps_smg_x_akmsu/wpn_fps_smg_x_akmsu",
		animations = {
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		override = {
			wpn_fps_upg_ak_m_quad = {stats = {
				extra_ammo = 30,
				value = 3,
				recoil = 1,
				spread = -1,
				concealment = -3,
				spread_moving = -2
			}},
			wpn_fps_upg_ak_m_uspalm = {stats = {
				value = 1,
				recoil = 1,
				concealment = 1,
				extra_ammo = 4
			}}
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_docter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_acog = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cs = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_spot = {"wpn_fps_ak_extra_ris"}
		},
		default_blueprint = {
			"wpn_fps_smg_akmsu_body_lowerreceiver",
			"wpn_fps_ass_akm_body_upperreceiver_vanilla",
			"wpn_fps_smg_akmsu_b_standard",
			"wpn_fps_smg_akmsu_fg_standard",
			"wpn_upg_ak_g_standard",
			"wpn_upg_ak_m_akm"
		},
		uses_parts = {
			"wpn_fps_smg_akmsu_body_lowerreceiver",
			"wpn_fps_ass_akm_body_upperreceiver_vanilla",
			"wpn_fps_smg_akmsu_b_standard",
			"wpn_fps_smg_akmsu_fg_standard",
			"wpn_fps_smg_akmsu_fg_rail",
			"wpn_upg_ak_g_standard",
			"wpn_upg_ak_m_akm",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_ak_m_quad",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ak_g_rk3",
			"wpn_fps_upg_ns_ass_pbs1",
			"wpn_fps_upg_ak_m_uspalm",
			"wpn_fps_upg_ak_fg_zenit",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ak_m_quick"
		}
	}
	self.wpn_fps_smg_x_akmsu_npc = deep_clone(self.wpn_fps_smg_x_akmsu)
	self.wpn_fps_smg_x_akmsu_npc.unit = "units/pd2_dlc_dos/weapons/wpn_fps_smg_x_akmsu/wpn_fps_smg_x_akmsu_npc"
end

function WeaponFactoryTweakData:_init_tecci()
	self.parts.wpn_fps_ass_tecci_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_b_long = {
		texture_bundle_folder = "opera",
		dlc = "opera",
		type = "barrel",
		name_id = "bm_wp_tecci_b_long",
		a_obj = "a_b",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 3,
			spread = 1,
			concealment = -3
		}
	}
	self.parts.wpn_fps_ass_tecci_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_lower_reciever = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_lower_reciever",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_m_drum = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_m_drum",
		bullet_objects = {
			amount = 100,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_tecci_ns_standard = {
		parent = "barrel",
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_ns_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_ns_special = {
		type = "barrel_ext",
		texture_bundle_folder = "opera",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "opera",
		name_id = "bm_wp_tecci_ns_special",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_ns_special",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			concealment = -2,
			damage = 2,
			suppression = -1,
			value = 1,
			recoil = 3
		}
	}
	self.parts.wpn_fps_ass_tecci_o_standard = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_o_standard",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_ass_tecci_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_upper_reciever = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_upper_reciever",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_vg_standard = {
		a_obj = "a_vg",
		type = "vertical_grip",
		name_id = "bm_wp_m4_lower_reciever",
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_fps_ass_tecci_vg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_tecci_b_standard.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_b_standard"
	self.parts.wpn_fps_ass_tecci_b_long.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_b_long"
	self.parts.wpn_fps_ass_tecci_dh_standard.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_dh_standard"
	self.parts.wpn_fps_ass_tecci_fg_standard.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_fg_standard"
	self.parts.wpn_fps_ass_tecci_g_standard.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_g_standard"
	self.parts.wpn_fps_ass_tecci_lower_reciever.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_lower_reciever"
	self.parts.wpn_fps_ass_tecci_m_drum.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_m_drum"
	self.parts.wpn_fps_ass_tecci_ns_standard.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_ns_standard"
	self.parts.wpn_fps_ass_tecci_ns_special.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_ns_special"
	self.parts.wpn_fps_ass_tecci_o_standard.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_o_standard"
	self.parts.wpn_fps_ass_tecci_s_standard.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_s_standard"
	self.parts.wpn_fps_ass_tecci_upper_reciever.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_upper_reciever"
	self.parts.wpn_fps_ass_tecci_vg_standard.third_unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci_pts/wpn_third_ass_tecci_vg_standard"
	self.wpn_fps_ass_tecci = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci/wpn_fps_ass_tecci",
		stock_adapter = "wpn_fps_upg_m4_s_adapter",
		default_blueprint = {
			"wpn_fps_ass_tecci_b_standard",
			"wpn_fps_ass_tecci_dh_standard",
			"wpn_fps_ass_tecci_fg_standard",
			"wpn_fps_ass_tecci_g_standard",
			"wpn_fps_ass_tecci_lower_reciever",
			"wpn_fps_ass_tecci_m_drum",
			"wpn_fps_ass_tecci_ns_standard",
			"wpn_fps_ass_tecci_o_standard",
			"wpn_fps_ass_tecci_s_standard",
			"wpn_fps_ass_tecci_upper_reciever",
			"wpn_fps_ass_tecci_vg_standard"
		},
		uses_parts = {
			"wpn_fps_ass_tecci_b_standard",
			"wpn_fps_ass_tecci_b_long",
			"wpn_fps_ass_tecci_dh_standard",
			"wpn_fps_ass_tecci_fg_standard",
			"wpn_fps_ass_tecci_g_standard",
			"wpn_fps_ass_tecci_lower_reciever",
			"wpn_fps_ass_tecci_m_drum",
			"wpn_fps_ass_tecci_ns_standard",
			"wpn_fps_ass_tecci_ns_special",
			"wpn_fps_ass_tecci_o_standard",
			"wpn_fps_ass_tecci_s_standard",
			"wpn_fps_ass_tecci_upper_reciever",
			"wpn_fps_ass_tecci_vg_standard",
			"wpn_fps_ass_tecci_b_legend",
			"wpn_fps_ass_tecci_fg_legend",
			"wpn_fps_ass_tecci_s_legend",
			"wpn_fps_upg_m4_s_adapter",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_m4_uupg_s_fold",
			"wpn_fps_upg_m4_s_standard_vanilla",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_m4_g_hgrip",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_m4_uupg_o_flipup",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_tecci_npc = deep_clone(self.wpn_fps_ass_tecci)
	self.wpn_fps_ass_tecci_npc.unit = "units/pd2_dlc_opera/weapons/wpn_fps_ass_tecci/wpn_fps_ass_tecci_npc"
end

function WeaponFactoryTweakData:_init_hajk()
	self.parts.wpn_fps_smg_hajk_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_hajk_b_standard",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_hajk_b_short = {
		texture_bundle_folder = "born",
		dlc = "born",
		type = "barrel",
		name_id = "bm_wp_hajk_b_short",
		a_obj = "a_b",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -3,
			value = 1,
			concealment = 5
		}
	}
	self.parts.wpn_fps_smg_hajk_b_medium = {
		texture_bundle_folder = "born",
		dlc = "born",
		type = "barrel",
		name_id = "bm_wp_hajk_b_medium",
		a_obj = "a_b",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_b_medium",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -1,
			value = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_smg_hajk_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_hajk_fg_standard",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_hajk_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_hajk_g_standard",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_hajk_ns_standard = {
		parent = "barrel",
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_hajk_ns_standard",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_ns_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_hajk_o_standard = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_hajk_o_sight",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_o_standard",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_smg_hajk_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_hajk_s_standard",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_hajk_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_hajk_body_standard",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			reload = "reload",
			fire_steelsight = "recoil"
		}
	}
	self.parts.wpn_fps_smg_hajk_vg_moe = {
		a_obj = "a_vg",
		type = "vertical_grip",
		name_id = "bm_wp_hajk_vg_moe",
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk_pts/wpn_fps_smg_hajk_vg_moe",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_hajk_b_standard.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_b_standard"
	self.parts.wpn_fps_smg_hajk_b_short.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_b_short"
	self.parts.wpn_fps_smg_hajk_b_medium.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_b_medium"
	self.parts.wpn_fps_smg_hajk_fg_standard.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_fg_standard"
	self.parts.wpn_fps_smg_hajk_g_standard.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_g_standard"
	self.parts.wpn_fps_smg_hajk_ns_standard.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_ns_standard"
	self.parts.wpn_fps_smg_hajk_o_standard.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_o_standard"
	self.parts.wpn_fps_smg_hajk_s_standard.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_s_standard"
	self.parts.wpn_fps_smg_hajk_body_standard.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_body_standard"
	self.parts.wpn_fps_smg_hajk_vg_moe.third_unit = "units/pd2_dlc_born/weapons/wpn_third_smg_hajk_pts/wpn_third_smg_hajk_vg_moe"
	self.wpn_fps_smg_hajk = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		},
		unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk/wpn_fps_smg_hajk",
		default_blueprint = {
			"wpn_fps_smg_hajk_b_standard",
			"wpn_fps_smg_hajk_fg_standard",
			"wpn_fps_smg_hajk_g_standard",
			"wpn_fps_m4_uupg_m_std_vanilla",
			"wpn_fps_smg_hajk_ns_standard",
			"wpn_fps_smg_hajk_o_standard",
			"wpn_fps_smg_hajk_s_standard",
			"wpn_fps_smg_hajk_body_standard",
			"wpn_fps_smg_hajk_vg_moe"
		},
		uses_parts = {
			"wpn_fps_smg_hajk_b_standard",
			"wpn_fps_smg_hajk_b_short",
			"wpn_fps_smg_hajk_b_medium",
			"wpn_fps_smg_hajk_fg_standard",
			"wpn_fps_smg_hajk_g_standard",
			"wpn_fps_smg_hajk_ns_standard",
			"wpn_fps_smg_hajk_o_standard",
			"wpn_fps_smg_hajk_s_standard",
			"wpn_fps_smg_hajk_body_standard",
			"wpn_fps_smg_hajk_vg_moe",
			"wpn_fps_m4_uupg_m_std_vanilla",
			"wpn_fps_ass_l85a2_m_emag",
			"wpn_fps_upg_m4_m_pmag",
			"wpn_fps_upg_m4_m_l5",
			"wpn_fps_upg_m4_m_quad",
			"wpn_fps_upg_m4_m_straight",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_spot",
			"wpn_fps_m4_upg_m_quick",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_hajk_npc = deep_clone(self.wpn_fps_smg_hajk)
	self.wpn_fps_smg_hajk_npc.unit = "units/pd2_dlc_born/weapons/wpn_fps_smg_hajk/wpn_fps_smg_hajk_npc"
end

function WeaponFactoryTweakData:_init_boot()
	self.parts.wpn_fps_sho_boot_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_boot_b_standard",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_boot_b_short = {
		texture_bundle_folder = "wild",
		dlc = "wild",
		type = "barrel",
		name_id = "bm_wp_boot_b_short",
		a_obj = "a_b",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = -1,
			spread = -1,
			concealment = 3
		}
	}
	self.parts.wpn_fps_sho_boot_b_long = {
		texture_bundle_folder = "wild",
		dlc = "wild",
		type = "barrel",
		name_id = "bm_wp_boot_b_long",
		a_obj = "a_b",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_b_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1,
			spread = 1,
			concealment = -3
		}
	}
	self.parts.wpn_fps_sho_boot_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_boot_fg_standard",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_boot_s_short = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_boot_s_standard",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_s_short",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_boot_s_long = {
		texture_bundle_folder = "wild",
		dlc = "wild",
		type = "stock",
		name_id = "bm_wp_boot_s_long",
		a_obj = "a_s",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_s_long",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 2,
			concealment = -2
		}
	}
	self.parts.wpn_fps_sho_boot_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_boot_body_standard",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_body_standard",
		stats = {value = 1},
		animations = {
			fire = "recoil",
			fire_steelsight = "recoil_steelsight",
			reload_not_empty_exit = "reload_exit_not_empty",
			reload_exit = "reload_exit",
			reload_enter = "reload_enter"
		}
	}
	self.parts.wpn_fps_sho_boot_body_exotic = {
		texture_bundle_folder = "wild",
		type = "lower_reciever",
		a_obj = "a_body",
		dlc = "wild",
		name_id = "bm_wp_boot_body_exotic",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_body_exotic",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1,
			spread = 1,
			concealment = -1
		},
		animations = {
			fire = "recoil",
			fire_steelsight = "recoil_steelsight",
			reload_not_empty_exit = "reload_exit_not_empty",
			reload_exit = "reload_exit",
			reload_enter = "reload_enter"
		}
	}
	self.parts.wpn_fps_sho_boot_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_boot_s_standard",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_m_standard",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_boot_em_extra = {
		a_obj = "a_em",
		type = "extra",
		name_id = "bm_wp_boot_s_standard",
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot_pts/wpn_fps_sho_boot_em_extra",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_boot_b_standard.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_b_standard"
	self.parts.wpn_fps_sho_boot_b_short.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_b_short"
	self.parts.wpn_fps_sho_boot_b_long.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_b_long"
	self.parts.wpn_fps_sho_boot_fg_standard.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_fg_standard"
	self.parts.wpn_fps_sho_boot_s_short.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_s_short"
	self.parts.wpn_fps_sho_boot_s_long.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_s_long"
	self.parts.wpn_fps_sho_boot_body_standard.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_body_standard"
	self.parts.wpn_fps_sho_boot_body_exotic.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_body_exotic"
	self.parts.wpn_fps_sho_boot_m_standard.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_m_standard"
	self.parts.wpn_fps_sho_boot_em_extra.third_unit = "units/pd2_dlc_wild/weapons/wpn_third_sho_boot_pts/wpn_third_sho_boot_em_extra"
	self.wpn_fps_sho_boot = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot/wpn_fps_sho_boot",
		animations = {
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty_exit = "reload_exit_not_empty",
			reload_exit = "reload_exit",
			reload_enter = "reload_enter"
		},
		default_blueprint = {
			"wpn_fps_sho_boot_b_standard",
			"wpn_fps_sho_boot_fg_standard",
			"wpn_fps_sho_boot_s_short",
			"wpn_fps_sho_boot_body_standard",
			"wpn_fps_sho_boot_m_standard",
			"wpn_fps_sho_boot_em_extra"
		},
		uses_parts = {
			"wpn_fps_sho_boot_b_standard",
			"wpn_fps_sho_boot_b_short",
			"wpn_fps_sho_boot_b_long",
			"wpn_fps_sho_boot_fg_standard",
			"wpn_fps_sho_boot_s_short",
			"wpn_fps_sho_boot_s_long",
			"wpn_fps_sho_boot_body_standard",
			"wpn_fps_sho_boot_body_exotic",
			"wpn_fps_sho_boot_m_standard",
			"wpn_fps_sho_boot_em_extra",
			"wpn_fps_sho_boot_b_legendary",
			"wpn_fps_sho_boot_fg_legendary",
			"wpn_fps_sho_boot_o_legendary",
			"wpn_fps_sho_boot_s_legendary",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_ns_duck"
		}
	}
	self.wpn_fps_sho_boot_npc = deep_clone(self.wpn_fps_sho_boot)
	self.wpn_fps_sho_boot_npc.unit = "units/pd2_dlc_wild/weapons/wpn_fps_sho_boot/wpn_fps_sho_boot_npc"
end

function WeaponFactoryTweakData:_init_packrat()
	self.parts.wpn_fps_pis_packrat_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_packrat_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_fps_pis_packrat_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_packrat_body_standard = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_packrat_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_fps_pis_packrat_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_packrat_bolt_standard = {
		a_obj = "a_bolt",
		type = "extra",
		name_id = "bm_wp_packrat_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_fps_pis_packrat_bolt_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_packrat_m_extended = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		a_obj = "a_m",
		type = "magazine",
		dlc = "pim",
		name_id = "bm_wp_packrat_m_extended",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_fps_pis_packrat_m_extended",
		pcs = {},
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 5,
			value = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_pis_packrat_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_packrat_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_fps_pis_packrat_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_packrat_ns_wick = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		type = "barrel_ext",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "pim",
		name_id = "bm_wp_packrat_ns_extended",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_fps_pis_packrat_ns_wick",
		pcs = {},
		stats = {
			spread = 1,
			value = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_pis_packrat_o_expert = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		type = "sight",
		a_obj = "a_o",
		dlc = "pim",
		name_id = "bm_wp_packrat_o_expert",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_fps_pis_packrat_o_expert",
		pcs = {},
		stats = {
			value = 1,
			spread = 1
		}
	}
	self.parts.wpn_fps_pis_packrat_o_standard = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_packrat_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_fps_pis_packrat_o_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_packrat_sl_standard = {
		a_obj = "a_sl",
		type = "slide",
		name_id = "bm_wp_packrat_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_fps_pis_packrat_sl_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_packrat_b_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_third_pis_packrat_b_standard"
	self.parts.wpn_fps_pis_packrat_body_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_third_pis_packrat_body_standard"
	self.parts.wpn_fps_pis_packrat_bolt_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_third_pis_packrat_bolt_standard"
	self.parts.wpn_fps_pis_packrat_m_extended.third_unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_third_pis_packrat_m_extended"
	self.parts.wpn_fps_pis_packrat_m_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_third_pis_packrat_m_standard"
	self.parts.wpn_fps_pis_packrat_ns_wick.third_unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_third_pis_packrat_ns_wick"
	self.parts.wpn_fps_pis_packrat_o_expert.third_unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_third_pis_packrat_o_expert"
	self.parts.wpn_fps_pis_packrat_o_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_third_pis_packrat_o_standard"
	self.parts.wpn_fps_pis_packrat_sl_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat_pts/wpn_third_pis_packrat_sl_standard"
	self.wpn_fps_pis_packrat = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat/wpn_fps_pis_packrat",
		animations = {
			reload_not_empty = "reload_not_empty",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		},
		override = {
			wpn_fps_upg_o_rmr = {parent = "slide"},
			wpn_fps_upg_pis_ns_flash = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_slim = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_ass_filter = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_jungle = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_small = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large_kac = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_gem = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_ipsccomp = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_meatgrinder = {
				a_obj = "a_ns",
				parent = "barrel"
			}
		},
		default_blueprint = {
			"wpn_fps_pis_packrat_b_standard",
			"wpn_fps_pis_packrat_body_standard",
			"wpn_fps_pis_packrat_bolt_standard",
			"wpn_fps_pis_packrat_m_standard",
			"wpn_fps_pis_packrat_o_standard",
			"wpn_fps_pis_packrat_sl_standard"
		},
		uses_parts = {
			"wpn_fps_pis_packrat_b_standard",
			"wpn_fps_pis_packrat_body_standard",
			"wpn_fps_pis_packrat_bolt_standard",
			"wpn_fps_pis_packrat_m_standard",
			"wpn_fps_pis_packrat_o_standard",
			"wpn_fps_pis_packrat_sl_standard",
			"wpn_fps_pis_packrat_m_extended",
			"wpn_fps_pis_packrat_ns_wick",
			"wpn_fps_pis_packrat_o_expert",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_packrat_npc = deep_clone(self.wpn_fps_pis_packrat)
	self.wpn_fps_pis_packrat_npc.unit = "units/pd2_dlc_pim/weapons/wpn_fps_pis_packrat/wpn_fps_pis_packrat_npc"
end

function WeaponFactoryTweakData:_init_schakal()
	self.parts.wpn_fps_smg_schakal_b_civil = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		type = "barrel",
		a_obj = "a_b",
		dlc = "pim",
		name_id = "bm_wp_schakal_b_civil",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_b_civil",
		pcs = {},
		stats = {
			spread = 1,
			value = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_smg_schakal_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_schakal_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_schakal_body_lower = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_schakal_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_body_lower",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_schakal_body_upper = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_schakal_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_body_upper",
		stats = {value = 1},
		adds = {"wpn_fps_smg_schakal_vg_extra"}
	}
	self.parts.wpn_fps_smg_schakal_m_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		a_obj = "a_m",
		type = "magazine",
		dlc = "pim",
		name_id = "bm_wp_schakal_m_long",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_m_long",
		pcs = {},
		bullet_objects = {
			amount = 40,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = 10,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_smg_schakal_m_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		a_obj = "a_m",
		type = "magazine",
		dlc = "pim",
		name_id = "bm_wp_schakal_m_short",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_m_short",
		pcs = {},
		bullet_objects = {
			amount = 16,
			prefix = "g_bullet_"
		},
		stats = {
			extra_ammo = -5,
			value = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_smg_schakal_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_schakal_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_m_standard",
		bullet_objects = {
			amount = 28,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_schakal_ns_silencer = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		dlc = "pim",
		type = "barrel_ext",
		sub_type = "silencer",
		a_obj = "a_ns",
		parent = "barrel",
		name_id = "bm_wp_schakal_ns_silencer",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_ns_silencer",
		pcs = {},
		stats = {
			alert_size = 12,
			spread = 0,
			damage = -3,
			suppression = 12,
			value = 1,
			recoil = 1,
			concealment = -1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_smg_schakal_s_civil = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		type = "stock",
		a_obj = "a_s",
		dlc = "pim",
		name_id = "bm_wp_schakal_s_civil",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_s_civil",
		pcs = {},
		stats = {
			value = 1,
			recoil = 1,
			concealment = -1
		}
	}
	self.parts.wpn_fps_smg_schakal_s_folded = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		type = "stock",
		a_obj = "a_s",
		dlc = "pim",
		name_id = "bm_wp_schakal_s_folded",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_s_folded",
		pcs = {},
		stats = {
			value = 1,
			recoil = -2,
			concealment = 2
		}
	}
	self.parts.wpn_fps_smg_schakal_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_schakal_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_schakal_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_schakal_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_schakal_bolt_standard = {
		a_obj = "a_bolt",
		type = "extra",
		name_id = "bm_wp_schakal_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_bolt_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_schakal_vg_extra = {
		a_obj = "a_vg",
		type = "extra",
		name_id = "bm_wp_schakal_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_vg_extra",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_schakal_extra_magrelease = {
		a_obj = "a_extra",
		type = "extra",
		name_id = "bm_wp_schakal_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_extra_magrelease",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_schakal_vg_surefire = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		dlc = "pim",
		a_obj = "a_vg",
		type = "vertical_grip",
		name_id = "bm_wp_schakal_vg_surefire",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal_pts/wpn_fps_smg_schakal_vg_surefire",
		pcs = {},
		stats = {
			value = 1,
			recoil = 1
		},
		perks = {"gadget"},
		forbids = {"wpn_fps_smg_schakal_vg_extra"},
		adds = {"wpn_fps_smg_schakal_vg_surefire_flashlight"}
	}
	self.parts.wpn_fps_smg_schakal_vg_surefire_flashlight = {
		parent = "vertical_grip",
		type = "extra",
		sub_type = "flashlight",
		unit = "units/pd2_dlc_gage_jobs/weapons/wpn_fps_upg_fl_ass_peq15/wpn_fps_upg_fl_ass_peq15_flashlight",
		a_obj = "a_fl",
		stats = {value = 1},
		perks = {"gadget"}
	}
	self.parts.wpn_fps_smg_schakal_b_civil.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_b_civil"
	self.parts.wpn_fps_smg_schakal_b_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_b_standard"
	self.parts.wpn_fps_smg_schakal_body_lower.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_body_lower"
	self.parts.wpn_fps_smg_schakal_body_upper.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_body_upper"
	self.parts.wpn_fps_smg_schakal_m_long.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_m_long"
	self.parts.wpn_fps_smg_schakal_m_short.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_m_short"
	self.parts.wpn_fps_smg_schakal_m_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_m_standard"
	self.parts.wpn_fps_smg_schakal_ns_silencer.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_ns_silencer"
	self.parts.wpn_fps_smg_schakal_s_civil.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_s_civil"
	self.parts.wpn_fps_smg_schakal_s_folded.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_s_folded"
	self.parts.wpn_fps_smg_schakal_s_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_s_standard"
	self.parts.wpn_fps_smg_schakal_dh_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_dh_standard"
	self.parts.wpn_fps_smg_schakal_bolt_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_bolt_standard"
	self.parts.wpn_fps_smg_schakal_vg_extra.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_vg_extra"
	self.parts.wpn_fps_smg_schakal_vg_surefire.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_vg_surefire"
	self.parts.wpn_fps_smg_schakal_extra_magrelease.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_smg_schakal_pts/wpn_third_smg_schakal_extra_magrelease"
	self.wpn_fps_smg_schakal = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal/wpn_fps_smg_schakal",
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		default_blueprint = {
			"wpn_fps_smg_schakal_b_standard",
			"wpn_fps_smg_schakal_body_lower",
			"wpn_fps_smg_schakal_body_upper",
			"wpn_fps_smg_schakal_m_standard",
			"wpn_fps_smg_schakal_s_standard",
			"wpn_fps_smg_schakal_dh_standard",
			"wpn_fps_smg_schakal_bolt_standard",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_smg_schakal_extra_magrelease"
		},
		uses_parts = {
			"wpn_fps_smg_schakal_b_civil",
			"wpn_fps_smg_schakal_b_standard",
			"wpn_fps_smg_schakal_body_lower",
			"wpn_fps_smg_schakal_body_upper",
			"wpn_fps_smg_schakal_m_long",
			"wpn_fps_smg_schakal_m_short",
			"wpn_fps_smg_schakal_m_standard",
			"wpn_fps_smg_schakal_ns_silencer",
			"wpn_fps_smg_schakal_s_civil",
			"wpn_fps_smg_schakal_s_folded",
			"wpn_fps_smg_schakal_s_standard",
			"wpn_fps_smg_schakal_dh_standard",
			"wpn_fps_smg_schakal_bolt_standard",
			"wpn_fps_smg_schakal_vg_extra",
			"wpn_fps_smg_schakal_vg_surefire",
			"wpn_fps_smg_schakal_extra_magrelease",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_vg_ass_smg_verticalgrip",
			"wpn_fps_upg_vg_ass_smg_stubby",
			"wpn_fps_upg_vg_ass_smg_afg",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_schakal_npc = deep_clone(self.wpn_fps_smg_schakal)
	self.wpn_fps_smg_schakal_npc.unit = "units/pd2_dlc_pim/weapons/wpn_fps_smg_schakal/wpn_fps_smg_schakal_npc"
end

function WeaponFactoryTweakData:_init_desertfox()
	self.parts.wpn_fps_snp_desertfox_b_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		type = "barrel",
		a_obj = "a_b",
		dlc = "pim",
		name_id = "bm_wp_desertfox_b_long",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_snp_desertfox_pts/wpn_fps_snp_desertfox_b_long",
		pcs = {},
		stats = {
			spread = 3,
			spread_moving = -2,
			value = 3,
			concealment = -3
		}
	}
	self.parts.wpn_fps_snp_desertfox_b_short = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_desertfox_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_snp_desertfox_pts/wpn_fps_snp_desertfox_b_short",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_desertfox_b_silencer = {
		is_a_unlockable = true,
		texture_bundle_folder = "pim",
		dlc = "pim",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_desertfox_b_silenced",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_snp_desertfox_pts/wpn_fps_snp_desertfox_b_silencer",
		pcs = {},
		stats = {
			alert_size = 12,
			value = 6,
			damage = -2,
			suppression = 12,
			spread = -1,
			recoil = 1,
			spread_moving = 1,
			concealment = -1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_snp_desertfox_body = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_desertfox_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_snp_desertfox_pts/wpn_fps_snp_desertfox_body",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_desertfox_dh_standard = {
		a_obj = "a_bolt",
		type = "extra",
		name_id = "bm_wp_desertfox_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_snp_desertfox_pts/wpn_fps_snp_desertfox_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_desertfox_mag = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_desertfox_b_standard",
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_snp_desertfox_pts/wpn_fps_snp_desertfox_mag",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_desertfox_b_long.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_snp_desertfox_pts/wpn_third_snp_desertfox_b_long"
	self.parts.wpn_fps_snp_desertfox_b_short.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_snp_desertfox_pts/wpn_third_snp_desertfox_b_short"
	self.parts.wpn_fps_snp_desertfox_b_silencer.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_snp_desertfox_pts/wpn_third_snp_desertfox_b_silencer"
	self.parts.wpn_fps_snp_desertfox_body.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_snp_desertfox_pts/wpn_third_snp_desertfox_body"
	self.parts.wpn_fps_snp_desertfox_dh_standard.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_snp_desertfox_pts/wpn_third_snp_desertfox_dh_standard"
	self.parts.wpn_fps_snp_desertfox_mag.third_unit = "units/pd2_dlc_pim/weapons/wpn_third_snp_desertfox_pts/wpn_third_snp_desertfox_mag"
	self.wpn_fps_snp_desertfox = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_snp_desertfox/wpn_fps_snp_desertfox",
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		default_blueprint = {
			"wpn_fps_snp_desertfox_b_short",
			"wpn_fps_snp_desertfox_body",
			"wpn_fps_snp_desertfox_dh_standard",
			"wpn_fps_snp_desertfox_mag",
			"wpn_fps_upg_o_shortdot"
		},
		uses_parts = {
			"wpn_fps_snp_desertfox_b_long",
			"wpn_fps_snp_desertfox_b_short",
			"wpn_fps_snp_desertfox_b_silencer",
			"wpn_fps_snp_desertfox_body",
			"wpn_fps_snp_desertfox_dh_standard",
			"wpn_fps_snp_desertfox_mag",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_snp_desertfox_npc = deep_clone(self.wpn_fps_snp_desertfox)
	self.wpn_fps_snp_desertfox_npc.unit = "units/pd2_dlc_pim/weapons/wpn_fps_snp_desertfox/wpn_fps_snp_desertfox_npc"
end

function WeaponFactoryTweakData:_init_x_packrat()
	self.wpn_fps_x_packrat = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		unit = "units/pd2_dlc_pim/weapons/wpn_fps_x_packrat/wpn_fps_x_packrat",
		animations = {
			reload_not_empty = "reload_not_empty_right",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_left = "reload_left",
			reload_not_empty_left = "reload_not_empty_left",
			reload = "reload_right",
			magazine_empty = "last_recoil"
		},
		override = {
			wpn_fps_upg_o_rmr = {parent = "slide"},
			wpn_fps_upg_pis_ns_flash = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_slim = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_ass_filter = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_jungle = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_small = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large_kac = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_gem = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_ipsccomp = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_meatgrinder = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_pis_packrat_m_extended = {stats = {
				extra_ammo = 10,
				value = 2,
				concealment = -2
			}}
		},
		default_blueprint = {
			"wpn_fps_pis_packrat_b_standard",
			"wpn_fps_pis_packrat_body_standard",
			"wpn_fps_pis_packrat_bolt_standard",
			"wpn_fps_pis_packrat_m_standard",
			"wpn_fps_pis_packrat_o_standard",
			"wpn_fps_pis_packrat_sl_standard"
		},
		uses_parts = {
			"wpn_fps_pis_packrat_b_standard",
			"wpn_fps_pis_packrat_body_standard",
			"wpn_fps_pis_packrat_bolt_standard",
			"wpn_fps_pis_packrat_m_standard",
			"wpn_fps_pis_packrat_o_standard",
			"wpn_fps_pis_packrat_sl_standard",
			"wpn_fps_pis_packrat_m_extended",
			"wpn_fps_pis_packrat_ns_wick",
			"wpn_fps_pis_packrat_o_expert",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_x_packrat_npc = deep_clone(self.wpn_fps_x_packrat)
	self.wpn_fps_x_packrat_npc.unit = "units/pd2_dlc_pim/weapons/wpn_fps_x_packrat/wpn_fps_x_packrat_npc"
end

function WeaponFactoryTweakData:_init_rota()
	self.parts.wpn_fps_sho_rota_b_long = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_rota_b_standard",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_b_long",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_rota_b_short = {
		texture_bundle_folder = "rota",
		dlc = "rota",
		type = "barrel",
		name_id = "bm_wp_rota_b_standard",
		a_obj = "a_b",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -2,
			value = 1,
			concealment = 3
		}
	}
	self.parts.wpn_fps_sho_rota_b_silencer = {
		type = "barrel",
		texture_bundle_folder = "rota",
		dlc = "rota",
		a_obj = "a_b",
		name_id = "bm_wp_rota_b_silenced",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_b_silencer",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			value = 6,
			damage = -2,
			suppression = 12,
			spread = -1,
			recoil = 1,
			spread_moving = 1,
			concealment = -1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"},
		forbids = {
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_a_dragons_breath",
			"wpn_fps_upg_ns_duck"
		}
	}
	self.parts.wpn_fps_sho_rota_body_lower = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_rota_b_standard",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_body_lower",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_rota_body_upper = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_rota_b_standard",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_body_upper",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_rota_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_rota_b_standard",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_rota_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_rota_b_standard",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_rota_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_rota_b_standard",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_m_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_rota_mag_realese = {
		a_obj = "a_extra",
		type = "extra",
		name_id = "bm_wp_rota_b_standard",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_mag_realese",
		stats = {value = 1}
	}
	self.parts.wpn_fps_sho_rota_o_standard = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_hajk_o_sight",
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_fps_sho_rota_o_standard",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_sho_rota_b_long.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_b_long"
	self.parts.wpn_fps_sho_rota_b_short.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_b_short"
	self.parts.wpn_fps_sho_rota_b_silencer.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_b_silencer"
	self.parts.wpn_fps_sho_rota_body_lower.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_body_lower"
	self.parts.wpn_fps_sho_rota_body_upper.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_body_upper"
	self.parts.wpn_fps_sho_rota_fg_standard.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_fg_standard"
	self.parts.wpn_fps_sho_rota_g_standard.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_g_standard"
	self.parts.wpn_fps_sho_rota_m_standard.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_m_standard"
	self.parts.wpn_fps_sho_rota_mag_realese.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_mag_realese"
	self.parts.wpn_fps_sho_rota_o_standard.third_unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota_pts/wpn_third_sho_rota_o_standard"
	self.wpn_fps_sho_rota = {
		unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota/wpn_fps_sho_rota",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload"
		},
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		default_blueprint = {
			"wpn_fps_sho_rota_b_long",
			"wpn_fps_sho_rota_body_lower",
			"wpn_fps_sho_rota_body_upper",
			"wpn_fps_sho_rota_fg_standard",
			"wpn_fps_sho_rota_g_standard",
			"wpn_fps_sho_rota_m_standard",
			"wpn_fps_sho_rota_mag_realese",
			"wpn_fps_sho_rota_o_standard",
			"wpn_fps_smg_hajk_vg_moe"
		},
		uses_parts = {
			"wpn_fps_sho_rota_b_long",
			"wpn_fps_sho_rota_b_short",
			"wpn_fps_sho_rota_b_silencer",
			"wpn_fps_sho_rota_body_lower",
			"wpn_fps_sho_rota_body_upper",
			"wpn_fps_sho_rota_fg_standard",
			"wpn_fps_sho_rota_g_standard",
			"wpn_fps_sho_rota_m_standard",
			"wpn_fps_sho_rota_mag_realese",
			"wpn_fps_sho_rota_o_standard",
			"wpn_fps_smg_hajk_vg_moe",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_ns_shot_thick",
			"wpn_fps_upg_ns_shot_shark",
			"wpn_fps_upg_shot_ns_king",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_ns_sho_salvo_large",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_ns_duck",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_sho_rota_npc = deep_clone(self.wpn_fps_sho_rota)
	self.wpn_fps_sho_rota_npc.unit = "units/pd2_dlc_rota/weapons/wpn_fps_sho_rota/wpn_fps_sho_rota_npc"
end

function WeaponFactoryTweakData:_init_tng()
	self.parts.wpn_fps_sho_saiga_b_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		a_obj = "a_b",
		type = "barrel",
		dlc = "tango",
		name_id = "bm_wp_saiga_b_short",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_sho_saiga_b_short/wpn_fps_sho_saiga_b_short",
		pcs = {},
		stats = {
			spread = -1,
			recoil = -1,
			concealment = 4,
			value = 1
		},
		forbids = {"wpn_fps_ak_extra_ris"},
		override = {wpn_upg_saiga_fg_lowerrail = {unit = "units/payday2/weapons/wpn_fps_shot_saiga_pts/wpn_upg_saiga_fg_lowerrail_short"}}
	}
	self.parts.wpn_fps_sho_saiga_fg_holy = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "tango",
		name_id = "bm_wp_saiga_fg_holy",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_sho_saiga_fg_holy/wpn_fps_sho_saiga_fg_holy",
		pcs = {},
		stats = {
			value = 1,
			concealment = 4
		}
	}
	self.parts.wpn_fps_upg_o_45rds = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		a_obj = "a_o",
		depends_on = "sight",
		dlc = "tango",
		sub_type = "second_sight",
		type = "gadget",
		name_id = "bm_wpn_fps_upg_o_45rds",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_upg_o_45rds/wpn_fps_upg_o_45rds",
		pcs = {},
		stats = {
			value = 1,
			gadget_zoom = 1,
			recoil = 1
		},
		perks = {"gadget"},
		texture_switch = {
			material = "gfx_reddot1",
			channel = "diffuse_texture"
		},
		stance_mod = {
			wpn_fps_ass_m4 = {
				translation = Vector3(-2.75, 0, -11.15),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_amcar = {
				translation = Vector3(-2.75, 0, -10.7),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_m16 = {
				translation = Vector3(-2.75, 0, -10.7),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_74 = {
				translation = Vector3(-3.2, -20, -13.75),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_akm = {
				translation = Vector3(-3.2, -20, -13.75),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_akm_gold = {
				translation = Vector3(-3.2, -20, -13.75),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_ak5 = {
				translation = Vector3(-1.3, 0, -13.6),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_aug = {
				translation = Vector3(-3.52, 0, -12.15),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_g36 = {
				translation = Vector3(-0.65, 0, -12.47),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_m14 = {
				translation = Vector3(-1.94, -10, -14.35),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_s552 = {
				translation = Vector3(-3.15, 0, -12.9),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_scar = {
				translation = Vector3(-1.6, 0, -10.4),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_scar = {
				translation = Vector3(-1.6, 0, -10.4),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_fal = {
				translation = Vector3(-2.37, 0, -13.98),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_g3 = {
				translation = Vector3(-0.7, -10, -13.14),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_galil = {
				translation = Vector3(-2.2, 0, -13.56),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_famas = {
				translation = Vector3(2.7, 0, -16.9),
				rotation = Rotation(0, 1.5, -45)
			},
			wpn_fps_ass_l85a2 = {
				translation = Vector3(-4.3, 10, -8.35),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_asval = {
				translation = Vector3(-1.7, 0, -10.15),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_vhs = {
				translation = Vector3(-2.65, 0, -10.7),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_sub2000 = {
				translation = Vector3(-5.15, 0, -10.1),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_tecci = {
				translation = Vector3(-3, 0, -12.85),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_contraband = {
				translation = Vector3(-2.35, 0, -12),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_m95 = {
				translation = Vector3(-0.4, 5.8, -15.075),
				rotation = Rotation(-0.4, 0, -45)
			},
			wpn_fps_snp_msr = {
				translation = Vector3(-2.2, 8, -12.29),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_r93 = {
				translation = Vector3(-2.3, 7.8, -14.1),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_mosin = {
				translation = Vector3(-2.2, -5, -13),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_wa2000 = {
				translation = Vector3(-2.25, 0, -9.5),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_model70 = {
				translation = Vector3(-2.55, -4, -12.3),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_desertfox = {
				translation = Vector3(-3.21, -4, -12.05),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_tti = {
				translation = Vector3(-2.83, 0, -9.65),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_snp_siltstone = {
				translation = Vector3(-1.67, 0, -13.15),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_flint = {
				translation = Vector3(-3.2, 0, -13.1),
				rotation = Rotation(0, 0, -45)
			},
			wpn_fps_ass_ching = {
				translation = Vector3(-1.8, 0, -13.1),
				rotation = Rotation(0, 0, -45)
			}
		}
	}
	self.parts.wpn_fps_upg_o_spot = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		dlc = "tango",
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_upg_o_spot",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_upg_o_spot/wpn_fps_upg_o_spot",
		pcs = {},
		stats = {
			zoom = 4,
			recoil = 1,
			concealment = -3,
			value = 8,
			spread_moving = -3
		},
		perks = {"scope"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_specter.stance_mod),
		forbids = {
			"wpn_fps_amcar_uupg_body_upperreciever",
			"wpn_fps_ass_m16_os_frontsight",
			"wpn_fps_ass_scar_o_flipups_up",
			"wpn_fps_upg_o_xpsg33_magnifier"
		},
		texture_switch = {
			material = "gfx_reddot1",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_box = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		dlc = "tango",
		a_obj = "a_o",
		type = "sight",
		reticle_obj = "g_reticle",
		name_id = "bm_wp_upg_o_box",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_upg_o_box/wpn_fps_upg_o_box",
		pcs = {},
		stats = {
			zoom = 10,
			recoil = 1,
			concealment = -3,
			value = 8,
			spread_moving = -3
		},
		perks = {
			"scope",
			"highlight"
		},
		stance_mod = {
			wpn_fps_snp_m95 = {translation = Vector3(0, -18, -4.68)},
			wpn_fps_snp_msr = {translation = Vector3(0, -31, -4.3951)},
			wpn_fps_snp_r93 = {translation = Vector3(-0.002, -27, -4.622)},
			wpn_fps_snp_mosin = {translation = Vector3(-0.005, -47, -5.14)},
			wpn_fps_snp_wa2000 = {translation = Vector3(0, -27, -0.1)},
			wpn_fps_snp_model70 = {translation = Vector3(0, -27, -4.89)},
			wpn_fps_snp_desertfox = {translation = Vector3(0, -35, -4.8)},
			wpn_fps_snp_tti = {translation = Vector3(0, -19, -0.955)},
			wpn_fps_snp_siltstone = {translation = Vector3(0, -14, -4.872)}
		},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"},
		texture_switch = {
			material = "gfx_reddot1",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_ass_g36_o_vintage = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		dlc = "tango",
		a_obj = "a_body",
		type = "sight",
		name_id = "bm_wp_g36_o_vintage",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_body_optics/wpn_fps_ass_g36_o_vintage",
		pcs = {},
		stats = {
			zoom = 5,
			recoil = 1,
			value = 1
		},
		perks = {"scope"},
		override = {
			wpn_fps_ass_g36_body_standard = {
				third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_body_optics/wpn_third_ass_g36_body_optics",
				unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_body_optics/wpn_fps_ass_g36_body_optics"
			},
			wpn_fps_ass_g36_body_sl8 = {
				third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_body_optics/wpn_third_ass_g36_body_optics_sl8",
				unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_body_optics/wpn_fps_ass_g36_body_optics_sl8"
			}
		},
		stance_mod = {wpn_fps_ass_g36 = {translation = Vector3(-0.02, 0, -2.35)}},
		texture_switch = {
			material = "gfx_reddot1",
			channel = "diffuse_texture"
		},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_upg_g36_fg_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		type = "foregrip",
		a_obj = "a_fg",
		dlc = "tango",
		name_id = "bm_wp_g36_fg_long",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_fg_long/wpn_fps_upg_g36_fg_long",
		pcs = {},
		stats = {
			spread = 2,
			recoil = 1,
			value = 1,
			concealment = -3
		},
		forbids = {
			"wpn_fps_ass_g36_b_short",
			"wpn_fps_ass_g36_b_long"
		},
		adds = {"wpn_fps_upg_g36_b_ultra"}
	}
	self.parts.wpn_fps_upg_g36_b_ultra = {
		a_obj = "a_fg",
		type = "barrel",
		name_id = "bm_wp_g36_b_ultra",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_fg_long/wpn_fps_upg_g36_b_ultra",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_mp5_fg_flash = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		dlc = "tango",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_mp5_fg_flash",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_mp5_fg_flash/wpn_fps_smg_mp5_fg_flash",
		pcs = {},
		stats = {
			spread = 1,
			recoil = 1,
			concealment = -2,
			value = 1
		},
		perks = {"gadget"},
		adds = {"wpn_fps_smg_mp5_b_mp5a5"},
		animations = {reload = "reload"},
		override = {
			wpn_fps_upg_fl_ass_smg_sho_peqbox = {parent = "foregrip"},
			wpn_fps_upg_fl_ass_smg_sho_surefire = {parent = "foregrip"},
			wpn_fps_upg_fl_ass_peq15 = {parent = "foregrip"},
			wpn_fps_upg_fl_ass_laser = {parent = "foregrip"},
			wpn_fps_upg_fl_ass_utg = {parent = "foregrip"},
			wpn_fps_addon_ris = {parent = "foregrip"}
		}
	}
	self.parts.wpn_fps_smg_mp5_s_folding = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		type = "stock",
		a_obj = "a_s",
		dlc = "tango",
		name_id = "bm_wp_mp5_s_folding",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_mp5_s_folding/wpn_fps_smg_mp5_s_folding",
		pcs = {},
		stats = {
			value = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_upg_ns_duck = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		type = "barrel_ext",
		a_obj = "a_ns",
		parent = "barrel",
		dlc = "tango",
		name_id = "bm_wp_ns_duck",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_upg_ns_duck/wpn_fps_upg_ns_duck",
		pcs = {},
		stats = {
			value = 1,
			recoil = 2,
			damage = 2,
			concealment = -2,
			spread_multi = {
				2.25,
				0.5
			}
		}
	}
	self.parts.wpn_fps_pis_usp_m_big = {
		texture_bundle_folder = "tng",
		a_obj = "a_m",
		type = "magazine",
		is_a_unlockable = true,
		dlc = "tango",
		name_id = "bm_wp_usp_m_big",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_pis_usp_m_big/wpn_fps_pis_usp_m_big",
		pcs = {},
		stats = {
			extra_ammo = 6,
			value = 2,
			recoil = 2,
			concealment = -2,
			spread_moving = -1
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_pis_1911_m_big = {
		texture_bundle_folder = "tng",
		a_obj = "a_m",
		type = "magazine",
		is_a_unlockable = true,
		dlc = "tango",
		name_id = "bm_wp_1911_m_big",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_pis_1911_m_big/wpn_fps_pis_1911_m_big",
		pcs = {},
		stats = {
			extra_ammo = 6,
			value = 2,
			recoil = 2,
			concealment = -2,
			spread_moving = -1
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_p90_m_strap = {
		texture_bundle_folder = "tng",
		a_obj = "a_m",
		type = "magazine",
		is_a_unlockable = true,
		dlc = "tango",
		name_id = "bm_wp_p90_m_strap",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_p90_m_strap/wpn_fps_smg_p90_m_strap",
		pcs = {},
		stats = {
			value = 2,
			reload = 10
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_ass_aug_m_quick = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		a_obj = "a_m",
		type = "magazine",
		dlc = "tango",
		name_id = "bm_wp_aug_m_quick",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_aug_m_quick/wpn_fps_ass_aug_m_quick",
		pcs = {},
		bullet_objects = {
			amount = 21,
			prefix = "g_bullet_"
		},
		stats = {
			value = 2,
			reload = 10
		}
	}
	self.parts.wpn_fps_m4_upg_m_quick = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		type = "magazine",
		a_obj = "a_m",
		dlc = "tango",
		name_id = "bm_wp_m4_m_quick",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_olympic_m_quick/wpn_fps_m4_upg_m_quick",
		pcs = {},
		stats = {
			value = 2,
			reload = 10
		}
	}
	self.parts.wpn_fps_upg_ak_m_quick = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		type = "magazine",
		a_obj = "a_m",
		dlc = "tango",
		name_id = "bm_wp_ak_m_quick",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_ak_m_quick/wpn_fps_upg_ak_m_quick",
		pcs = {},
		stats = {
			value = 2,
			reload = 10
		}
	}
	self.parts.wpn_fps_ass_g36_m_quick = {
		texture_bundle_folder = "tng",
		a_obj = "a_m",
		type = "magazine",
		is_a_unlockable = true,
		dlc = "tango",
		name_id = "bm_wp_g36_m_quick",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_m_quick/wpn_fps_ass_g36_m_quick",
		pcs = {},
		stats = {
			value = 2,
			reload = 10
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_mac10_m_quick = {
		texture_bundle_folder = "tng",
		a_obj = "a_m",
		type = "magazine",
		is_a_unlockable = true,
		dlc = "tango",
		name_id = "bm_wp_mac10_m_quick",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_mac10_m_quick/wpn_fps_smg_mac10_m_quick",
		pcs = {},
		stats = {
			value = 2,
			reload = 10,
			extra_ammo = 4
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_smg_sr2_m_quick = {
		texture_bundle_folder = "tng",
		a_obj = "a_m",
		type = "magazine",
		is_a_unlockable = true,
		dlc = "tango",
		name_id = "bm_wp_sr2_m_quick",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_sr2_m_quick/wpn_fps_smg_sr2_m_quick",
		pcs = {},
		stats = {
			value = 2,
			reload = 10
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_sho_saiga_b_short.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_sho_saiga_b_short/wpn_third_sho_saiga_b_short"
	self.parts.wpn_fps_sho_saiga_fg_holy.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_sho_saiga_fg_holy/wpn_third_sho_saiga_fg_holy"
	self.parts.wpn_fps_upg_o_45rds.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_upg_o_45rds/wpn_third_upg_o_45rds"
	self.parts.wpn_fps_upg_o_spot.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_upg_o_spot/wpn_third_upg_o_spot"
	self.parts.wpn_fps_upg_o_box.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_upg_o_box/wpn_third_upg_o_box"
	self.parts.wpn_fps_upg_g36_fg_long.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_fg_long/wpn_third_upg_g36_fg_long"
	self.parts.wpn_fps_smg_mp5_fg_flash.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_mp5_fg_flash/wpn_third_smg_mp5_fg_flash"
	self.parts.wpn_fps_smg_mp5_s_folding.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_mp5_s_folding/wpn_third_smg_mp5_s_folding"
	self.parts.wpn_fps_upg_ns_duck.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_upg_ns_duck/wpn_third_upg_ns_duck"
	self.parts.wpn_fps_pis_usp_m_big.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_pis_usp_m_big/wpn_third_pis_usp_m_big"
	self.parts.wpn_fps_pis_1911_m_big.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_pis_1911_m_big/wpn_third_pis_1911_m_big"
	self.parts.wpn_fps_smg_p90_m_strap.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_p90_m_strap/wpn_third_smg_p90_m_strap"
	self.parts.wpn_fps_ass_aug_m_quick.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_aug_m_quick/wpn_third_ass_aug_m_quick"
	self.parts.wpn_fps_m4_upg_m_quick.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_olympic_m_quick/wpn_third_m4_upg_m_quick"
	self.parts.wpn_fps_upg_ak_m_quick.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_ak_m_quick/wpn_third_upg_ak_m_quick"
	self.parts.wpn_fps_ass_g36_m_quick.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_ass_g36_m_quick/wpn_third_ass_g36_m_quick"
	self.parts.wpn_fps_smg_mac10_m_quick.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_mac10_m_quick/wpn_third_smg_mac10_m_quick"
	self.parts.wpn_fps_smg_sr2_m_quick.third_unit = "units/pd2_dlc_tng/weapons/wpn_fps_smg_sr2_m_quick/wpn_third_smg_sr2_m_quick"
end

function WeaponFactoryTweakData:_init_arbiter()
	self.parts.wpn_fps_gre_arbiter_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_arbiter_b_standard",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_arbiter_b_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		type = "barrel",
		a_obj = "a_b",
		dlc = "tango",
		name_id = "bm_wp_arbiter_b_long",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_b_long",
		pcs = {},
		stats = {
			spread = 1,
			recoil = 1,
			value = 1,
			concealment = -2
		}
	}
	self.parts.wpn_fps_gre_arbiter_b_comp = {
		is_a_unlockable = true,
		texture_bundle_folder = "tng",
		type = "barrel",
		a_obj = "a_b",
		dlc = "tango",
		name_id = "bm_wp_arbiter_b_comp",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_b_comp",
		pcs = {},
		stats = {
			spread = -1,
			recoil = -1,
			value = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_gre_arbiter_body_standard = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_l85a2_fg_medium",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_arbiter_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_l85a2_fg_medium",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_arbiter_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_mp5_s_folding",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_arbiter_bolt = {
		a_obj = "a_bolt",
		type = "extra",
		name_id = "bm_wp_mp5_s_folding",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_bolt",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_arbiter_charginghandle = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_mp5_s_folding",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_charginghandle",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_arbiter_ejector = {
		a_obj = "a_ejector",
		type = "extra",
		name_id = "bm_wp_mp5_s_folding",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_ejector",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_arbiter_o_standard = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_mp5_s_folding",
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter_pts/wpn_fps_gre_arbiter_o_standard",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_gre_arbiter_b_comp.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_b_comp"
	self.parts.wpn_fps_gre_arbiter_b_long.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_b_long"
	self.parts.wpn_fps_gre_arbiter_b_standard.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_b_standard"
	self.parts.wpn_fps_gre_arbiter_body_standard.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_body_standard"
	self.parts.wpn_fps_gre_arbiter_m_standard.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_m_standard"
	self.parts.wpn_fps_gre_arbiter_s_standard.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_s_standard"
	self.parts.wpn_fps_gre_arbiter_bolt.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_bolt"
	self.parts.wpn_fps_gre_arbiter_charginghandle.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_charginghandle"
	self.parts.wpn_fps_gre_arbiter_ejector.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_ejector"
	self.parts.wpn_fps_gre_arbiter_o_standard.third_unit = "units/pd2_dlc_tng/weapons/wpn_third_gre_arbiter_pts/wpn_third_gre_arbiter_o_standard"
	self.wpn_fps_gre_arbiter = {
		unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter/wpn_fps_gre_arbiter",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil_zoom",
			fire = "recoil"
		},
		stock_adapter = "wpn_fps_gre_arbiter_stock_adapter",
		forbids = {"wpn_fps_addon_ris"},
		adds = {},
		default_blueprint = {
			"wpn_fps_gre_arbiter_b_standard",
			"wpn_fps_gre_arbiter_body_standard",
			"wpn_fps_gre_arbiter_m_standard",
			"wpn_fps_gre_arbiter_s_standard",
			"wpn_fps_gre_arbiter_bolt",
			"wpn_fps_gre_arbiter_charginghandle",
			"wpn_fps_gre_arbiter_ejector",
			"wpn_fps_gre_arbiter_o_standard"
		},
		uses_parts = {
			"wpn_fps_gre_arbiter_b_comp",
			"wpn_fps_gre_arbiter_b_long",
			"wpn_fps_gre_arbiter_b_standard",
			"wpn_fps_gre_arbiter_body_standard",
			"wpn_fps_gre_arbiter_m_standard",
			"wpn_fps_gre_arbiter_s_standard",
			"wpn_fps_gre_arbiter_bolt",
			"wpn_fps_gre_arbiter_charginghandle",
			"wpn_fps_gre_arbiter_ejector",
			"wpn_fps_gre_arbiter_o_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_gre_arbiter_npc = deep_clone(self.wpn_fps_gre_arbiter)
	self.wpn_fps_gre_arbiter_npc.unit = "units/pd2_dlc_tng/weapons/wpn_fps_gre_arbiter/wpn_fps_gre_arbiter_npc"
end

function WeaponFactoryTweakData:_init_contraband()
	self.parts.wpn_fps_ass_contraband_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_contraband_b_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_contraband_body_standard = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_contraband_body_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_contraband_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_contraband_dh_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_contraband_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_contraband_fg_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_contraband_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_contraband_g_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_contraband_gl_m203 = {
		type = "underbarrel",
		a_obj = "a_gl",
		sub_type = "grenade_launcher",
		name_id = "bm_wp_contraband_gl_m203",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_gl_m203",
		bullet_objects = {
			amount = 1,
			prefix = "g_grenade_"
		},
		stats = {value = 1},
		animations = {bipod_reload = "reload_ul"},
		perks = {"underbarrel"}
	}
	self.parts.wpn_fps_ass_contraband_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_contraband_m_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_m_standard",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_contraband_ns_standard = {
		parent = "barrel",
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_contraband_ns_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_ns_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_contraband_o_standard = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_contraband_o_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_o_standard",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_ass_contraband_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_contraband_s_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_contraband_bolt_standard = {
		a_obj = "a_bolt",
		type = "extra",
		name_id = "bm_wp_contraband_s_standard",
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband_pts/wpn_fps_ass_contraband_bolt_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_contraband_b_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_b_standard"
	self.parts.wpn_fps_ass_contraband_body_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_body_standard"
	self.parts.wpn_fps_ass_contraband_dh_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_dh_standard"
	self.parts.wpn_fps_ass_contraband_fg_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_fg_standard"
	self.parts.wpn_fps_ass_contraband_g_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_g_standard"
	self.parts.wpn_fps_ass_contraband_gl_m203.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_gl_m203"
	self.parts.wpn_fps_ass_contraband_m_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_m_standard"
	self.parts.wpn_fps_ass_contraband_ns_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_ns_standard"
	self.parts.wpn_fps_ass_contraband_o_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_o_standard"
	self.parts.wpn_fps_ass_contraband_s_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_s_standard"
	self.parts.wpn_fps_ass_contraband_bolt_standard.third_unit = "units/pd2_dlc_chico/weapons/wpn_third_ass_contraband_pts/wpn_third_ass_contraband_bolt_standard"
	self.wpn_fps_ass_contraband = {
		unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband/wpn_fps_ass_contraband",
		optional_types = {
			"gadget",
			"sight",
			"barrel_ext"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			fire = "recoil",
			fire_steelsight = "recoil",
			bipod_reload = "bipod_reload",
			bipod_fire = "bipod_recoil",
			reload = "reload",
			bipod_fire_steelsight = "bipod_recoil_zoom"
		},
		forbids = {"wpn_fps_addon_ris"},
		adds = {},
		default_blueprint = {
			"wpn_fps_ass_contraband_b_standard",
			"wpn_fps_ass_contraband_body_standard",
			"wpn_fps_ass_contraband_dh_standard",
			"wpn_fps_ass_contraband_fg_standard",
			"wpn_fps_ass_contraband_g_standard",
			"wpn_fps_ass_contraband_gl_m203",
			"wpn_fps_ass_contraband_m_standard",
			"wpn_fps_ass_contraband_ns_standard",
			"wpn_fps_ass_contraband_o_standard",
			"wpn_fps_ass_contraband_s_standard",
			"wpn_fps_ass_contraband_bolt_standard"
		},
		uses_parts = {
			"wpn_fps_ass_contraband_b_standard",
			"wpn_fps_ass_contraband_body_standard",
			"wpn_fps_ass_contraband_dh_standard",
			"wpn_fps_ass_contraband_fg_standard",
			"wpn_fps_ass_contraband_g_standard",
			"wpn_fps_ass_contraband_gl_m203",
			"wpn_fps_ass_contraband_m_standard",
			"wpn_fps_ass_contraband_ns_standard",
			"wpn_fps_ass_contraband_o_standard",
			"wpn_fps_ass_contraband_s_standard",
			"wpn_fps_ass_contraband_bolt_standard",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_contraband_npc = deep_clone(self.wpn_fps_ass_contraband)
	self.wpn_fps_ass_contraband_npc.unit = "units/pd2_dlc_chico/weapons/wpn_fps_ass_contraband/wpn_fps_ass_contraband_npc"
end

function WeaponFactoryTweakData:_init_ray()
	self.parts.wpn_fps_gre_ray_body = {
		a_obj = "a_body",
		type = "lower_reciever",
		name_id = "bm_wp_gre_ray_body",
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray_pts/wpn_fps_gre_ray_body",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_ray_bolt = {
		a_obj = "a_bolt",
		type = "upper_reciever",
		name_id = "bm_wp_gre_ray_body",
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray_pts/wpn_fps_gre_ray_bolt",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_ray_magazine = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_gre_ray_body",
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray_pts/wpn_fps_gre_ray_magazine",
		bullet_objects = {
			amount = 4,
			prefix = "g_rocket_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_ray_magazine_handle = {
		a_obj = "a_handle",
		type = "foregrip",
		name_id = "bm_wp_gre_ray_body",
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray_pts/wpn_fps_gre_ray_magazine_handle",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_ray_ring_back = {
		a_obj = "a_ring_back",
		type = "grip",
		name_id = "bm_wp_gre_ray_body",
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray_pts/wpn_fps_gre_ray_ring_back",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_ray_ring_front = {
		a_obj = "a_ring_front",
		type = "stock",
		name_id = "bm_wp_gre_ray_body",
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray_pts/wpn_fps_gre_ray_ring_front",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_ray_sight = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_gre_ray_body",
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray_pts/wpn_fps_gre_ray_sight",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_ray_sight_lid = {
		a_obj = "a_lid",
		type = "drag_handle",
		name_id = "bm_wp_gre_ray_body",
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray_pts/wpn_fps_gre_ray_sight_lid",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_ray_barrel = {
		a_obj = "a_body",
		type = "barrel",
		name_id = "bm_wp_gre_ray_body",
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray_pts/wpn_fps_gre_ray_barrel",
		stats = {value = 1}
	}
	self.parts.wpn_fps_gre_ray_body.third_unit = "units/pd2_dlc_friend/weapons/wpn_third_gre_ray_pts/wpn_third_gre_ray_body"
	self.parts.wpn_fps_gre_ray_bolt.third_unit = "units/pd2_dlc_friend/weapons/wpn_third_gre_ray_pts/wpn_third_gre_ray_bolt"
	self.parts.wpn_fps_gre_ray_magazine.third_unit = "units/pd2_dlc_friend/weapons/wpn_third_gre_ray_pts/wpn_third_gre_ray_magazine"
	self.parts.wpn_fps_gre_ray_magazine_handle.third_unit = "units/pd2_dlc_friend/weapons/wpn_third_gre_ray_pts/wpn_third_gre_ray_magazine_handle"
	self.parts.wpn_fps_gre_ray_ring_back.third_unit = "units/pd2_dlc_friend/weapons/wpn_third_gre_ray_pts/wpn_third_gre_ray_ring_back"
	self.parts.wpn_fps_gre_ray_ring_front.third_unit = "units/pd2_dlc_friend/weapons/wpn_third_gre_ray_pts/wpn_third_gre_ray_ring_front"
	self.parts.wpn_fps_gre_ray_sight.third_unit = "units/pd2_dlc_friend/weapons/wpn_third_gre_ray_pts/wpn_third_gre_ray_sight"
	self.parts.wpn_fps_gre_ray_sight_lid.third_unit = "units/pd2_dlc_friend/weapons/wpn_third_gre_ray_pts/wpn_third_gre_ray_sight_lid"
	self.wpn_fps_gre_ray = {
		unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray/wpn_fps_gre_ray",
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil_zoom",
			fire = "recoil"
		},
		default_blueprint = {
			"wpn_fps_gre_ray_body",
			"wpn_fps_gre_ray_bolt",
			"wpn_fps_gre_ray_magazine",
			"wpn_fps_gre_ray_magazine_handle",
			"wpn_fps_gre_ray_ring_back",
			"wpn_fps_gre_ray_ring_front",
			"wpn_fps_gre_ray_sight",
			"wpn_fps_gre_ray_sight_lid",
			"wpn_fps_gre_ray_barrel"
		},
		uses_parts = {
			"wpn_fps_gre_ray_body",
			"wpn_fps_gre_ray_bolt",
			"wpn_fps_gre_ray_magazine",
			"wpn_fps_gre_ray_magazine_handle",
			"wpn_fps_gre_ray_ring_back",
			"wpn_fps_gre_ray_ring_front",
			"wpn_fps_gre_ray_sight",
			"wpn_fps_gre_ray_sight_lid",
			"wpn_fps_gre_ray_barrel"
		}
	}
	self.wpn_fps_gre_ray_npc = deep_clone(self.wpn_fps_gre_ray)
	self.wpn_fps_gre_ray_npc.unit = "units/pd2_dlc_friend/weapons/wpn_fps_gre_ray/wpn_fps_gre_ray_npc"
end

function WeaponFactoryTweakData:_init_tti()
	self.parts.wpn_fps_snp_tti_body_standard = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_tti_body_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_vg_standard = {
		a_obj = "a_vg",
		type = "vertical_grip",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_vg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_s_vltor = {
		texture_bundle_folder = "spa",
		type = "stock",
		a_obj = "a_s",
		dlc = "spa",
		name_id = "bm_wp_tti_s_vltor",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_s_vltor",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1
		},
		adds_type = {"stock_adapter"}
	}
	self.parts.wpn_fps_snp_tti_ns_standard = {
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_ns_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_ns_hex = {
		type = "barrel_ext",
		texture_bundle_folder = "spa",
		dlc = "spa",
		a_obj = "a_ns",
		sub_type = "silencer",
		name_id = "bm_wp_tti_ns_hex",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_ns_hex",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			spread_moving = 1,
			damage = -2,
			suppression = 12,
			value = 1,
			recoil = 1,
			concealment = -2
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_a"}
	}
	self.parts.wpn_fps_snp_tti_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_m_standard",
		bullet_objects = {
			amount = 20,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_g_grippy = {
		texture_bundle_folder = "spa",
		dlc = "spa",
		type = "grip",
		name_id = "bm_wp_tti_g_grippy",
		a_obj = "a_g",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_g_grippy",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 1
		}
	}
	self.parts.wpn_fps_snp_tti_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_dhs_switch = {
		a_obj = "a_dhs",
		type = "switch",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_dhs_switch",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_bolt_standard = {
		a_obj = "a_bolt",
		type = "bolt",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_bolt_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_body_receiverupper = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_body_receiverupper",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_body_receiverlower = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_body_receiverlower",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_tti_vg_standard",
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti_pts/wpn_fps_snp_tti_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_tti_body_standard.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_body_standard"
	self.parts.wpn_fps_snp_tti_vg_standard.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_vg_standard"
	self.parts.wpn_fps_snp_tti_s_vltor.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_s_vltor"
	self.parts.wpn_fps_snp_tti_ns_standard.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_ns_standard"
	self.parts.wpn_fps_snp_tti_ns_hex.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_ns_hex"
	self.parts.wpn_fps_snp_tti_m_standard.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_m_standard"
	self.parts.wpn_fps_snp_tti_g_grippy.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_g_grippy"
	self.parts.wpn_fps_snp_tti_fg_standard.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_fg_standard"
	self.parts.wpn_fps_snp_tti_dhs_switch.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_dhs_switch"
	self.parts.wpn_fps_snp_tti_dh_standard.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_dh_standard"
	self.parts.wpn_fps_snp_tti_bolt_standard.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_bolt_standard"
	self.parts.wpn_fps_snp_tti_body_receiverupper.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_body_receiverupper"
	self.parts.wpn_fps_snp_tti_body_receiverlower.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_body_receiverlower"
	self.parts.wpn_fps_snp_tti_b_standard.third_unit = "units/pd2_dlc_spa/weapons/wpn_third_snp_tti_pts/wpn_third_snp_tti_b_standard"
	self.wpn_fps_snp_tti = {
		unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti/wpn_fps_snp_tti",
		optional_types = {
			"gadget",
			"sight"
		},
		stock_adapter = "wpn_fps_upg_m4_s_adapter",
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		default_blueprint = {
			"wpn_fps_snp_tti_vg_standard",
			"wpn_fps_snp_tti_ns_standard",
			"wpn_fps_snp_tti_m_standard",
			"wpn_fps_snp_tti_fg_standard",
			"wpn_fps_snp_tti_dhs_switch",
			"wpn_fps_snp_tti_dh_standard",
			"wpn_fps_snp_tti_bolt_standard",
			"wpn_fps_snp_tti_body_receiverupper",
			"wpn_fps_snp_tti_body_receiverlower",
			"wpn_fps_snp_tti_b_standard",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_ass_contraband_s_standard",
			"wpn_fps_upg_m4_g_standard_vanilla"
		},
		uses_parts = {
			"wpn_fps_snp_tti_vg_standard",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_snp_tti_ns_standard",
			"wpn_fps_snp_tti_ns_hex",
			"wpn_fps_snp_tti_m_standard",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_snp_tti_fg_standard",
			"wpn_fps_snp_tti_dhs_switch",
			"wpn_fps_snp_tti_dh_standard",
			"wpn_fps_snp_tti_bolt_standard",
			"wpn_fps_snp_tti_body_receiverupper",
			"wpn_fps_snp_tti_body_receiverlower",
			"wpn_fps_snp_tti_b_standard",
			"wpn_fps_ass_contraband_s_standard",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_m4_uupg_s_fold",
			"wpn_fps_upg_m4_s_standard_vanilla",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_upg_m4_g_hgrip",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_m4_s_adapter",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_snp_tti_npc = deep_clone(self.wpn_fps_snp_tti)
	self.wpn_fps_snp_tti_npc.unit = "units/pd2_dlc_spa/weapons/wpn_fps_snp_tti/wpn_fps_snp_tti_npc"
end

function WeaponFactoryTweakData:_init_siltstone()
	self.parts.wpn_fps_snp_siltstone_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_siltstone_body_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_siltstone_b_silenced = {
		type = "barrel",
		texture_bundle_folder = "grv",
		dlc = "grv",
		a_obj = "a_b",
		sub_type = "silencer",
		name_id = "bm_wp_siltstone_b_silenced",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_b_silenced",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			alert_size = 12,
			value = 6,
			damage = -2,
			suppression = 12,
			spread = -1,
			recoil = 1,
			spread_moving = 1
		},
		perks = {"silencer"},
		sound_switch = {suppressed = "suppressed_c"}
	}
	self.parts.wpn_fps_snp_siltstone_ns_variation_b = {
		texture_bundle_folder = "grv",
		dlc = "grv",
		type = "barrel",
		name_id = "bm_wp_siltstone_ns_variation_b",
		a_obj = "a_b",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_ns_variation_b",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 2,
			spread = 2
		}
	}
	self.parts.wpn_fps_snp_siltstone_body_receiver = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_siltstone_body_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_body_receiver",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_siltstone_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_siltstone_body_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_siltstone_ejector = {
		a_obj = "a_m_release",
		type = "extra",
		name_id = "bm_wp_siltstone_body_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_ejector",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_siltstone_fg_polymer = {
		texture_bundle_folder = "grv",
		dlc = "grv",
		type = "foregrip",
		name_id = "bm_wp_siltstone_fg_polymer",
		a_obj = "a_fg",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_fg_polymer",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = -2,
			concealment = 4
		}
	}
	self.parts.wpn_fps_snp_siltstone_fg_wood = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_siltstone_body_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_fg_wood",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_siltstone_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_siltstone_body_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_m_standard",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_siltstone_o_scopemount = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_siltstone_body_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_o_scopemount",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_siltstone_iron_sight = {
		type = "sight",
		texture_bundle_folder = "grv",
		a_obj = "a_o",
		dlc = "grv",
		name_id = "bm_wp_siltstone_iron_sight",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_iron_sight",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {value = 1},
		forbids = {
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_45rds_v2",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.parts.wpn_fps_snp_siltstone_s_polymer = {
		texture_bundle_folder = "grv",
		dlc = "grv",
		type = "stock",
		name_id = "bm_wp_siltstone_s_polymer",
		a_obj = "a_s",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_s_polymer",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = -2,
			concealment = 3
		}
	}
	self.parts.wpn_fps_snp_siltstone_s_wood = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_siltstone_body_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_fps_snp_siltstone_s_wood",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_siltstone_b_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_b_standard"
	self.parts.wpn_fps_snp_siltstone_b_silenced.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_b_silenced"
	self.parts.wpn_fps_snp_siltstone_body_receiver.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_body_receiver"
	self.parts.wpn_fps_snp_siltstone_dh_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_dh_standard"
	self.parts.wpn_fps_snp_siltstone_ejector.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_ejector"
	self.parts.wpn_fps_snp_siltstone_fg_polymer.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_fg_polymer"
	self.parts.wpn_fps_snp_siltstone_fg_wood.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_fg_wood"
	self.parts.wpn_fps_snp_siltstone_m_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_m_standard"
	self.parts.wpn_fps_snp_siltstone_ns_variation_b.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_ns_variation_b"
	self.parts.wpn_fps_snp_siltstone_o_scopemount.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_o_scopemount"
	self.parts.wpn_fps_snp_siltstone_s_polymer.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_s_polymer"
	self.parts.wpn_fps_snp_siltstone_s_wood.third_unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone_pts/wpn_third_snp_siltstone_s_wood"
	self.wpn_fps_snp_siltstone = {
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone/wpn_fps_snp_siltstone",
		optional_types = {
			"gadget",
			"sight"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_docter = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_eotech = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_cmore = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_acog = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_cs = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_reflex = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_box = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_leupold = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_shortdot = {"wpn_fps_snp_siltstone_o_scopemount"},
			wpn_fps_upg_o_spot = {"wpn_fps_snp_siltstone_o_scopemount"}
		},
		default_blueprint = {
			"wpn_fps_snp_siltstone_b_standard",
			"wpn_fps_snp_siltstone_body_receiver",
			"wpn_fps_snp_siltstone_dh_standard",
			"wpn_fps_snp_siltstone_ejector",
			"wpn_fps_snp_siltstone_fg_wood",
			"wpn_fps_snp_siltstone_m_standard",
			"wpn_fps_snp_siltstone_s_wood",
			"wpn_fps_upg_o_shortdot"
		},
		uses_parts = {
			"wpn_fps_snp_siltstone_b_standard",
			"wpn_fps_snp_siltstone_b_silenced",
			"wpn_fps_snp_siltstone_body_receiver",
			"wpn_fps_snp_siltstone_dh_standard",
			"wpn_fps_snp_siltstone_ejector",
			"wpn_fps_snp_siltstone_fg_polymer",
			"wpn_fps_snp_siltstone_fg_wood",
			"wpn_fps_snp_siltstone_m_standard",
			"wpn_fps_snp_siltstone_ns_variation_b",
			"wpn_fps_snp_siltstone_o_scopemount",
			"wpn_fps_snp_siltstone_s_polymer",
			"wpn_fps_snp_siltstone_s_wood",
			"wpn_fps_snp_siltstone_iron_sight",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_shortdot",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_snp_siltstone_npc = deep_clone(self.wpn_fps_snp_siltstone)
	self.wpn_fps_snp_siltstone_npc.unit = "units/pd2_dlc_grv/weapons/wpn_fps_snp_siltstone/wpn_fps_snp_siltstone_npc"
end

function WeaponFactoryTweakData:_init_flint()
	self.parts.wpn_fps_ass_flint_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_flint_b_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_flint_body_upperreceiver = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_flint_body_upperreceiver",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_body_receiver",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_flint_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_flint_dh_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_flint_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_flint_fg_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_fg_standard",
		stats = {value = 1},
		forbids = {"wpn_fps_addon_ris"}
	}
	self.parts.wpn_fps_ass_flint_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_flint_g_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_flint_m_release_standard = {
		a_obj = "a_m_release",
		type = "extra",
		name_id = "bm_wp_flint_m_release_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_m_release_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_flint_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_flint_m_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_m_standard",
		bullet_objects = {
			amount = 2,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_flint_ns_standard = {
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_flint_ns_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_ns_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_flint_o_standard = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_flint_o_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_o_standard",
		stats = {value = 1},
		forbids = {"wpn_fps_upg_o_xpsg33_magnifier"}
	}
	self.parts.wpn_fps_ass_flint_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_flint_s_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_snp_flint_s_adapter = {
		a_obj = "a_s",
		type = "stock_adapter",
		name_id = "bm_wp_flint_s_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint_pts/wpn_fps_ass_flint_s_adapter",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_flint_b_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_b_standard"
	self.parts.wpn_fps_ass_flint_body_upperreceiver.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_body_receiver"
	self.parts.wpn_fps_ass_flint_dh_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_dh_standard"
	self.parts.wpn_fps_ass_flint_fg_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_fg_standard"
	self.parts.wpn_fps_ass_flint_g_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_g_standard"
	self.parts.wpn_fps_ass_flint_m_release_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_m_release_standard"
	self.parts.wpn_fps_ass_flint_m_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_m_standard"
	self.parts.wpn_fps_ass_flint_ns_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_ns_standard"
	self.parts.wpn_fps_ass_flint_o_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_o_standard"
	self.parts.wpn_fps_ass_flint_s_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_ass_flint_pts/wpn_third_ass_flint_s_standard"
	self.wpn_fps_ass_flint = {
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint/wpn_fps_ass_flint",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		stock_adapter = "wpn_fps_snp_flint_s_adapter",
		optional_types = {
			"barrel_ext",
			"gadget",
			"vertical_grip"
		},
		default_blueprint = {
			"wpn_fps_ass_flint_b_standard",
			"wpn_fps_ass_flint_body_upperreceiver",
			"wpn_fps_ass_flint_m_standard",
			"wpn_fps_ass_flint_fg_standard",
			"wpn_fps_ass_flint_dh_standard",
			"wpn_fps_ass_flint_ns_standard",
			"wpn_fps_ass_flint_o_standard",
			"wpn_fps_ass_flint_s_standard",
			"wpn_fps_ass_flint_g_standard",
			"wpn_fps_ass_flint_m_release_standard"
		},
		uses_parts = {
			"wpn_fps_ass_flint_b_standard",
			"wpn_fps_ass_flint_body_upperreceiver",
			"wpn_fps_ass_flint_m_standard",
			"wpn_fps_ass_flint_m_release_standard",
			"wpn_fps_ass_flint_fg_standard",
			"wpn_fps_ass_flint_dh_standard",
			"wpn_fps_ass_flint_ns_standard",
			"wpn_fps_ass_flint_o_standard",
			"wpn_fps_ass_flint_s_standard",
			"wpn_fps_ass_flint_g_standard",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ns_ass_pbs1",
			"wpn_fps_upg_ak_ns_ak105",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_ak_g_rk3",
			"wpn_fps_upg_m4_s_ubr",
			"wpn_fps_upg_m4_s_crane",
			"wpn_fps_upg_m4_s_mk46",
			"wpn_fps_upg_m4_s_standard_vanilla",
			"wpn_fps_upg_m4_s_pts",
			"wpn_fps_upg_ak_m_quad",
			"wpn_fps_upg_ak_m_uspalm",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_ak_m_quick",
			"wpn_fps_snp_tti_s_vltor",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_flint_npc = deep_clone(self.wpn_fps_ass_flint)
	self.wpn_fps_ass_flint_npc.unit = "units/pd2_dlc_grv/weapons/wpn_fps_ass_flint/wpn_fps_ass_flint_npc"
end

function WeaponFactoryTweakData:_init_coal()
	self.parts.wpn_fps_smg_coal_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_coal_b_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_body_standard = {
		a_obj = "a_body",
		type = "upper_reciever",
		name_id = "bm_wp_coal_body_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_coal_dh_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_coal_fg_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_coal_g_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_coal_m_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_m_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_mr_standard = {
		a_obj = "a_mr",
		type = "extra",
		name_id = "bm_wp_coal_m_release_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_mr_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_ns_standard = {
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_coal_ns_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_ns_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_coal_s_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_o_scopemount_standard = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_coal_o_scopemount_standard",
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal_pts/wpn_fps_smg_coal_o_scopemount_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_coal_b_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_b_standard"
	self.parts.wpn_fps_smg_coal_body_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_body_standard"
	self.parts.wpn_fps_smg_coal_dh_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_dh_standard"
	self.parts.wpn_fps_smg_coal_fg_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_fg_standard"
	self.parts.wpn_fps_smg_coal_g_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_g_standard"
	self.parts.wpn_fps_smg_coal_m_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_m_standard"
	self.parts.wpn_fps_smg_coal_mr_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_mr_standard"
	self.parts.wpn_fps_smg_coal_ns_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_ns_standard"
	self.parts.wpn_fps_smg_coal_s_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_s_standard"
	self.parts.wpn_fps_smg_coal_o_scopemount_standard.third_unit = "units/pd2_dlc_grv/weapons/wpn_third_smg_coal_pts/wpn_third_smg_coal_o_scopemount_standard"
	self.wpn_fps_smg_coal = {
		unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal/wpn_fps_smg_coal",
		animations = {
			reload = "reload",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty = "reload_not_empty"
		},
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_coal_o_scopemount_standard"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_coal_o_scopemount_standard"}
		},
		default_blueprint = {
			"wpn_fps_smg_coal_b_standard",
			"wpn_fps_smg_coal_body_standard",
			"wpn_fps_smg_coal_m_standard",
			"wpn_fps_smg_coal_fg_standard",
			"wpn_fps_smg_coal_dh_standard",
			"wpn_fps_smg_coal_ns_standard",
			"wpn_fps_smg_coal_s_standard",
			"wpn_fps_smg_coal_g_standard",
			"wpn_fps_smg_coal_mr_standard"
		},
		uses_parts = {
			"wpn_fps_smg_coal_b_standard",
			"wpn_fps_smg_coal_body_standard",
			"wpn_fps_smg_coal_fg_standard",
			"wpn_fps_smg_coal_g_standard",
			"wpn_fps_smg_coal_dh_standard",
			"wpn_fps_smg_coal_ns_standard",
			"wpn_fps_smg_coal_s_standard",
			"wpn_fps_smg_coal_m_standard",
			"wpn_fps_smg_coal_mr_standard",
			"wpn_fps_smg_coal_o_scopemount_standard",
			"wpn_fps_upg_i_singlefire",
			"wpn_fps_upg_i_autofire",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_ns_ass_pbs1",
			"wpn_fps_upg_ak_ns_ak105",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ak_g_hgrip",
			"wpn_fps_upg_ak_g_pgrip",
			"wpn_fps_upg_ak_g_wgrip",
			"wpn_fps_upg_ak_g_rk3",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier"
		}
	}
	self.wpn_fps_smg_coal_npc = deep_clone(self.wpn_fps_smg_coal)
	self.wpn_fps_smg_coal_npc.unit = "units/pd2_dlc_grv/weapons/wpn_fps_smg_coal/wpn_fps_smg_coal_npc"
end

function WeaponFactoryTweakData:_init_varmods()
	self.parts.wpn_fps_upg_o_xpsg33_magnifier = {
		a_obj = "a_magnifier",
		texture_bundle_folder = "flip",
		depends_on = "sight",
		type = "gadget",
		parent = "sight",
		sub_type = "second_sight",
		name_id = "bm_wpn_fps_upg_o_xpsg33_magnifier",
		unit = "units/pd2_dlc_flip/weapons/wpn_fps_upg_o_xpsg33/wpn_fps_upg_o_xpsg33_magnifier",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			gadget_zoom = 9,
			recoil = 1
		},
		perks = {"gadget"},
		stance_mod = {
			wpn_fps_ass_m4 = {translation = Vector3(0, 6, -0.58)},
			wpn_fps_ass_amcar = {translation = Vector3(0, 6, -0.1)},
			wpn_fps_ass_m16 = {translation = Vector3(0, 6, -0.12)},
			wpn_fps_smg_olympic = {translation = Vector3(0, 6, -0.12)},
			wpn_fps_ass_74 = {translation = Vector3(0, 6, -3.1)},
			wpn_fps_ass_akm = {translation = Vector3(0, 6, -3.2)},
			wpn_fps_ass_akm_gold = {translation = Vector3(0, 6, -3.2)},
			wpn_fps_shot_saiga = {translation = Vector3(0, 6, -3)},
			wpn_fps_shot_r870 = {translation = Vector3(0.01, 6, -3.3)},
			wpn_fps_shot_serbu = {translation = Vector3(0, 6, -3.3)},
			wpn_fps_smg_akmsu = {translation = Vector3(-0.028, 6, -3.35)},
			wpn_fps_ass_ak5 = {translation = Vector3(0.025, 6, -3.725)},
			wpn_fps_ass_aug = {translation = Vector3(0, 6, -2.8)},
			wpn_fps_ass_g36 = {translation = Vector3(0, 6, -3)},
			wpn_fps_smg_p90 = {translation = Vector3(0, 6, -2.97)},
			wpn_fps_ass_m14 = {translation = Vector3(-0.04, 6, -3.87)},
			wpn_fps_smg_mp9 = {translation = Vector3(0, 6, -3.47)},
			wpn_fps_smg_mp5 = {translation = Vector3(0, 6, -3)},
			wpn_fps_smg_mac10 = {translation = Vector3(0, -4, -3)},
			wpn_fps_ass_s552 = {translation = Vector3(-0.08, 6, -2.1)},
			wpn_fps_smg_m45 = {translation = Vector3(0, 6, -3.9)},
			wpn_fps_smg_mp7 = {translation = Vector3(0, 6, -2.8)},
			wpn_fps_ass_scar = {translation = Vector3(0, 6, -0.25)},
			wpn_fps_pis_rage = {translation = Vector3(-0.05, -4, -4.65)},
			wpn_fps_pis_deagle = {
				translation = Vector3(0, -9, -4.25),
				rotation = Rotation(0, -0.5, 0)
			},
			wpn_fps_snp_m95 = {translation = Vector3(0, 10, -3.8)},
			wpn_fps_snp_msr = {translation = Vector3(0, -1, -3.55)},
			wpn_fps_snp_r93 = {translation = Vector3(-0.022, -1, -3.782)},
			wpn_fps_ass_fal = {translation = Vector3(0, 10, -3.5)},
			wpn_fps_sho_ben = {translation = Vector3(0, 6, -3.2)},
			wpn_fps_sho_striker = {translation = Vector3(0, 6, -2.8)},
			wpn_fps_sho_ksg = {translation = Vector3(0, 6, -1.3)},
			wpn_fps_smg_scorpion = {translation = Vector3(0, -4, -5.2)},
			wpn_fps_smg_tec9 = {
				translation = Vector3(0, -2, -5),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_uzi = {translation = Vector3(0, -2, -5.1)},
			wpn_fps_pis_judge = {translation = Vector3(-0.02, -4, -5.406)},
			wpn_fps_ass_g3 = {translation = Vector3(0.025, -2, -3.42)},
			wpn_fps_ass_galil = {translation = Vector3(-0.01, 1, -3.25)},
			wpn_fps_ass_famas = {translation = Vector3(0, 13, -6.2)},
			wpn_fps_sho_spas12 = {translation = Vector3(-0.2, 6, -3.9)},
			wpn_fps_smg_sterling = {translation = Vector3(0, -8, -3.61)},
			wpn_fps_snp_mosin = {translation = Vector3(0, -22, -4.3)},
			wpn_fps_smg_thompson = {translation = Vector3(0, -18, -4.2)},
			wpn_fps_ass_l85a2 = {translation = Vector3(0, 12, 1.85)},
			wpn_fps_ass_vhs = {translation = Vector3(-0.01, 3, -1.205)},
			wpn_fps_rpg7 = {
				translation = Vector3(0, 11, 0.04),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_sho_aa12 = {
				translation = Vector3(-0.01, 6, 0.07),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_gre_m32 = {
				translation = Vector3(0, 11, -3.5),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_polymer = {
				translation = Vector3(0, 8, -0.65),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_wa2000 = {
				translation = Vector3(0, -4, 0.75),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_model70 = {
				translation = Vector3(0, -4, -4.05),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_shot_m37 = {
				translation = Vector3(0, -4, -4.05),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_sr2 = {
				translation = Vector3(0, 11, -4.6),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_tecci = {
				translation = Vector3(-0.01, 11, -1.7),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_hajk = {
				translation = Vector3(0, 11, -0.5),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_desertfox = {
				translation = Vector3(0, -6, -3.9),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_schakal = {
				translation = Vector3(0, 6, -2.8),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_sho_rota = {
				translation = Vector3(0, 6, -0.4),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_gre_arbiter = {
				translation = Vector3(0, 6, -0.4),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_contraband = {
				translation = Vector3(-0.01, 11, -1.7),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_tti = {
				translation = Vector3(0, 11, -0.1),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_snp_siltstone = {
				translation = Vector3(0, 11, -4.04),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_flint = {
				translation = Vector3(0, 11, -2.65),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_smg_coal = {
				translation = Vector3(0, 11, -4),
				rotation = Rotation(0, 0, 0)
			},
			wpn_fps_ass_ching = {
				translation = Vector3(0, 11, -2.8),
				rotation = Rotation(0, 0, 0)
			}
		}
	}
	self.parts.wpn_fps_upg_o_45rds_v2 = {
		type = "gadget",
		texture_bundle_folder = "flip",
		a_obj = "a_o",
		depends_on = "sight",
		sub_type = "second_sight",
		name_id = "bm_wpn_fps_upg_o_45rds_v2",
		unit = "units/pd2_dlc_flip/weapons/wpn_fps_upg_o_45rds_v2/wpn_fps_upg_o_45rds_v2",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			gadget_zoom = 1,
			recoil = 1
		},
		perks = {"gadget"},
		stance_mod = deep_clone(self.parts.wpn_fps_upg_o_45rds.stance_mod),
		texture_switch = {
			material = "gfx_reddot1",
			channel = "diffuse_texture"
		}
	}
	self.parts.wpn_fps_upg_o_xpsg33_magnifier.third_unit = "units/pd2_dlc_flip/weapons/wpn_fps_upg_o_xpsg33/wpn_third_upg_o_xpsg33_magnifier"
	self.parts.wpn_fps_upg_o_45rds_v2.third_unit = "units/pd2_dlc_flip/weapons/wpn_fps_upg_o_45rds_v2/wpn_third_upg_o_45rds_v2"
end

function WeaponFactoryTweakData:_init_lemming()
	self.parts.wpn_fps_pis_lemming_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_lemming_b_standard",
		unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_fps_pis_lemming_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_lemming_b_nitride = {
		texture_bundle_folder = "fi7",
		dlc = "pd2_clan",
		type = "barrel",
		name_id = "bm_wp_lemming_b_nitride",
		a_obj = "a_b",
		unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_fps_pis_lemming_b_nitride",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = 1,
			recoil = 1,
			value = 3
		}
	}
	self.parts.wpn_fps_pis_lemming_body = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_lemming_b_standard",
		unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_fps_pis_lemming_body",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_lemming_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_lemming_b_standard",
		unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_fps_pis_lemming_m_standard",
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_lemming_m_ext = {
		type = "magazine",
		texture_bundle_folder = "fi7",
		a_obj = "a_m",
		dlc = "pd2_clan",
		name_id = "bm_wp_lemming_m_ext",
		unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_fps_pis_lemming_m_ext",
		pcs = {
			10,
			20,
			30,
			40
		},
		bullet_objects = {
			amount = 3,
			prefix = "g_bullet_"
		},
		stats = {
			value = 1,
			extra_ammo = 2
		}
	}
	self.parts.wpn_fps_pis_lemming_mag_release = {
		a_obj = "a_mag_release",
		type = "extra",
		name_id = "bm_wp_lemming_b_standard",
		unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_fps_pis_lemming_mag_release",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_lemming_sl_standard = {
		a_obj = "a_sl",
		type = "slide",
		name_id = "bm_wp_lemming_b_standard",
		unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_fps_pis_lemming_sl_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_lemming_b_standard.third_unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_third_pis_lemming_b_standard"
	self.parts.wpn_fps_pis_lemming_b_nitride.third_unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_third_pis_lemming_b_nitride"
	self.parts.wpn_fps_pis_lemming_body.third_unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_third_pis_lemming_body"
	self.parts.wpn_fps_pis_lemming_m_standard.third_unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_third_pis_lemming_m_standard"
	self.parts.wpn_fps_pis_lemming_m_ext.third_unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_third_pis_lemming_m_ext"
	self.parts.wpn_fps_pis_lemming_mag_release.third_unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_third_pis_lemming_mag_release"
	self.parts.wpn_fps_pis_lemming_sl_standard.third_unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming_pts/wpn_third_pis_lemming_sl_standard"
	self.wpn_fps_pis_lemming = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming/wpn_fps_pis_lemming",
		animations = {
			reload_not_empty = "reload_not_empty",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		},
		override = {
			wpn_fps_upg_o_rmr = {parent = "slide"},
			wpn_fps_upg_pis_ns_flash = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_slim = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_ass_filter = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_jungle = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_small = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large_kac = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_gem = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_ipsccomp = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_meatgrinder = {
				a_obj = "a_ns",
				parent = "barrel"
			}
		},
		default_blueprint = {
			"wpn_fps_pis_lemming_b_standard",
			"wpn_fps_pis_lemming_body",
			"wpn_fps_pis_lemming_m_standard",
			"wpn_fps_pis_lemming_mag_release",
			"wpn_fps_pis_lemming_sl_standard"
		},
		uses_parts = {
			"wpn_fps_pis_lemming_b_standard",
			"wpn_fps_pis_lemming_b_nitride",
			"wpn_fps_pis_lemming_body",
			"wpn_fps_pis_lemming_m_standard",
			"wpn_fps_pis_lemming_m_ext",
			"wpn_fps_pis_lemming_mag_release",
			"wpn_fps_pis_lemming_sl_standard",
			"wpn_fps_upg_fl_pis_laser",
			"wpn_fps_upg_fl_pis_tlr1",
			"wpn_fps_upg_ns_pis_large",
			"wpn_fps_upg_ns_pis_medium",
			"wpn_fps_upg_ns_pis_small",
			"wpn_fps_upg_ns_pis_large_kac",
			"wpn_fps_upg_ns_pis_medium_gem",
			"wpn_fps_upg_o_rmr",
			"wpn_fps_upg_ns_pis_medium_slim",
			"wpn_fps_upg_pis_ns_flash",
			"wpn_fps_upg_fl_pis_crimson",
			"wpn_fps_upg_fl_pis_x400v",
			"wpn_fps_upg_ns_pis_meatgrinder",
			"wpn_fps_upg_ns_pis_ipsccomp",
			"wpn_fps_upg_fl_pis_m3x",
			"wpn_fps_upg_ns_ass_filter",
			"wpn_fps_upg_ns_pis_jungle"
		}
	}
	self.wpn_fps_pis_lemming_npc = deep_clone(self.wpn_fps_pis_lemming)
	self.wpn_fps_pis_lemming_npc.unit = "units/pd2_dlc_fi7/weapons/wpn_fps_pis_lemming/wpn_fps_pis_lemming_npc"
end

function WeaponFactoryTweakData:_init_chinchilla()
	self.parts.wpn_fps_pis_chinchilla_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_chinchilla_b_standard",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_chinchilla_b_satan = {
		texture_bundle_folder = "max",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_chinchilla_b_satan",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_b_satan",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread = 2
		},
		stance_mod = {wpn_fps_pis_chinchilla = {translation = Vector3(0, 0, -0.58)}}
	}
	self.parts.wpn_fps_pis_chinchilla_body = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_chinchilla_body",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_body",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_chinchilla_cylinder = {
		a_obj = "a_cylinder",
		type = "cylinder",
		name_id = "bm_wp_chinchilla_cylinder",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_cylinder",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_chinchilla_dh_hammer = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_chinchilla_dh_standard",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_dh_hammer",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_chinchilla_ejector = {
		a_obj = "a_ejector",
		type = "ejector",
		name_id = "bm_wp_chinchilla_ejector",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_ejector",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_chinchilla_ejectorpin = {
		a_obj = "a_ejectorpin",
		type = "ejectorpin",
		name_id = "bm_wp_chinchilla_ejectorpin",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_ejectorpin",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_chinchilla_g_black = {
		texture_bundle_folder = "max",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_chinchilla_g_black",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_g_black",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 2
		}
	}
	self.parts.wpn_fps_pis_chinchilla_g_death = {
		texture_bundle_folder = "max",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_chinchilla_g_death",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_g_death",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = 2
		}
	}
	self.parts.wpn_fps_pis_chinchilla_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_chinchilla_g_standard",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_chinchilla_lock_arm = {
		a_obj = "a_lock",
		type = "lock_arm",
		name_id = "bm_wp_chinchilla_lock_arm",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_lock_arm",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_chinchilla_m_bullets = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_chinchilla_m_bullet1",
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_fps_pis_chinchilla_m_bullets",
		bullet_objects = {
			amount = 6,
			prefix = "g_bullet_"
		},
		reload_objects = {
			reload_not_empty = "g_speedloader",
			reload = "g_speedloader"
		},
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			reload_left = "reload_left"
		}
	}
	self.parts.wpn_fps_pis_chinchilla_b_standard.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_b_standard"
	self.parts.wpn_fps_pis_chinchilla_b_satan.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_b_satan"
	self.parts.wpn_fps_pis_chinchilla_body.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_body"
	self.parts.wpn_fps_pis_chinchilla_cylinder.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_cylinder"
	self.parts.wpn_fps_pis_chinchilla_dh_hammer.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_dh_hammer"
	self.parts.wpn_fps_pis_chinchilla_ejector.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_ejector"
	self.parts.wpn_fps_pis_chinchilla_ejectorpin.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_ejectorpin"
	self.parts.wpn_fps_pis_chinchilla_g_black.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_g_black"
	self.parts.wpn_fps_pis_chinchilla_g_death.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_g_death"
	self.parts.wpn_fps_pis_chinchilla_g_standard.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_g_standard"
	self.parts.wpn_fps_pis_chinchilla_lock_arm.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_lock_arm"
	self.parts.wpn_fps_pis_chinchilla_m_bullets.third_unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla_pts/wpn_third_pis_chinchilla_m_bullets"
	self.wpn_fps_pis_chinchilla = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla/wpn_fps_pis_chinchilla",
		animations = {
			reload_not_empty = "reload",
			reload = "reload",
			fire_steelsight = "recoil",
			fire = "recoil"
		},
		default_blueprint = {
			"wpn_fps_pis_chinchilla_b_standard",
			"wpn_fps_pis_chinchilla_body",
			"wpn_fps_pis_chinchilla_cylinder",
			"wpn_fps_pis_chinchilla_dh_hammer",
			"wpn_fps_pis_chinchilla_ejector",
			"wpn_fps_pis_chinchilla_ejectorpin",
			"wpn_fps_pis_chinchilla_g_standard",
			"wpn_fps_pis_chinchilla_lock_arm",
			"wpn_fps_pis_chinchilla_m_bullets"
		},
		uses_parts = {
			"wpn_fps_pis_chinchilla_b_standard",
			"wpn_fps_pis_chinchilla_b_satan",
			"wpn_fps_pis_chinchilla_body",
			"wpn_fps_pis_chinchilla_cylinder",
			"wpn_fps_pis_chinchilla_dh_hammer",
			"wpn_fps_pis_chinchilla_ejector",
			"wpn_fps_pis_chinchilla_ejectorpin",
			"wpn_fps_pis_chinchilla_g_black",
			"wpn_fps_pis_chinchilla_g_death",
			"wpn_fps_pis_chinchilla_g_standard",
			"wpn_fps_pis_chinchilla_lock_arm",
			"wpn_fps_pis_chinchilla_m_bullets"
		}
	}
	self.wpn_fps_pis_chinchilla_npc = deep_clone(self.wpn_fps_pis_chinchilla)
	self.wpn_fps_pis_chinchilla_npc.unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_chinchilla/wpn_fps_pis_chinchilla_npc"
end

function WeaponFactoryTweakData:_init_x_chinchilla()
	self.wpn_fps_pis_x_chinchilla = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_x_chinchilla/wpn_fps_pis_x_chinchilla",
		animations = {
			reload_left = "reload_left",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload_not_empty_left = "reload_left",
			reload = "reload_right",
			reload_not_empty = "reload_right"
		},
		default_blueprint = {
			"wpn_fps_pis_chinchilla_b_standard",
			"wpn_fps_pis_chinchilla_body",
			"wpn_fps_pis_chinchilla_cylinder",
			"wpn_fps_pis_chinchilla_dh_hammer",
			"wpn_fps_pis_chinchilla_ejector",
			"wpn_fps_pis_chinchilla_ejectorpin",
			"wpn_fps_pis_chinchilla_g_standard",
			"wpn_fps_pis_chinchilla_lock_arm",
			"wpn_fps_pis_chinchilla_m_bullets"
		},
		uses_parts = {
			"wpn_fps_pis_chinchilla_b_standard",
			"wpn_fps_pis_chinchilla_b_satan",
			"wpn_fps_pis_chinchilla_body",
			"wpn_fps_pis_chinchilla_cylinder",
			"wpn_fps_pis_chinchilla_dh_hammer",
			"wpn_fps_pis_chinchilla_ejector",
			"wpn_fps_pis_chinchilla_ejectorpin",
			"wpn_fps_pis_chinchilla_g_black",
			"wpn_fps_pis_chinchilla_g_death",
			"wpn_fps_pis_chinchilla_g_standard",
			"wpn_fps_pis_chinchilla_lock_arm",
			"wpn_fps_pis_chinchilla_m_bullets"
		}
	}
	self.wpn_fps_pis_x_chinchilla_npc = deep_clone(self.wpn_fps_pis_chinchilla)
	self.wpn_fps_pis_x_chinchilla_npc.unit = "units/pd2_dlc_max/weapons/wpn_fps_pis_x_chinchilla/wpn_fps_pis_x_chinchilla_npc"
end

function WeaponFactoryTweakData:_init_breech()
	self.parts.wpn_fps_pis_breech_b_reinforced = {
		texture_bundle_folder = "old",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_breech_b_reinforced",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_fps_pis_breech_b_reinforced",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			spread = 2
		}
	}
	self.parts.wpn_fps_pis_breech_b_short = {
		texture_bundle_folder = "old",
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_breech_b_short",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_fps_pis_breech_b_short",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			spread = -2,
			value = 1,
			concealment = 2
		}
	}
	self.parts.wpn_fps_pis_breech_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_breech_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_fps_pis_breech_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_breech_body = {
		a_obj = "a_body",
		type = "body",
		name_id = "bm_wp_breech_body",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_fps_pis_breech_body",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_breech_dh = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_breech_dh",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_fps_pis_breech_dh",
		stats = {value = 1},
		animations = {
			reload_not_empty = "reload_not_empty",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		}
	}
	self.parts.wpn_fps_pis_breech_g_custom = {
		texture_bundle_folder = "old",
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_breech_g_custom",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_fps_pis_breech_g_custom",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_breech_g_standard = {
		a_obj = "a_g",
		type = "grip",
		name_id = "bm_wp_breech_g_std",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_fps_pis_breech_g_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_breech_mag = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_breech_m",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_fps_pis_breech_mag",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_pis_breech_b_reinforced.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_third_pis_breech_b_reinforced"
	self.parts.wpn_fps_pis_breech_b_short.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_third_pis_breech_b_short"
	self.parts.wpn_fps_pis_breech_b_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_third_pis_breech_b_standard"
	self.parts.wpn_fps_pis_breech_body.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_third_pis_breech_body"
	self.parts.wpn_fps_pis_breech_dh.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_third_pis_breech_dh"
	self.parts.wpn_fps_pis_breech_g_custom.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_third_pis_breech_g_custom"
	self.parts.wpn_fps_pis_breech_g_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_third_pis_breech_g_standard"
	self.parts.wpn_fps_pis_breech_mag.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech_pts/wpn_third_pis_breech_mag"
	self.wpn_fps_pis_breech = {
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech/wpn_fps_pis_breech",
		animations = {
			reload_not_empty = "reload_not_empty",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		},
		override = {
			wpn_fps_upg_o_rmr = {parent = false},
			wpn_fps_upg_pis_ns_flash = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_slim = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_ass_filter = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_jungle = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_small = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_large_kac = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_medium_gem = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_ipsccomp = {
				a_obj = "a_ns",
				parent = "barrel"
			},
			wpn_fps_upg_ns_pis_meatgrinder = {
				a_obj = "a_ns",
				parent = "barrel"
			}
		},
		default_blueprint = {
			"wpn_fps_pis_breech_b_standard",
			"wpn_fps_pis_breech_body",
			"wpn_fps_pis_breech_dh",
			"wpn_fps_pis_breech_g_standard",
			"wpn_fps_pis_breech_mag"
		},
		uses_parts = {
			"wpn_fps_pis_breech_b_reinforced",
			"wpn_fps_pis_breech_b_short",
			"wpn_fps_pis_breech_b_standard",
			"wpn_fps_pis_breech_body",
			"wpn_fps_pis_breech_dh",
			"wpn_fps_pis_breech_g_custom",
			"wpn_fps_pis_breech_g_standard",
			"wpn_fps_pis_breech_mag",
			"wpn_fps_upg_o_rmr"
		}
	}
	self.wpn_fps_pis_breech_npc = deep_clone(self.wpn_fps_pis_breech)
	self.wpn_fps_pis_breech_npc.unit = "units/pd2_dlc_old/weapons/wpn_fps_pis_breech/wpn_fps_pis_breech_npc"
end

function WeaponFactoryTweakData:_init_ching()
	self.parts.wpn_fps_ass_ching_b_short = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_ching_b_short",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_b_short",
		texture_bundle_folder = "old",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			recoil = -4,
			concealment = 4
		},
		override = {wpn_fps_ass_ching_extra_swiwel = {
			third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_extra_swiwel_empty",
			unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_extra_swiwel_empty"
		}}
	}
	self.parts.wpn_fps_ass_ching_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_body_standard = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_ching_body_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_bolt_standard = {
		a_obj = "a_bolt",
		type = "bolt",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_bolt_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_dh_standard = {
		a_obj = "a_dh",
		type = "drag_handle",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_dh_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_extra_swiwel_empty = {
		a_obj = "a_extra",
		type = "swiwel_2",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_extra_swiwel_empty",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_extra_swiwel = {
		a_obj = "a_extra",
		type = "swiwel_2",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_extra_swiwel",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_extra1_swiwel = {
		a_obj = "a_extra1",
		type = "swiwel_1",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_extra1_swiwel",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_fg_railed = {
		texture_bundle_folder = "old",
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ching_fg_railed",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_fg_railed",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {value = 1},
		forbids = {"wpn_fps_ak_extra_ris"}
	}
	self.parts.wpn_fps_ass_ching_fg_standard = {
		a_obj = "a_fg",
		type = "foregrip",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_fg_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_m_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_m_standard",
		bullet_objects = {
			amount = 8,
			prefix = "g_bullet_"
		},
		stats = {value = 1},
		magazine_empty_objects = {"g_clip"}
	}
	self.parts.wpn_fps_ass_ching_s_pouch = {
		texture_bundle_folder = "old",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ching_s_pouch",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_s_pouch",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 1,
			total_ammo_mod = 3
		}
	}
	self.parts.wpn_fps_ass_ching_s_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_strip_standard = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_ching_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_s_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_ass_ching_b_short.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_b_short"
	self.parts.wpn_fps_ass_ching_b_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_b_standard"
	self.parts.wpn_fps_ass_ching_body_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_body_standard"
	self.parts.wpn_fps_ass_ching_bolt_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_bolt_standard"
	self.parts.wpn_fps_ass_ching_dh_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_dh_standard"
	self.parts.wpn_fps_ass_ching_extra_swiwel_empty.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_fps_ass_ching_extra_swiwel_empty"
	self.parts.wpn_fps_ass_ching_extra_swiwel.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_extra_swiwel"
	self.parts.wpn_fps_ass_ching_extra1_swiwel.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_extra1_swiwel"
	self.parts.wpn_fps_ass_ching_fg_railed.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_fg_railed"
	self.parts.wpn_fps_ass_ching_fg_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_fg_standard"
	self.parts.wpn_fps_ass_ching_m_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_m_standard"
	self.parts.wpn_fps_ass_ching_s_pouch.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_s_pouch"
	self.parts.wpn_fps_ass_ching_s_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_s_standard"
	self.parts.wpn_fps_ass_ching_strip_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching_pts/wpn_third_ass_ching_strip_standad"
	self.wpn_fps_ass_ching = {
		unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching/wpn_fps_ass_ching",
		optional_types = {
			"barrel_ext",
			"gadget",
			"sight"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_docter = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cmore = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_acog = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_cs = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_reflex = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_ak_extra_ris"},
			wpn_fps_upg_o_spot = {"wpn_fps_ak_extra_ris"}
		},
		default_blueprint = {
			"wpn_fps_ass_ching_b_standard",
			"wpn_fps_ass_ching_body_standard",
			"wpn_fps_ass_ching_bolt_standard",
			"wpn_fps_ass_ching_dh_standard",
			"wpn_fps_ass_ching_extra_swiwel",
			"wpn_fps_ass_ching_extra1_swiwel",
			"wpn_fps_ass_ching_fg_standard",
			"wpn_fps_ass_ching_m_standard",
			"wpn_fps_ass_ching_s_standard"
		},
		uses_parts = {
			"wpn_fps_ass_ching_b_short",
			"wpn_fps_ass_ching_b_standard",
			"wpn_fps_ass_ching_body_standard",
			"wpn_fps_ass_ching_bolt_standard",
			"wpn_fps_ass_ching_dh_standard",
			"wpn_fps_ass_ching_extra_swiwel",
			"wpn_fps_ass_ching_extra1_swiwel",
			"wpn_fps_ass_ching_fg_railed",
			"wpn_fps_ass_ching_fg_standard",
			"wpn_fps_ass_ching_m_standard",
			"wpn_fps_ass_ching_s_pouch",
			"wpn_fps_ass_ching_s_standard",
			"wpn_fps_ass_ching_strip_standard",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2"
		}
	}
	self.wpn_fps_ass_ching_npc = deep_clone(self.wpn_fps_ass_ching)
	self.wpn_fps_ass_ching_npc.unit = "units/pd2_dlc_old/weapons/wpn_fps_ass_ching/wpn_fps_ass_ching_npc"
end

function WeaponFactoryTweakData:_init_erma()
	self.parts.wpn_fps_smg_erma_b_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_erma_b_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_fps_smg_erma_b_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_erma_body_standard = {
		a_obj = "a_body",
		type = "lower_receiver",
		name_id = "bm_wp_erma_body_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_fps_smg_erma_body_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_erma_bolt_standard = {
		a_obj = "a_bolt",
		type = "drag_handle",
		name_id = "bm_wp_erma_bolt_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_fps_smg_erma_bolt_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_erma_extra_rail = {
		a_obj = "a_o",
		type = "extra",
		name_id = "bm_wp_erma_extra_rail",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_fps_smg_erma_extra_rail",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_erma_mag_standard = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_erma_mag_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_fps_smg_erma_mag_standard",
		bullet_objects = {
			amount = 1,
			prefix = "g_bullet_"
		},
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_erma_ns_standard = {
		parent = "barrel",
		a_obj = "a_ns",
		type = "barrel_ext",
		name_id = "bm_wp_erma_ns_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_fps_smg_erma_ns_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_erma_o_ironsight_standard = {
		a_obj = "a_o",
		type = "sight",
		name_id = "bm_wp_erma_o_ironsight_standard",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_fps_smg_erma_o_ironsight_standard",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_erma_s_folded = {
		texture_bundle_folder = "old",
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_erma_s_folded",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_fps_smg_erma_s_folded",
		pcs = {
			10,
			20,
			30,
			40
		},
		stats = {
			value = 0,
			recoil = -2,
			concealment = 3
		}
	}
	self.parts.wpn_fps_smg_erma_s_unfolded = {
		a_obj = "a_s",
		type = "stock",
		name_id = "bm_wp_erma_s_unfolded",
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_fps_smg_erma_s_unfolded",
		stats = {value = 1}
	}
	self.parts.wpn_fps_smg_erma_b_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_third_smg_erma_b_standard"
	self.parts.wpn_fps_smg_erma_body_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_third_smg_erma_body_standard"
	self.parts.wpn_fps_smg_erma_bolt_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_third_smg_erma_bolt_standard"
	self.parts.wpn_fps_smg_erma_extra_rail.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_third_smg_erma_extra_rail"
	self.parts.wpn_fps_smg_erma_mag_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_third_smg_erma_mag_standard"
	self.parts.wpn_fps_smg_erma_ns_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_third_smg_erma_ns_standard"
	self.parts.wpn_fps_smg_erma_o_ironsight_standard.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_third_smg_erma_o_ironsight_standard"
	self.parts.wpn_fps_smg_erma_s_folded.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_third_smg_erma_s_folded"
	self.parts.wpn_fps_smg_erma_s_unfolded.third_unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma_pts/wpn_third_smg_erma_s_unfolded"
	self.wpn_fps_smg_erma = {
		unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma/wpn_fps_smg_erma",
		optional_types = {
			"barrel_ext",
			"gadget"
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			fire = "recoil",
			fire_steelsight = "recoil",
			reload = "reload",
			magazine_empty = "last_recoil"
		},
		adds = {
			wpn_fps_upg_o_specter = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_aimpoint = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_aimpoint_2 = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_docter = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_eotech = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_t1micro = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_cmore = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_acog = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_cs = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_eotech_xps = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_reflex = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_rx01 = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_rx30 = {"wpn_fps_smg_erma_extra_rail"},
			wpn_fps_upg_o_spot = {"wpn_fps_smg_erma_extra_rail"}
		},
		default_blueprint = {
			"wpn_fps_smg_erma_b_standard",
			"wpn_fps_smg_erma_body_standard",
			"wpn_fps_smg_erma_bolt_standard",
			"wpn_fps_smg_erma_mag_standard",
			"wpn_fps_smg_erma_ns_standard",
			"wpn_fps_smg_erma_o_ironsight_standard",
			"wpn_fps_smg_erma_s_unfolded"
		},
		uses_parts = {
			"wpn_fps_smg_erma_b_standard",
			"wpn_fps_smg_erma_body_standard",
			"wpn_fps_smg_erma_bolt_standard",
			"wpn_fps_smg_erma_extra_rail",
			"wpn_fps_smg_erma_mag_standard",
			"wpn_fps_smg_erma_ns_standard",
			"wpn_fps_smg_erma_o_ironsight_standard",
			"wpn_fps_smg_erma_s_folded",
			"wpn_fps_smg_erma_s_unfolded",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_ns_ass_smg_large",
			"wpn_fps_upg_ns_ass_smg_medium",
			"wpn_fps_upg_ns_ass_smg_small",
			"wpn_fps_upg_ns_ass_smg_firepig",
			"wpn_fps_upg_ns_ass_smg_stubby",
			"wpn_fps_upg_ns_ass_smg_tank",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_ass_ns_jprifles",
			"wpn_fps_upg_ass_ns_linear",
			"wpn_fps_upg_ass_ns_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_ass_ns_battle",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot"
		}
	}
	self.wpn_fps_smg_erma_npc = deep_clone(self.wpn_fps_smg_erma)
	self.wpn_fps_smg_erma_npc.unit = "units/pd2_dlc_old/weapons/wpn_fps_smg_erma/wpn_fps_smg_erma_npc"
end

