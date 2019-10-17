module libgamestruct.saga.ffl2;

import libgamestruct.common;
import libgamestruct.platforms.gbc;

align(1) struct FinalFantasyLegend2 {
	enum extension = "gb";
	align(1):
	@Offset(0) ubyte[0x100] unknown00000;
	@Offset(0x100) GBCHeader gbcHeader;
	@Offset(0x150) ubyte[0x7EB0] unknown00150;
	@Offset(0x8000) GBCTile[1024] mapTiles;
	@Offset(0xC000) GBCTile[1136] npcTiles;
	@Offset(0x10700) GBCTile[2960] miscTiles;
	@Offset(0x1C000) ubyte[0x16F80] unknown1C000;
	@Offset(0x32F80) ItemStats[256] itemStats;
	@Offset(0x33780) ItemStats[16] magiStats;
	@Offset(0x33800) ubyte[0x680] unknown33800;
	@Offset(0x33E80) ubyte[256] itemUses;
	@Offset(0x33F80) ubyte[16] magiUses;
	@Offset(0x33F90) GrowthRates[2] growthRates;
	@Offset(0x33FB0) ubyte[0x2CC0] unknown33FB0;
	@Offset(0x36C70) Encounter[128] encounters;
	@Offset(0x36EF0) ubyte[0x90] unknown36EF0;
	@Offset(0x36F80) EnemyStats[256] enemyStats;
	@Offset(0x37980) ubyte[0x4BBC] unknown37980;
	@Offset(0x3C53C) FFL2StringList!(0x2024) unknownText;
	@Offset(0x3E560) ubyte[0xE0] unknown3E560;
	@Offset(0x3E640) FFL2String!(8)[256] itemNames;
	@Offset(0x3EE40) FFL2String!(8)[16] magiNames;
	@Offset(0x3EEC0) FFL2String!(8)[256] monsterNames;
	@Offset(0x3F6C0) FFL2Strings!(0x100) text;
	@Offset(0x3F7C0) ubyte[0xA0] unknown3F7C0;
	@Offset(0x3F860) ItemPrice[128] itemPrices;
	@Offset(0x3F9E0) ubyte[0x620] unknown3F9E0;
	bool verify() const @safe {
		return gbcHeader.gameTitle == "SAGA2\0\0\0\0\0\0";
	}
	enum loadedGame = "Final Fantasy Legend 2";
}
mixin GBCVerify!(FinalFantasyLegend2, 0x40000);

static immutable string[ubyte] basicTextTable;

alias FFL2Char = SimpleChar!basicTextTable;
alias FFL2String(size_t Len) = SimpleString!(basicTextTable, 0xFF, Len);
alias FFL2StringList(size_t Len) = SimpleStrings!(basicTextTable, 0x00, Len);
alias FFL2Strings(size_t Len) = SimpleString!(basicTextTable, 0x00, Len);

align(1) struct EnemyStats {
	align(1):
	ubyte typeAndWorld;
	ubyte unknown0;
	ushort hp;
	ubyte strength;
	ubyte agility;
	ubyte mana;
	ubyte defense;
	ubyte[2] unknown8;
}

align(1) struct ItemPrice {
	align(1):
	ushort price;
	ubyte unknown;
}
align(1) struct ItemStats {
	align(1):
	ubyte[4] unknown0;
	ubyte multiplier;
	ubyte[3] unknown5;
}

align(1) struct GrowthRate {
	align(1):
	ubyte doubleBaseChance;
	ubyte doubleLevelChance;
}

align(1) struct GrowthRates {
	align(1):
	GrowthRate skills;
	GrowthRate hp;
	GrowthRate strength;
	GrowthRate agility;
	GrowthRate mana;
	GrowthRate defense;
	GrowthRate unknown1;
	GrowthRate unknown2;
}
align(1) struct Encounter {
	align(1):
	ubyte[3] monsterIDs;
	ubyte lowerEncounterFlags;
	ubyte upperEncounterFlags;
}

shared static this() {
	basicTextTable = [
		0x06: "\n",
		0x3C: "○",
		0x3D: "☓",
		0x4E: "e ",
		0x4F: " t",
		0x50: "th",
		0x51: "he",
		0x52: "s ",
		0x53: "er",
		0x54: "t ",
		0x55: "ou",
		0x56: "in",
		0x57: "d ",
		0x58: " a",
		0x59: "an",
		0x5A: "re",
		0x5B: "o ",
		0x5C: " i",
		0x5D: "to",
		0x5E: " w",
		0x5F: "is",
		0x60: "at",
		0x61: " h",
		0x62: " g",
		0x63: " s",
		0x64: " m",
		0x65: "on",
		0x66: "or",
		0x67: "ll",
		0x68: "r ",
		0x69: " o",
		0x6A: "ha",
		0x6B: "ng",
		0x6C: "me",
		0x6D: "yo",
		0x6E: "ar",
		0x6F: " y",
		0x70: "hi",
		0x71: "go",
		0x72: "y ",
		0x73: "n ",
		0x74: " b",
		0x75: "ea",
		0x76: "ve",
		0x77: "'s",
		0x78: "st",
		0x79: "I ",
		0x7A: " c",
		0x7B: "a ",
		0x7C: "nd",
		0x7D: "ur",
		0x7E: " f",
		0x7F: "te",
		0x80: "se",
		0x81: "om",
		0x82: "ra",
		0x83: " d",
		0x84: "ow",
		0x85: "et",
		0x86: "ut",
		0x87: "it",
		0x88: "no",
		0x89: "as",
		0x8A: " l",
		0x8B: "en",
		0x8C: " I",
		0x8D: "of",
		0x8E: "us",
		0x8F: "ed",
		0x90: " n",
		0x91: "ro",
		0x92: "ne",
		0x93: "sh",
		0x94: "nt",
		0x95: "be",
		0x96: "l ",
		0x97: "ca",
		0x98: "le",
		0x99: "Th",
		0x9A: "u ",
		0x9B: "g ",
		0x9C: " M",
		0x9D: "lo",
		0x9E: "●",
		0xA1: "🔫",
		0xA3: "🛡️",
		0xA5: "🗡️",
		0xA6: "🔱",
		0xA7: "⚔️",
		0xA8: "🪓",
		0xA9: "🏹",
		0xAA: "⛑️",
		0xAD: "👞",
		0xAE: "📗",
		0xAF: "🧪",
		0xB0: "0",
		0xB1: "1",
		0xB2: "2",
		0xB3: "3",
		0xB4: "4",
		0xB5: "5",
		0xB6: "6",
		0xB7: "7",
		0xB8: "8",
		0xB9: "9",
		0xBA: "A",
		0xBB: "B",
		0xBC: "C",
		0xBD: "D",
		0xBE: "E",
		0xBF: "F",
		0xC0: "G",
		0xC1: "H",
		0xC2: "I",
		0xC3: "J",
		0xC4: "K",
		0xC5: "L",
		0xC6: "M",
		0xC7: "N",
		0xC8: "O",
		0xC9: "P",
		0xCA: "Q",
		0xCB: "R",
		0xCC: "S",
		0xCD: "T",
		0xCE: "U",
		0xCF: "V",
		0xD0: "W",
		0xD1: "X",
		0xD2: "Y",
		0xD3: "Z",
		0xD4: "a",
		0xD5: "b",
		0xD6: "c",
		0xD7: "d",
		0xD8: "e",
		0xD9: "f",
		0xDA: "g",
		0xDB: "h",
		0xDC: "i",
		0xDD: "j",
		0xDE: "k",
		0xDF: "l",
		0xE0: "m",
		0xE1: "n",
		0xE2: "o",
		0xE3: "p",
		0xE4: "q",
		0xE5: "r",
		0xE6: "s",
		0xE7: "t",
		0xE8: "u",
		0xE9: "v",
		0xEA: "w",
		0xEB: "x",
		0xEC: "y",
		0xED: "z",
		0xEE: "'",
		0xEF: ",",
		0xF0: ".",
		0xF1: "..",
		0xF2: "-",
		0xF3: "!",
		0xF4: "?",
		0xF5: ":",
		0xF6: "/",
		0xFF: " ",
	];
}