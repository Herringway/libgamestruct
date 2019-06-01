module libgamestruct.mother.mother2;

import libgamestruct.common;
import libgamestruct.platforms.snes;

import pixelatrix.color;

align(1) struct Earthbound {
	align(1):
	enum extension = "sfc";
	@Offset(0x000000) ubyte[0xFFB0] bankC0;
	@Offset(0x00FFB0) SNESHeader snesHeader;
	@Offset(0x010000) ubyte[0x10000] bankC1;
	@Offset(0x020000) ubyte[0x10000] bankC2;
	@Offset(0x030000) @Label("Overworld Sprite Palettes") @Palette(false) BGR555[16][8] overworldSpritePalettes;
	@Offset(0x030100) ubyte[0xFF00] bankC3;
	@Offset(0x040000) ubyte[0x10000] bankC4;
	@Offset(0x050000) ubyte[0x10000] bankC5;
	@Offset(0x060000) ubyte[0x10000] bankC6;
	@Offset(0x070000) ubyte[0x10000] bankC7;
	@Offset(0x080000) ubyte[0x10000] bankC8;
	@Offset(0x090000) ubyte[0x10000] bankC9;
	@Offset(0x0A0000) ubyte[0x10000] bankCA;
	@Offset(0x0B0000) ubyte[0xCBF4] miscBattleBGData;
	@Offset(0x0BCBF4) @Label("Battle Background Palettes, Group 1") @Palette(false) BGR555[16][86] battleBGPalettes1;
	@Offset(0x0BD6B4) ubyte[150] miscBattleBGData2;
	@Offset(0x0BD74A) @Label("Battle Background Palettes, Group 2") @Palette(false) BGR555[4][28] battleBGPalettes2;
	ubyte[0x27D6] miscBattleBGData3;
	@Offset(0x0C0000) ubyte[0xF47F] bankCC;
	@Offset(0x0CF47F) @Label("PSI Animation Palettes") @Palette(false) BGR555[4][34] psiAnimPalettes;
	@Offset(0x0CF58F) uint[34] psiAnimPointers;
	ubyte[0x9E9] audioPack71;
	@Offset(0x0D0000) ubyte[0x10000] bankCD;
	@Offset(0x0E0000) ubyte[0x6514] bankCE;
	@Offset(0x0E6514) @Label("Battle Sprite Palettes") @Palette(false) BGR555[16][32] battleSpritePalettes;
	ubyte[0x8EF2] bankCE2;
	@Offset(0x0EF806) @Label("Sound Stone Palettes") @Palette(false) BGR555[16][6] soundStonePalettes;
	ubyte[0x73A] bankCE3;
	@Offset(0x0F0000) ubyte[0x10000] bankCF;
	@Offset(0x100000) ubyte[0x10000] bankD0;
	@Offset(0x110000) ubyte[0x10000] bankD1;
	@Offset(0x120000) ubyte[0x10000] bankD2;
	@Offset(0x130000) ubyte[0x10000] bankD3;
	@Offset(0x140000) ubyte[0x10000] bankD4;
	@Offset(0x150000) ubyte[0x9589] bankD5;
	@Offset(0x159589) @Label("Enemies") Enemy[231] enemies;
	ubyte[0x15A5] bankD52;
	@Offset(0x160000) ubyte[0x10000] bankD6;
	@Offset(0x170000) ubyte[0x10000] bankD7;
	//@Offset(0x170000) ubyte[0xA800] bankD7;
	//@Offset(0x17A800) @Palette BGR555[16][80] globalMapPalettes;
	//@Offset(0x17B200) ubyte[0x4E00] bankD72;
	@Offset(0x180000) ubyte[0x10000] bankD8;
	@Offset(0x190000) ubyte[0x10000] bankD9;
	@Offset(0x1A0000) ubyte[0x7CA7] bankDA;
	@Offset(0x1A7CA7) @Palette(true) BGR555[16][6*4] mapPalettes0;
	@Offset(0x1A7FA7) @Palette(true) BGR555[16][6*3] mapPalettes1;
	@Offset(0x1A81E7) @Palette(true) BGR555[16][6*4] mapPalettes2;
	@Offset(0x1A84E7) @Palette(true) BGR555[16][6*2] mapPalettes3;
	@Offset(0x1A8667) @Palette(true) BGR555[16][6*2] mapPalettes4;
	@Offset(0x1A87E7) @Palette(true) BGR555[16][6*4] mapPalettes5;
	@Offset(0x1A8AE7) @Palette(true) BGR555[16][6*7] mapPalettes6;
	@Offset(0x1A9027) @Palette(true) BGR555[16][6*1] mapPalettes7;
	@Offset(0x1A90E7) @Palette(true) BGR555[16][6*2] mapPalettes8;
	@Offset(0x1A9267) @Palette(true) BGR555[16][6*6] mapPalettes9;
	@Offset(0x1A96E7) @Palette(true) BGR555[16][6*8] mapPalettes10;
	@Offset(0x1A9CE7) @Palette(true) BGR555[16][6*8] mapPalettes11;
	@Offset(0x1AA2E7) @Palette(true) BGR555[16][6*8] mapPalettes12;
	@Offset(0x1AA8E7) @Palette(true) BGR555[16][6*4] mapPalettes13;
	@Offset(0x1AABE7) @Palette(true) BGR555[16][6*8] mapPalettes14;
	@Offset(0x1AB1E7) @Palette(true) BGR555[16][6*8] mapPalettes15;
	@Offset(0x1AB7E7) @Palette(true) BGR555[16][6*4] mapPalettes16;
	@Offset(0x1ABAE7) @Palette(true) BGR555[16][6*8] mapPalettes17;
	@Offset(0x1AC0E7) @Palette(true) BGR555[16][6*1] mapPalettes18;
	@Offset(0x1AC1A7) @Palette(true) BGR555[16][6*7] mapPalettes19;
	@Offset(0x1AC6E7) @Palette(true) BGR555[16][6*8] mapPalettes20;
	@Offset(0x1ACCE7) @Palette(true) BGR555[16][6*5] mapPalettes21;
	@Offset(0x1AD0A7) @Palette(true) BGR555[16][6*5] mapPalettes22;
	@Offset(0x1AD467) @Palette(true) BGR555[16][6*4] mapPalettes23;
	@Offset(0x1AD767) @Palette(true) BGR555[16][6*5] mapPalettes24;
	@Offset(0x1ADB27) @Palette(true) BGR555[16][6*8] mapPalettes25;
	@Offset(0x1AE127) @Palette(true) BGR555[16][6*6] mapPalettes26;
	@Offset(0x1AE5A7) @Palette(true) BGR555[16][6*5] mapPalettes27;
	@Offset(0x1AE967) @Palette(true) BGR555[16][6*6] mapPalettes28;
	@Offset(0x1AEDE7) @Palette(true) BGR555[16][6*6] mapPalettes29;
	@Offset(0x1AF267) @Palette(true) BGR555[16][6*3] mapPalettes30;
	@Offset(0x1AF4A7) @Palette(true) BGR555[16][6*1] mapPalettes31;
	ubyte[0xA99] bankDA30;
	@Offset(0x1B0000) ubyte[0x10000] bankDB;
	@Offset(0x1C0000) ubyte[0x10000] bankDC;
	@Offset(0x1D0000) ubyte[0x10000] bankDD;
	@Offset(0x1E0000) ubyte[0x10000] bankDE;
	@Offset(0x1F0000) ubyte[0x10000] bankDF;
	@Offset(0x200000) ubyte[0x1FC8] bankE0;
	@Offset(0x201FC8) @Label("Plain flavour Palette") @Palette(true) BGR555[4][8] textFlavourPalettes1;
	@Offset(0x202008) @Label("Mint Flavour Palette") @Palette(true) BGR555[4][8] textFlavourPalettes2;
	@Offset(0x202048) @Label("Strawberry Flavour Palette") @Palette(true) BGR555[4][8] textFlavourPalettes3;
	@Offset(0x202088) @Label("Banana Flavour Palette") @Palette(true) BGR555[4][8] textFlavourPalettes4;
	@Offset(0x2020C8) @Label("Peanut Flavour Palette") @Palette(true) BGR555[4][8] textFlavourPalettes5;
	@Offset(0x202108) @Label("Death Text Palette") @Palette(true) BGR555[4][8] textFlavourPalettes6;
	@Offset(0x202148) @Palette(true) BGR555[4][8] textFlavourPalettes7;
	ubyte[0xDE78] bankE02;
	@Offset(0x210000) ubyte[0x10000] bankE1;
	@Offset(0x220000) ubyte[0x10000] bankE2;
	@Offset(0x230000) ubyte[0x10000] bankE3;
	@Offset(0x240000) ubyte[0x10000] bankE4;
	@Offset(0x250000) ubyte[0x10000] bankE5;
	@Offset(0x260000) ubyte[0x10000] bankE6;
	@Offset(0x270000) ubyte[0x10000] bankE7;
	@Offset(0x280000) ubyte[0x10000] bankE8;
	@Offset(0x290000) ubyte[0x10000] bankE9;
	@Offset(0x2A0000) ubyte[0x10000] bankEA;
	@Offset(0x2B0000) ubyte[0x10000] bankEB;
	@Offset(0x2C0000) ubyte[0x10000] bankEC;
	@Offset(0x2D0000) ubyte[0x10000] bankED;
	@Offset(0x2E0000) ubyte[0x10000] bankEE;
	@Offset(0x2F0000) ubyte[0x10000] bankEF;
	bool verify() const @safe {
		return snesHeader.gameID == "MB  ";
	}
	string loadedGame() const @safe {
		return "Earthbound";
	}
}

mixin SNESVerify!(Earthbound, 0x300000);

static immutable string[ubyte] basicTextTable;

alias EBString(size_t Len) = SimpleString!(basicTextTable, 0x50, Len);

shared static this() {
	basicTextTable = [
		0x50: " ",
		0x51: "!",
		0x52: "\"",
		0x54: "$",
		0x55: "%",
		0x56: "00",
		0x57: "'",
		0x58: "(",
		0x59: ")",
		0x5A: "#",
		0x5B: "+",
		0x5C: ",",
		0x5D: "-",
		0x5E: ".",
		0x5F: "\\",
		0x60: "0",
		0x61: "1",
		0x62: "2",
		0x63: "3",
		0x64: "4",
		0x65: "5",
		0x66: "6",
		0x67: "7",
		0x68: "8",
		0x69: "9",
		0x6A: ":",
		0x6B: ";",
		0x6C: "<",
		0x6D: "=",
		0x6E: ">",
		0x6F: "?",
		0x70: "@",
		0x71: "A",
		0x72: "B",
		0x73: "C",
		0x74: "D",
		0x75: "E",
		0x76: "F",
		0x77: "G",
		0x78: "H",
		0x79: "I",
		0x7A: "J",
		0x7B: "K",
		0x7C: "L",
		0x7D: "M",
		0x7E: "N",
		0x7F: "O",
		0x80: "P",
		0x81: "Q",
		0x82: "R",
		0x83: "S",
		0x84: "T",
		0x85: "U",
		0x86: "V",
		0x87: "W",
		0x88: "X",
		0x89: "Y",
		0x8A: "Z",
		0x91: "a",
		0x92: "b",
		0x93: "c",
		0x94: "d",
		0x95: "e",
		0x96: "f",
		0x97: "g",
		0x98: "h",
		0x99: "i",
		0x9A: "j",
		0x9B: "k",
		0x9C: "l",
		0x9D: "m",
		0x9E: "n",
		0x9F: "o",
		0xA0: "p",
		0xA1: "q",
		0xA2: "r",
		0xA3: "s",
		0xA4: "t",
		0xA5: "u",
		0xA6: "v",
		0xA7: "w",
		0xA8: "x",
		0xA9: "y",
		0xAA: "z",
		0x13: "/",
	];
}


align(1) struct Enemy {
	align(1):
	ubyte theFlag;
	@Label("Name") @Name() EBString!25 name;
	@Randomize() Gender gender;
	@Randomize() EnemyType type;
	ushort battleSprite;
	ushort worldSprite;
	ubyte runFlag;
	ushort hp;
	ushort pp;
	uint experience;
	ushort money;
	ushort movement;
	uint entranceText;
	uint deathText;
	ubyte palette;
	ubyte level;
	ubyte music;
	ushort offense;
	ushort defense;
	ubyte speed;
	ubyte guts;
	ubyte luck;
	ubyte fireResist;
	ubyte iceResist;
	ubyte flashResist;
	ubyte paralysisResist;
	ubyte mindResist;
	ubyte missRate;
	ubyte actionOrder;
	ushort[4] actions;
	ushort finalAction;
	ubyte[4] actionArguments;
	ubyte finalActionArgument;
	ubyte iq;
	ubyte bossFlag;
	ubyte itemDropRate;
	ubyte itemDropped;
	ubyte initialStatus;
	ubyte deathStyle;
	Row row;
	ubyte maxAllies;
	ubyte mirrorSuccessRate;
}

enum Gender : ubyte {
	male,
	female,
	neutral
}

enum EnemyType : ubyte {
	normal,
	insect,
	metal
}

enum Row : ubyte {
	front,
	back
}
