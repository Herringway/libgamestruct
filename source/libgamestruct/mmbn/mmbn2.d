module libgamestruct.mmbn.mmbn2;

import libgamestruct.mmbn.common;

import std.algorithm;
import std.bitmanip;
import std.format;
import std.range;
import std.traits;

align(1) struct MMBN2 {
	align(1):
	enum extension = "gba";
	@Offset(0x08000000) GBAHeader gbaHeader;
	@Offset(0x080000C0) ubyte[0xBC90] unknownC0;
	@Offset(0x0800BD50) ProgramAdvance!3[53] threeChipProgramAdvances;
	@Offset(0x0800C0A0) ubyte[0x23B0] unknownC0A0;
	@Offset(0x0800E450) BattleChip[316] battleChips;
	ubyte[0x4584] unknown4586;
	@Offset(0x08015154) Enemy[185] enemies;
	ubyte[0x713054] unknown717BA0;
	@Offset(0x08728770) MMBN2Char[0x851] battleChipNameText;
	ubyte[0xD703F] unknownEnd;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : format, formattedWrite;
		sink.formattedWrite!"%s\n"(gbaHeader);
		foreach (name, data; lockstep(chipNames, battleChips[])) {
			sink.formattedWrite!"% 9s: %s\n"(name, data);
		}
		foreach (name, data; lockstep(enemyNames, enemies[])) {
			sink.formattedWrite!"% 14s: %s\n"(name, data);
		}
		sink.formattedWrite!"%(%s\n%)"(threeChipProgramAdvances[]);
	}
	bool verify() const @safe {
		return gbaHeader.gameID == "AE2E";
	}
	string loadedGame() const @safe {
		return "Mega Man Battle Network 2";
	}
}
mixin GBAVerify!(MMBN2, 0x800000);

align(1) struct BattleChip {
	align(1):
	ChipCode[6] chipCodes;
	Element element;
	ubyte[3] unknown1;
	ubyte mb;
	ubyte unknown2;
	ushort power;
	ushort libraryID;
	ushort alphabeticalID;
	ubyte[2] unknown3;
	uint miniTilePointer;
	uint fullGraphicPointer;
	uint palettePointer;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"%03d. [%-(%s%)] % 3sMB Element: % 8s Power: % 6s [%(%02X %)]"(libraryID, chipCodes[], mb, element, power, unknown1[]~unknown2~unknown3[]);
	}
}

enum Element : ubyte {
	neutral,
	electric,
	fire,
	aqua,
	wood,
	unknown1,
	unknown2,
	unknown = 255
}
align(1) struct ChipCode {
	align(1):
	ubyte code;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		if (code < 26) {
			sink.formattedWrite!"%s"(cast(char)(code+'A'));
		} else if (code == 26) {
			sink.put('*');
		} else if (code == 255) {
			sink.put(' ');
		}
	}
}

align(1) struct BattleChipWithCode {
	align(1):
	ushort chipID;
	ushort chipCode;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		const code = ChipCode(cast(ubyte)chipCode);
		sink.formattedWrite!"%s %s"(chipNames[chipID], code);
	}
}

align(1) struct ProgramAdvance(size_t num) {
	align(1):
	ushort unknown;
	ushort result;
	BattleChipWithCode[num] chips;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"% 9s: %(%s, %)"(chipNames[result], chips[]);
	}
}

align(1) struct Enemy {
	align(1):
	mixin(bitfields!(
		uint, "hp", 12,
		Element, "element", 3,
		bool, "unknown1", 1
	));
	ubyte[6] unknown;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"% 5s HP (% 8s) [%(%02X %)]"(hp, element, unknown1~unknown[]);
	}
}

align(1) struct MMBN2Char {
	align(1):
	ubyte val;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		switch (val) {
			case 0x00: sink.put(" "); break;
			case 0x01: sink.put("0"); break;
			case 0x02: sink.put("1"); break;
			case 0x03: sink.put("2"); break;
			case 0x04: sink.put("3"); break;
			case 0x05: sink.put("4"); break;
			case 0x06: sink.put("5"); break;
			case 0x07: sink.put("6"); break;
			case 0x08: sink.put("7"); break;
			case 0x09: sink.put("8"); break;
			case 0x0A: sink.put("9"); break;
			case 0x0B: sink.put("a"); break;
			case 0x0C: sink.put("b"); break;
			case 0x0D: sink.put("c"); break;
			case 0x0E: sink.put("d"); break;
			case 0x0F: sink.put("e"); break;
			case 0x10: sink.put("f"); break;
			case 0x11: sink.put("g"); break;
			case 0x12: sink.put("h"); break;
			case 0x13: sink.put("i"); break;
			case 0x14: sink.put("j"); break;
			case 0x15: sink.put("k"); break;
			case 0x16: sink.put("l"); break;
			case 0x17: sink.put("m"); break;
			case 0x18: sink.put("n"); break;
			case 0x19: sink.put("o"); break;
			case 0x1A: sink.put("p"); break;
			case 0x1B: sink.put("q"); break;
			case 0x1C: sink.put("r"); break;
			case 0x1D: sink.put("s"); break;
			case 0x1E: sink.put("t"); break;
			case 0x1F: sink.put("u"); break;
			case 0x20: sink.put("v"); break;
			case 0x21: sink.put("w"); break;
			case 0x22: sink.put("x"); break;
			case 0x23: sink.put("y"); break;
			case 0x24: sink.put("z"); break;
			case 0x25: sink.put("A"); break;
			case 0x26: sink.put("B"); break;
			case 0x27: sink.put("C"); break;
			case 0x28: sink.put("D"); break;
			case 0x29: sink.put("E"); break;
			case 0x2A: sink.put("F"); break;
			case 0x2B: sink.put("G"); break;
			case 0x2C: sink.put("H"); break;
			case 0x2D: sink.put("I"); break;
			case 0x2E: sink.put("J"); break;
			case 0x2F: sink.put("K"); break;
			case 0x30: sink.put("L"); break;
			case 0x31: sink.put("M"); break;
			case 0x32: sink.put("N"); break;
			case 0x33: sink.put("O"); break;
			case 0x34: sink.put("P"); break;
			case 0x35: sink.put("Q"); break;
			case 0x36: sink.put("R"); break;
			case 0x37: sink.put("S"); break;
			case 0x38: sink.put("T"); break;
			case 0x39: sink.put("U"); break;
			case 0x3A: sink.put("V"); break;
			case 0x3B: sink.put("W"); break;
			case 0x3C: sink.put("X"); break;
			case 0x3D: sink.put("Y"); break;
			case 0x3E: sink.put("Z"); break;
			case 0x3F: sink.put("V2"); break;
			case 0x40: sink.put("V3"); break;
			case 0x41: sink.put("-"); break;
			case 0x42: sink.put("×"); break;
			case 0x43: sink.put("="); break;
			case 0x44: sink.put(":"); break;
			case 0x45: sink.put("?"); break;
			case 0x46: sink.put("+"); break;
			case 0x47: sink.put("÷"); break;
			case 0x48: sink.put("※"); break;
			case 0x49: sink.put("*"); break;
			case 0x4A: sink.put("!"); break;
			case 0x4C: sink.put("%"); break;
			case 0x4D: sink.put("&"); break;
			case 0x4E: sink.put(","); break;
			case 0x4F: sink.put("。"); break;
			case 0x50: sink.put("."); break;
			case 0x51: sink.put("・"); break;
			case 0x52: sink.put(";"); break;
			case 0x53: sink.put("'"); break;
			case 0x54: sink.put("\""); break;
			case 0x55: sink.put("~"); break;
			case 0x56: sink.put("/"); break;
			case 0x57: sink.put("("); break;
			case 0x58: sink.put(")"); break;
			case 0x59: sink.put("「"); break;
			case 0x5A: sink.put("」"); break;
			case 0x5B: sink.put("↑"); break;
			case 0x5C: sink.put("→"); break;
			case 0x5D: sink.put("↓"); break;
			case 0x5E: sink.put("←"); break;
			case 0x5F: sink.put("@"); break;
			case 0x60: sink.put("★"); break;
			case 0x61: sink.put("♪"); break;
			case 0x62: sink.put("<"); break;
			case 0x63: sink.put(">"); break;
			case 0x64: sink.put("[bracket1]"); break;
			case 0x65: sink.put("[bracket2]"); break;
			case 0x66: sink.put("■"); break;
			case 0x67: sink.put("$"); break;
			case 0x68: sink.put("#"); break;
			case 0xE7: sink.put("␄"); break;
			case 0xE8: sink.put("\n"); break;
			default: assert(0);
		}
	}
}

static string[] chipNames = [
	"MegaBstr",
	"Cannon",
	"HiCannon",
	"M-Cannon",
	"Shotgun",
	"V-Gun",
	"CrossGun",
	"Spreader",
	"Bubbler",
	"Bub-V",
	"BubCross",
	"BubSprd",
	"HeatShot",
	"Heat-V",
	"HeatCros",
	"HeatSprd",
	"MiniBomb",
	"LilBomb",
	"CrosBomb",
	"BigBomb",
	"TreeBom1",
	"TreeBom2",
	"TreeBom3",
	"Sword",
	"WideSwrd",
	"LongSwrd",
	"FireSwrd",
	"AquaSwrd",
	"ElecSwrd",
	"FireBlde",
	"AquaBlde",
	"ElecBlde",
	"StepSwrd",
	"Muramasa",
	"CustSwrd",
	"Kunai1",
	"Kunai2",
	"Kunai3",
	"Slasher",
	"Shockwav",
	"Sonicwav",
	"Dynawave",
	"Quake1",
	"Quake2",
	"Quake3",
	"GutPunch",
	"ColdPnch",
	"Atk+20",
	"Atk+30",
	"Navi+40",
	"DashAtk",
	"Wrecker",
	"CannBall",
	"DoubNdl",
	"TripNdl",
	"QuadNdl",
	"Trident",
	"Ratton1",
	"Ratton2",
	"Ratton3",
	"FireRat",
	"Tornado",
	"Twister",
	"Blower",
	"Burner",
	"ZapRing1",
	"ZapRing2",
	"ZapRing3",
	"Spice1",
	"Spice2",
	"Spice3",
	"Satelit1",
	"Satelit2",
	"Satelit3",
	"Yo-Yo1",
	"Yo-Yo2",
	"Yo-Yo3",
	"MagBomb1",
	"MagBomb2",
	"MagBomb3",
	"Meteor9",
	"Meteor12",
	"Meteor15",
	"Meteor18",
	"Hammer",
	"CrsShld1",
	"CrsShld2",
	"CrsShld3",
	"TimeBom1",
	"TimeBom2",
	"TimeBom3",
	"LilCloud",
	"MedCloud",
	"BigCloud",
	"Mine",
	"FrntSnsr",
	"DblSnsr",
	"Remobit1",
	"Remobit2",
	"Remobit3",
	"AquaBall",
	"ElecBall",
	"HeatBall",
	"Geyser",
	"LavaDrag",
	"GodStone",
	"OldWood",
	"PoisMask",
	"PoisFace",
	"Whirlpl",
	"Blckhole",
	"Guard",
	"Barrier",
	"PanlOut1",
	"PanlOut3",
	"LineOut",
	"Lance",
	"ZeusHamr",
	"BrnzFist",
	"SilvFist",
	"GoldFist",
	"VarSwrd",
	"Recov10",
	"Recov30",
	"Recov50",
	"Recov80",
	"Recov120",
	"Recov150",
	"Recov200",
	"Recov300",
	"PanlGrab",
	"AreaGrab",
	"GrabRvng",
	"Geddon1",
	"Geddon2",
	"Geddon3",
	"Catcher",
	"Mindbndr",
	"Escape",
	"AirShoes",
	"Repair",
	"Candle1",
	"Candle2",
	"Candle3",
	"RockCube",
	"Prism",
	"Guardian",
	"Wind",
	"Fan",
	"Anubis",
	"SloGauge",
	"FstGauge",
	"FullCust",
	"Invis1",
	"Invis2",
	"Invis3",
	"DropDown",
	"PopUp",
	"StoneBod",
	"Shadow1",
	"Shadow2",
	"Shadow3",
	"UnderSht",
	"BblWrap",
	"LeafShld",
	"AquaAura",
	"FireAura",
	"WoodAura",
	"ElecAura",
	"LifeAur1",
	"LifeAur2",
	"LifeAur3",
	"MagLine",
	"LavaLine",
	"IceLine",
	"GrassLne",
	"LavaStge",
	"IceStage",
	"GrassStg",
	"HolyPanl",
	"Jealosy",
	"AntiFire",
	"AntiElec",
	"AntiWatr",
	"AntiDmg",
	"AntiSwrd",
	"AntiNavi",
	"AntiRecv",
	"Atk+10",
	"Fire+40",
	"Aqua+40",
	"Wood+40",
	"Elec+40",
	"Navi+20",
	"Roll",
	"RollV2",
	"RollV3",
	"GutsMan",
	"GutsManV2",
	"GutsManV3",
	"ProtoMan",
	"ProtoMnV2",
	"ProtoMnV3",
	"AirMan",
	"AirManV2",
	"AirManV3",
	"QuickMan",
	"QuickMnV2",
	"QuickMnV3",
	"CutMan",
	"CutManV2",
	"CutManV3",
	"ShadoMan",
	"ShadoMnV2",
	"ShadoMnV3",
	"KnightMn",
	"KnghtMnV2",
	"KnghtMnV3",
	"MagnetMn",
	"MagntMnV2",
	"MagntMnV3",
	"FreezeMn",
	"FrzManV2",
	"FrzManV3",
	"HeatMan",
	"HeatManV2",
	"HeatManV3",
	"ToadMan",
	"ToadManV2",
	"ToadManV3",
	"ThunMan",
	"ThunManV2",
	"ThunManV3",
	"SnakeMan",
	"SnakeMnV2",
	"SnakeMnV3",
	"GateMan",
	"GateManV2",
	"GateManV3",
	"PlanetMn",
	"PlnetMnV2",
	"PlnetMnV3",
	"NapalmMn",
	"NaplmMnV2",
	"NaplmMnV3",
	"PharoMan",
	"PharoMnV2",
	"PharoMnV3",
	"Bass",
	"BassV2",
	"BassV3",
	"BgRedWav",
	"FreezBom",
	"Sparker",
	"GaiaSwrd",
	"BlkBomb",
	"FtrSwrd",
	"KngtSwrd",
	"HeroSwrd",
	"Meteors",
	"Poltrgst",
	"FireGspl",
	"AquaGspl",
	"ElecGspl",
	"WoodGspl",
	"GateSP",
	"???",
	"???",
	"???",
	"???",
	"Snctuary",
	"???",
	"Z-Canon1",
	"Z-Canon2",
	"Z-Canon3",
	"H-Burst",
	"Z-Ball",
	"Z-Raton1",
	"Z-Raton2",
	"Z-Raton3",
	"O-Canon1",
	"O-Canon2",
	"O-Canon3",
	"M-Burst",
	"O-Ball",
	"O-Raton1",
	"O-Raton2",
	"O-Raton3",
	"Arrows",
	"UltraBmb",
	"LifeSrd1",
	"LifeSrd2",
	"LifeSrd3",
	"Punch",
	"Curse",
	"TimeBom+",
	"HvyStamp",
	"PoisPhar",
	"Gater",
	"GtsShoot",
	"BigHeart",
	"BodyGrd",
	"2xHero",
	"Darkness",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???",
	"???"
];
static string[] enemyNames = [
	"MegaMan",
	"Mettaur",
	"Mettaur2",
	"Mettaur3",
	"Cannodumb",
	"Cannodum2",
	"Cannodumb3",
	"Beetank",
	"Beetank2",
	"Beetank3",
	"Fishy",
	"Fishy2",
	"Cloudy",
	"Cloudy2",
	"Cloudy3",
	"Spooky",
	"Spooky2",
	"Spooky3",
	"Handy",
	"Handy2",
	"Handy3",
	"Bunny",
	"TuffBunny",
	"MegaBunny",
	"MettFire",
	"FullFire",
	"DeathFire",
	"Puffy",
	"Buffy",
	"HardHead",
	"HardHead2",
	"HardHead3",
	"CanDevil",
	"CanDevil2",
	"CanDevil3",
	"Mushy",
	"Mashy",
	"Moshy",
	"Swordy",
	"Swordy2",
	"Swordy3",
	"Mole",
	"Mole2",
	"Poofy",
	"Fishy3",
	"Flappy",
	"Flappy2",
	"Flappy3",
	"Ratty",
	"Ratty2",
	"Ratty3",
	"Twisty",
	"Twisty2",
	"Twisty3",
	"Popper",
	"Popper2",
	"Popper3",
	"Spikey",
	"Spikey2",
	"Spikey3",
	"Flamey",
	"Flamey2",
	"Flamey3",
	"Shrimpy",
	"Shrimpy2",
	"Shrimpy3",
	"PuffBall",
	"PoofBall",
	"GoofBall",
	"Sparky",
	"Sparkler",
	"Sparknoid",
	"Octon",
	"Octor",
	"Octovian",
	"Yort",
	"Yurt",
	"Yart",
	"Shellgeek",
	"Shellnerd",
	"Shellman",
	"KillPlant",
	"KillWeed",
	"KillFleur",
	"Dominerd",
	"Dominerd2",
	"Dominerd3",
	"Protecto",
	"Protecto2",
	"Protecto3",
	"Null",
	"Void",
	"Null&Void",
	"Magneaker",
	"Magmacker",
	"Magnoid",
	"Shadow",
	"RedDevil",
	"BlueDemon",
	"WindBox",
	"VacuumFan",
	"StormBox",
	"RedUFO",
	"BlueUFO",
	"GreenUFO",
	"Snapper",
	"Snapper2",
	"Snapper3",
	"Brushman",
	"Brushman2",
	"Brushman3",
	"Lavagon",
	"Bluegon",
	"Yellowgon",
	"Scutz",
	"Scuttle",
	"Scuttler",
	"Scuttzer",
	"Scuttlest",
	"MegalianA",
	"MegalianH",
	"MegalianW",
	"MegalianE",
	"AirMan (??? 1)",
	"AirMan (??? 2)",
	"AirMan (??? 3)",
	"AirMan (??? 4)",
	"AirMan (??? 5)",
	"AirMan",
	"AirManV2",
	"AirManV3",
	"QuickMan",
	"QuickManV2",
	"QuickManV3",
	"CutMan",
	"CutManV2",
	"CutManV3",
	"ShadowMan",
	"ShadowManV2",
	"ShadowManV3",
	"KnightMan",
	"KnightManV2",
	"KnightManV3",
	"MagnetMan",
	"MagnetManV2",
	"MagnetManV3",
	"FreezeMan",
	"FreezeManV2",
	"FreezeManV3",
	"Gospel",
	"HeatMan",
	"HeatMan",
	"HeatMan",
	"HeatManV2",
	"HeatManV3",
	"ToadMan",
	"ToadManV2",
	"ToadManV3",
	"ThunderMan",
	"ThunderManV2",
	"ThunderManV3",
	"SnakeMan",
	"SnakeManV2",
	"SnakeManV3",
	"GutsMan",
	"GutsManV2",
	"GutsManV3",
	"ProtoMan",
	"ProtoManV2",
	"ProtoManV3",
	"GateMan",
	"GateManV2",
	"GateManV3",
	"PlanetMan",
	"PlanetManV2",
	"PlanetManV3",
	"NapalmMan",
	"NapalmManV2",
	"NapalmManV3",
	"PharaohMan",
	"PharaohManV2",
	"PharaohManV3",
	"Bass",
	"BassV2",
	"Bass Deluxe"
];