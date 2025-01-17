/obj/item/robot_module/research
	name = "research module"
	display_name = "Research"
	channels = list(
		"Science" = TRUE
	)
	networks = list(
		NETWORK_RESEARCH
	)
	module_sprites = list(
		"Droid" = 'icons/mob/robots/robot_droid.dmi'
	)
	equipment = list(
		/obj/item/flash,
		/obj/item/portable_destructive_analyzer,
		/obj/item/gripper/research,
		/obj/item/gripper/no_use/loader,
		/obj/item/robotanalyzer,
		/obj/item/card/robot,
		/obj/item/wrench,
		/obj/item/screwdriver,
		/obj/item/weldingtool/mini,
		/obj/item/wirecutters,
		/obj/item/crowbar,
		/obj/item/scalpel/laser/advanced,
		/obj/item/circular_saw,
		/obj/item/extinguisher/mini,
		/obj/item/chems/syringe,
		/obj/item/gripper/chemistry,
		/obj/item/stack/nanopaste
	)
	synths = list(
		/datum/matter_synth/nanite = 10000
	)
	emag = /obj/prefab/hand_teleporter
	skills = list(
		SKILL_LITERACY            = SKILL_ADEPT,
		SKILL_FINANCE             = SKILL_EXPERT,
		SKILL_COMPUTER            = SKILL_PROF,
		SKILL_SCIENCE             = SKILL_PROF,
		SKILL_DEVICES             = SKILL_PROF,
		SKILL_ANATOMY             = SKILL_ADEPT,
		SKILL_CHEMISTRY           = SKILL_ADEPT,
		SKILL_BOTANY              = SKILL_EXPERT,
		SKILL_ELECTRICAL          = SKILL_EXPERT
	)
/obj/item/robot_module/research/finalize_equipment()
	. = ..()
	var/obj/item/stack/nanopaste/N = locate() in equipment
	N.uses_charge = 1
	N.charge_costs = list(1000)

/obj/item/robot_module/research/finalize_synths()
	. = ..()
	var/datum/matter_synth/nanite/nanite = locate() in synths
	var/obj/item/stack/nanopaste/N = locate() in equipment
	N.synths = list(nanite)
