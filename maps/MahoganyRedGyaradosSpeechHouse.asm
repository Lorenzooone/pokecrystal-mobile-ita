	object_const_def
	const MAHOGANYREDGYARADOSSPEECHHOUSE_BLACK_BELT
	const MAHOGANYREDGYARADOSSPEECHHOUSE_TEACHER

MahoganyRedGyaradosSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyRedGyaradosSpeechHouseBlackBeltScript:
	jumptextfaceplayer MahoganyRedGyaradosSpeechHouseBlackBeltText

MahoganyRedGyaradosSpeechHouseTeacherScript:
	faceplayer
	opentext
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .RocketsInRadioTower
	writetext MahoganyRedGyaradosSpeechHouseTeacherText
	waitbutton
	closetext
	end

.RocketsInRadioTower:
	writetext MahoganyRedGyaradosSpeechHouseTeacherText_RocketsInRadioTower
	waitbutton
	closetext
	end

MahoganyRedGyaradosSpeechHouseUnusedBookshelf1: ; unreferenced
	jumpstd PictureBookshelfScript

MahoganyRedGyaradosSpeechHouseUnusedBookshelf2: ; unreferenced
	jumpstd MagazineBookshelfScript

MahoganyRedGyaradosSpeechHouseBlackBeltText:
	text "Ho sentito che al"
	line "lago è apparso un"
	cont "GYARADOS rosso."

	para "Strano, perché"
	line "anche i GYARADOS"

	para "normali sono rari"
	line "nel LAGO D'IRA…"
	done

MahoganyRedGyaradosSpeechHouseTeacherText:
	text "Il mio programma"
	line "radio preferito?"
	cont "#MON MUSIC."
	done

MahoganyRedGyaradosSpeechHouseTeacherText_RocketsInRadioTower:
	text "Ho sentito ridere"
	line "alla radio…"

	para "È davvero"
	line "raccapricciante."
	done

MahoganyRedGyaradosSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, MAHOGANY_TOWN, 2
	warp_event  3,  7, MAHOGANY_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MahoganyRedGyaradosSpeechHouseBlackBeltScript, -1
	object_event  6,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MahoganyRedGyaradosSpeechHouseTeacherScript, -1
