module libgamestruct.mother.mother2;

import libgamestruct.common;
import libgamestruct.platforms.snes;

import magicalrainbows.formats;

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

enum WindowFlavour {
	plain,
	mint,
	strawberry,
	banana,
	peanut
}

align(1) struct GameState {
	align(1):
	EBString!12 mother2PlayerName;
	EBString!24 playerName;
	EBString!6 petName;
	EBString!6 favouriteFood;
	EBString!12 favouriteThing;
	uint money;
	uint bankBalance;
	ubyte[397] raw;
	uint timer;
	WindowFlavour windowFlavour;
}
static assert(GameState.sizeof == 473);

align(1) struct Character {
	align(1):
	EBString!5 name;
	ubyte level;
	uint exp;
	ushort maxHP;
	ushort maxPP;
	ubyte[7] afflictions;
	ubyte offense;
	ubyte defense;
	ubyte speed;
	ubyte guts;
	ubyte luck;
	ubyte vitality;
	ubyte iq;
	ubyte baseOffense;
	ubyte baseDefense;
	ubyte baseSpeed;
	ubyte baseGuts;
	ubyte baseLuck;
	ubyte baseVitality;
	ubyte baseIQ;
	ubyte[14] items;
	ubyte[4] equipment;
	uint[2] unknown;
	ushort positionIndex;
	uint unknown2;
	ushort unknown3;
	ushort currentHP ;
	ushort currentHPTarget;
	ushort unknown4;
	ushort currentPP;
	ushort currentPPTarget;
	ushort hpPPWindowOptions;
	ubyte missRate;
	ubyte fireResist;
	ubyte freezeResist;
	ubyte flashResist;
	ubyte paralysisResist;
	ubyte hypnosis_brainshockResist;
	ubyte boostedSpeed;
	ubyte boostedGuts;
	ubyte boostedVitality;
	ubyte boostedIQ;
	ubyte boostedLuck;
	ubyte unknown5;
	ubyte unknown6;
	ubyte unknown7;
}

align(1) struct SaveSlot {
	align(1):
	char[20] signature;
	ubyte[8] unknown;
	ushort checksum;
	ushort checksumComplement;
	GameState state;
	Character[6] playerChars;
	ubyte[128] eventFlags;
	ubyte[77] unused2;
}

align(1) struct SRAM {
	align(1):
	SaveSlot[2][3] saves;
	ubyte[510] unused1;
	ushort unknown;
}

static assert(SRAM.sizeof == 8192);

align(1) struct Battler {
	align(1):
	ubyte id;
	ubyte unknown;
	ubyte sprite;
	ubyte unknown2;
	ushort currentAction;
	ubyte actionOrderVar;
	ubyte unknown3;
	ubyte currentActionArgument;
	ubyte unknown4;
	ubyte currentTarget;
	bool theFlag;
	ubyte consciousness;
	ubyte unknown5;
	bool isEnemy;
	ubyte npcID;
	Row row;
	ushort hp;
	ushort hpTarget;
	ushort hpMax;
	ushort pp;
	ushort ppTarget;
	ushort ppMax;
	ubyte[7] afflictions;
	bool guarding;
	ubyte shieldHP;
	ushort offense;
	ushort defense;
	ushort speed;
	ushort guts;
	ushort luck;
	ubyte vitality;
	ubyte iq;
	ubyte baseOffense;
	ubyte baseDefense;
	ubyte baseSpeed;
	ubyte baseGuts;
	ubyte baseLuck;
	ubyte paralysisResist;
	ubyte freezeResist;
	ubyte flashResist;
	ubyte fireResist;
	ubyte brainshockResist;
	ubyte hypnosisResist;
	ushort money;
	ushort exp;
	ubyte vramSpriteIndex;
	ubyte spriteX;
	ubyte spriteY;
	ubyte initiative;
	ubyte unknown6;
	ubyte[3] unknown7;
	ubyte unknown8;
	ubyte unknown9;
	ubyte id2;
	ubyte[2] unknown10;
}
static assert(Battler.sizeof == 78);

align(1) struct WindowStats {
	align(1):
	ubyte[82] unknown;
}
align(1) struct Unknown89D4Entry {
	align(1):
	ushort unknown01;
	ushort unknown02;
	ushort unknown03;
	ushort unknown04;
	ushort unknown05;
	ushort unknown06;
	ushort unknown07;
	ubyte unknown08;
	ubyte unknown09;
	ubyte[3] unknown10;
	ubyte[24] unknown11;
	ushort unknown12;
	ubyte[45] unknown13;
}

align(1) struct RAM {
	align(1):
	 //ubyte[38901] raw;
	ubyte UNKNOWN_7E0000;
	ubyte UNKNOWN_7E0001;
	ubyte UNKNOWN_7E0002;
	ushort UNKNOWN_7E0003;
	ushort UNKNOWN_7E0005;
	//Some kind of pointer?
	ushort UNKNOWN_7E0007;
	ubyte UNKNOWN_7E0009;
	ubyte UNKNOWN_7E000A;
	ubyte UNKNOWN_7E000B;
	ubyte UNKNOWN_7E000C;
	ubyte INIDISP_MIRROR;
	ubyte OBSEL_MIRROR;
	ubyte UNKNOWN_7E000F;
	ubyte MOSAIC_MIRROR;
	ubyte UNKNOWN_7E0011;
	ubyte UNKNOWN_7E0012;
	ubyte UNKNOWN_7E0013;
	ubyte UNKNOWN_7E0014;
	ubyte BG12NBA_MIRROR;
	ubyte UNKNOWN_7E0016;
	ubyte UNUSED_WH2_MIRROR;
	ushort UNKNOWN_7E0018;
	ubyte TM_MIRROR;
	ubyte TD_MIRROR;
	ubyte UNKNOWN_7E001C;
	ubyte UNKNOWN_7E001D;
	ubyte UNKNOWN_7E001E;
	ubyte HDMAEN_MIRROR;
	ubyte UNKNOWN_7E0020;
	ubyte UNKNOWN_7E0021;
	ubyte UNKNOWN_7E0022;
	ubyte UNKNOWN_7E0023;
	ushort RAND_A;
	ushort RAND_B;
	ubyte UNKNOWN_7E0028;
	ubyte UNKNOWN_7E0029;
	ubyte UNKNOWN_7E002A;
	ubyte UNKNOWN_7E002B;
	ubyte UNKNOWN_7E002C;
	ubyte UNKNOWN_7E002D;
	ubyte UNKNOWN_7E002E;
	ubyte UNKNOWN_7E002F;
	ubyte UNKNOWN_7E0030;
	ushort BG1_X_POS;
	ushort BG1_Y_POS;
	ushort BG2_X_POS;
	ushort BG2_Y_POS;
	ushort BG3_X_POS;
	ushort BG3_Y_POS;
	ushort BG4_X_POS;
	ushort BG4_Y_POS;
	ushort[2] BG1_X_POS_BUF;
	ushort[2] BG1_Y_POS_BUF;
	ushort[2] BG2_X_POS_BUF;
	ushort[2] BG2_Y_POS_BUF;
	ushort[2] BG3_X_POS_BUF;
	ushort[2] BG3_Y_POS_BUF;
	ushort[2] BG4_X_POS_BUF;
	ushort[2] BG4_Y_POS_BUF;
	ushort UNKNOWN_7E0061;
	ushort UNKNOWN_7E0063;
	ushort PAD_1_STATE;
	ushort PAD_2_STATE;
	ushort PAD_1_HELD;
	ushort PAD_2_HELD;
	ushort PAD_1_PRESS;
	ushort PAD_2_PRESS;
	ubyte[6] unknown;
	ubyte UNKNOWN_7E0077;
	ubyte UNKNOWN_7E0078;
	ubyte UNKNOWN_7E0079;
	ubyte UNKNOWN_7E007A;
	ubyte UNKNOWN_7E007B;
	ubyte UNKNOWN_7E007C;
	ubyte UNKNOWN_7E007D;
	ubyte UNKNOWN_7E007E;
	ubyte UNKNOWN_7E007F;
	ubyte UNKNOWN_7E0080;
	ushort UNKNOWN_7E0081;
	ushort UNKNOWN_7E0083;
	ushort UNKNOWN_7E0085;
	ushort UNKNOWN_7E0087;
	ushort UNKNOWN_7E0089;
	ushort UNKNOWN_7E008B;
	ushort UNKNOWN_7E008D;
	ushort UNKNOWN_7E008F;
	ubyte UNKNOWN_7E0091;
	ushort UNKNOWN_7E0092;
	ushort UNKNOWN_7E0094;
	ubyte UNKNOWN_7E0096;
	ushort UNKNOWN_7E0097;
	ubyte UNKNOWN_7E0099;
	ubyte[2] UNKNOWN_7E009A;
	ushort UNKNOWN_7E009C;
	ushort UNKNOWN_7E009E;
	ubyte UNKNOWN_7E00A0;
	ubyte UNKNOWN_7E00A1;
	ubyte UNKNOWN_7E00A2;
	ubyte UNKNOWN_7E00A3;
	ubyte UNKNOWN_7E00A4;
	ubyte UNKNOWN_7E00A5;
	ubyte UNKNOWN_7E00A6;
	uint TIMER;
	ubyte UNKNOWN_7E00AB;
	ushort UNKNOWN_7E00AC;
	ushort UNKNOWN_7E00AE;
	ubyte UNKNOWN_7E00B0;
	ubyte UNKNOWN_7E00B1;
	ushort UNKNOWN_7E00B2;
	ubyte TEMP_DIVIDEND;
	ubyte UNKNOWN_7E00B5;
	ubyte UNKNOWN_7E00B6;
	ubyte UNKNOWN_7E00B7;
	ubyte UNKNOWN_7E00B8;
	ubyte UNKNOWN_7E00B9;
	ushort UNKNOWN_7E00BA;
	ushort UNKNOWN_7E00BC;
	ushort UNKNOWN_7E00BE;
	ubyte UNKNOWN_7E00C0;
	ubyte[3] UNKNOWN_7E00C1;
	@Offset(0x000C4)
	ushort UNKNOWN_7E00C4;
	ushort SPC_DATA_PTR;
	ushort UNKNOWN_7E00C8;
	ushort UNKNOWN_7E00CA;
	ushort UNKNOWN_7E00CC;
	ubyte UNKNOWN_7E00CE;
	ubyte UNKNOWN_7E00CF;

	@Offset(0x000200)
	BGR555[8][4] CUR_TEXT_PAL;
	BGR555[8][22] CUR_MAP_PAL;
	BGR555[8][6] CUR_PARTY_PAL;
	ubyte UNKNOWN_7E0400;

	@Offset(0x000A34)
	ushort UNKNOWN_7E0A34;
	ushort UNKNOWN_7E0A36;
	ushort UNKNOWN_7E0A38;
	ushort UNKNOWN_7E0A3A;
	ushort UNKNOWN_7E0A3C;
	ushort UNKNOWN_7E0A3E;
	ushort UNKNOWN_7E0A40;
	ushort UNKNOWN_7E0A42;
	ushort UNKNOWN_7E0A44;
	ushort UNKNOWN_7E0A46;
	ushort UNKNOWN_7E0A48;
	ushort UNKNOWN_7E0A4A;
	ushort UNKNOWN_7E0A4C;
	ushort UNKNOWN_7E0A4E;
	ushort UNKNOWN_7E0A50;
	ushort UNKNOWN_7E0A52;
	ubyte UNKNOWN_7E0A54;

	@Offset(0x000A58)
	ushort UNKNOWN_7E0A58;
	uint MOVEMENT_42_LOADED_PTR;
	ushort UNKNOWN_7E0A5E;
	ushort UNKNOWN_7E0A60;
	ubyte LOADED_SPRITE_MOVEMENT_CODES_TABLE;

	@Offset(0x000A9E)
	ushort[30] UNKNOWN_30X2_TABLE_1;
	ushort[30] UNKNOWN_30X2_TABLE_2;
	ushort[30] SPRITE_SCREEN_X_TABLE;
	ushort[30] SPRITE_SCREEN_Y_TABLE;
	ushort[30] SPRITE_ABS_X_TABLE;
	ushort[30] SPRITE_ABS_Y_TABLE;
	ushort[30] SPRITE_ABS_Z_TABLE;
	ushort[30] SPRITE_ABS_X_FRACTION_TABLE;
	ushort[30] SPRITE_ABS_Y_FRACTION_TABLE;
	ushort[30] SPRITE_ABS_Z_FRACTION_TABLE;
	ushort[30] SPRITE_DELTA_X_TABLE;
	ushort[30] SPRITE_DELTA_Y_TABLE;
	ushort[30] SPRITE_DELTA_Z_TABLE;
	ushort[30] SPRITE_DELTA_X_FRACTION_TABLE;
	ushort[30] SPRITE_DELTA_Y_FRACTION_TABLE;
	ushort[30] SPRITE_DELTA_Z_FRACTION_TABLE;
	ushort[30] UNKNOWN_30X2_TABLE_3;
	ushort[30] UNKNOWN_30X2_TABLE_4;
	ushort[30] UNKNOWN_30X2_TABLE_5;
	ushort[30] UNKNOWN_30X2_TABLE_6;
	ushort[30] UNKNOWN_30X2_TABLE_7;
	ushort[30] UNKNOWN_30X2_TABLE_8;
	ushort[30] UNKNOWN_30X2_TABLE_9;
	ushort[30] UNKNOWN_30X2_TABLE_10;
	ushort[30] UNKNOWN_30X2_TABLE_11;
	ushort[30] UNKNOWN_30X2_TABLE_12;
	ushort[30] UNKNOWN_30X2_TABLE_13;
	ushort[30] UNKNOWN_30X2_TABLE_14;
	ushort[30] UNKNOWN_30X2_TABLE_15;
	ushort[30] UNKNOWN_30X2_TABLE_16;
	ushort[30] UNKNOWN_30X2_TABLE_17;
	ushort[30] UNKNOWN_30X2_TABLE_18;
	ushort[30] UNKNOWN_30X2_TABLE_19;
	ubyte UNKNOWN_7E125A;

	@Offset(0x0012E6)
	ubyte UNKNOWN_7E12E6;

	@Offset(0x001372)
	ushort[30] UNKNOWN_30X2_TABLE_20;

	@Offset(0x0013FE)
	ushort[30] UNKNOWN_30X2_TABLE_21;

	@Offset(0x00148A)
	ushort[30] UNKNOWN_30X2_TABLE_22;

	@Offset(0x001516)
	ushort[30] UNKNOWN_30X2_TABLE_23;

	@Offset(0x001A02)
	ubyte[8] UNKNOWN_7E1A02;
	ubyte[8] UNKNOWN_7E1A0A;
	ubyte[8] UNKNOWN_7E1A12;
	ubyte[8] UNKNOWN_7E1A1A;
	ubyte[8] UNKNOWN_7E1A22;
	ubyte[8] UNKNOWN_7E1A2A;
	ubyte[8] UNKNOWN_7E1A32;
	ubyte[8] UNKNOWN_7E1A3A;
	ushort UNKNOWN_7E1A42;
	ushort UNKNOWN_7E1A44;
	ushort UNKNOWN_7E1A46;
	ushort UNKNOWN_7E1A48;
	ubyte UNKNOWN_7E1A4A;

	@Offset(0x001A86)
	ubyte UNKNOWN_7E1A86;

	@Offset(0x001AC2)
	ubyte UNKNOWN_7E1AC2;

	@Offset(0x001ACA)
	ubyte UNKNOWN_7E1ACA;
	ubyte UNKNOWN_7E1ACB;
	ushort UNKNOWN_7E1ACC;
	ubyte UNKNOWN_7E1ACE;

	@Offset(0x001AD2)
	ushort UNKNOWN_7E1AD2;
	ushort UNKNOWN_7E1AD4;
	ubyte UNKNOWN_7E1AD6;

	@Offset(0x001B56)
	ubyte UNKNOWN_7E1B56;

	@Offset(0x001B6E)
	ubyte[24] UNKNOWN_7E1B6E;
	ubyte[24] UNKNOWN_7E1B86;
	ushort UNKNOWN_7E1B9E;
	ubyte UNKNOWN_7E1BA0;
	ushort UNKNOWN_7E1BA1;
	ushort UNKNOWN_7E1BA3;
	ubyte UNKNOWN_7E1BA5;
	ubyte UNKNOWN_7E1BA6;
	ubyte UNKNOWN_7E1BA7;
	ubyte UNKNOWN_7E1BA8;
	ubyte UNKNOWN_7E1BA9;
	ubyte UNKNOWN_7E1BAA;

	@Offset(0x001BCA)
	ushort UNKNOWN_7E1BCA;
	ushort UNKNOWN_7E1BCC;
	ushort UNKNOWN_7E1BCE;
	ushort UNKNOWN_7E1BD0;
	ushort UNKNOWN_7E1BD2;
	ubyte UNKNOWN_7E1BD4;

	@Offset(0x001F00)
	ubyte[0x100] STACK;

	@Offset(0x002400)
	ushort UNKNOWN_7E2400;
	ushort UNKNOWN_7E2402;
	ubyte UNKNOWN_7E2404;

	@Offset(0x002444)
	ubyte UNKNOWN_7E2444;

	@Offset(0x002484)
	ubyte UNKNOWN_7E2484;

	@Offset(0x0024C4)
	ubyte UNKNOWN_7E24C4;

	@Offset(0x002504)
	ushort UNKNOWN_7E2504;
	ubyte UNKNOWN_7E2506;

	@Offset(0x002546)
	ubyte UNKNOWN_7E2546;

	@Offset(0x002586)
	ubyte UNKNOWN_7E2586;

	@Offset(0x0025C6)
	ubyte UNKNOWN_7E25C6;

	@Offset(0x002606)
	ushort UNKNOWN_7E2606;
	ubyte UNKNOWN_7E2608;

	@Offset(0x002648)
	ubyte UNKNOWN_7E2648;

	@Offset(0x002688)
	ubyte UNKNOWN_7E2688;

	@Offset(0x0026C8)
	ubyte UNKNOWN_7E26C8;

	@Offset(0x002708)
	ubyte UNKNOWN_7E2708;

	@Offset(0x00270A)
	ubyte UNKNOWN_7E270A;

	@Offset(0x00274A)
	ubyte UNKNOWN_7E274A;

	@Offset(0x00278A)
	ubyte UNKNOWN_7E278A;

	@Offset(0x0027CA)
	ubyte UNKNOWN_7E27CA;

	@Offset(0x00280A)
	ushort UNKNOWN_7E280A;
	ushort[30] UNKNOWN_30X2_TABLE_23_;
	ushort UNKNOWN_7E2848;
	ushort UNKNOWN_7E284A;
	ushort[30] UNKNOWN_7E284C;
	ushort UNKNOWN_7E2888;
	ushort UNKNOWN_7E288A;
	ushort UNKNOWN_7E288C;
	ushort UNKNOWN_7E288E;
	ushort UNKNOWN_7E2890;
	ushort UNKNOWN_7E2892;
	ushort UNKNOWN_7E2894;
	ushort UNKNOWN_7E2896;
	ushort UNKNOWN_7E2898;
	ushort UNKNOWN_7E289A;
	ushort UNKNOWN_7E289C;
	ushort[30] UNKNOWN_30X2_TABLE_24;
	ushort[30] UNKNOWN_30X2_TABLE_25;
	ushort[30] UNKNOWN_30X2_TABLE_26;
	ushort[30] UNKNOWN_30X2_TABLE_27;
	ushort[30] UNKNOWN_30X2_TABLE_28;
	ushort[30] UNKNOWN_30X2_TABLE_29;
	ushort[30] UNKNOWN_30X2_TABLE_30;
	ushort[30] UNKNOWN_30X2_TABLE_31;
	ushort[30] UNKNOWN_30X2_TABLE_32;
	ushort[30] UNKNOWN_30X2_TABLE_33;
	//initial direction...?
	ushort[30] UNKNOWN_30X2_TABLE_34;
	ushort[30] UNKNOWN_30X2_TABLE_35;
	ushort[30] UNKNOWN_30X2_TABLE_36;
	ushort[30] UNKNOWN_30X2_TABLE_37;
	ushort[30] UNKNOWN_30X2_TABLE_38;
	ushort[30] UNKNOWN_30X2_TABLE_40;
	ushort[30] UNKNOWN_30X2_TABLE_41;
	ushort[30] LOADED_TPT_ENTRIES;
	ushort[30] LOADED_TPT_ENTRIES_SPRITES;
	ushort[30] UNKNOWN_30X2_TABLE_42;
	ushort[30] UNKNOWN_30X2_TABLE_43;
	ushort[30] UNKNOWN_30X2_TABLE_44;
	ushort[30] UNKNOWN_30X2_TABLE_45;
	ushort[30] UNKNOWN_30X2_TABLE_46;
	ushort[30] UNKNOWN_7E2E3E;
	ushort[30] UNKNOWN_7E2E7A;
	ushort[30] MAP_ENTITY_MUSHROOMIZED_OVERLAY_PTRS;
	ushort[30] UNKNOWN_7E2EF2;
	ushort[30] UNKNOWN_7E2F2E;
	ushort[30] MAP_ENTITY_SWEATING_OVERLAY_PTRS;
	ushort[30] UNKNOWN_7E2FA6;
	ushort[30] UNKNOWN_7E2FE2;
	ushort[30] MAP_ENTITY_RIPPLE_OVERLAY_PTRS;
	ushort[30] UNKNOWN_7E305A;
	ushort[30] UNKNOWN_7E3096;
	ushort[30] MAP_ENTITY_BIG_RIPPLE_OVERLAY_PTRS;
	ushort[30] UNKNOWN_7E310E;
	ushort[30] UNKNOWN_7E314A;
	ubyte UNKNOWN_7E3186;

	@Offset(0x003492)
	ubyte[1664] UNKNOWN_7E3492;
	ubyte[8*3] UNKNOWN_7E3B12;

	@Offset(0x003C14)
	ushort UNKNOWN_7E3C14;
	ushort UNKNOWN_7E3C16;
	ushort UNKNOWN_7E3C18;
	ushort UNKNOWN_7E3C1A;
	ushort UNKNOWN_7E3C1C;
	ushort UNKNOWN_7E3C1E;
	ushort UNKNOWN_7E3C20;
	ubyte[1866] UNKNOWN_7E3C22;
	@Offset(0x00436C)
	ushort DEBUG;
	ushort UNKNOWN_7E436E;
	ushort UNKNOWN_7E4370;
	ushort UNKNOWN_7E4372;
	ushort UNKNOWN_7E4374;
	ubyte UNKNOWN_7E4376;

	@Offset(0x004380)
	ushort UNKNOWN_7E4380;
	ubyte UNKNOWN_7E4382;

	@Offset(0x00438A)
	ushort UNKNOWN_7E438A;
	ushort UNKNOWN_7E438C;
	ubyte CURRENT_SECTOR_ATTRIBUTES;

	@Offset(0x0043D0)
	ushort UNKNOWN_7E43D0;
	ushort UNKNOWN_7E43D2;
	ushort UNKNOWN_7E43D4;
	ushort UNKNOWN_7E43D6;
	ushort UNKNOWN_7E43D8;
	ubyte UNKNOWN_7E43DA;

	@Offset(0x00445C)
	ushort UNKNOWN_7E445C;
	ushort UNKNOWN_7E445E;
	ubyte UNKNOWN_7E4460;

	@Offset(0x004472)
	ushort UNKNOWN_7E4472;
	ubyte UNKNOWN_7E4474;

	@Offset(0x004676)
	ubyte UNKNOWN_7E4676;

	@Offset(0x00467A)
	//an ID for the UNKNOWN_C42F8C table
	ushort UNKNOWN_7E467A;
	ushort UNKNOWN_7E467C;
	ubyte SPRITE_TABLE_7E467E;

	@Offset(0x004A00)
	ubyte UNKNOWN_7E4A00;
	ubyte[87] UNKNOWN_7E4A01;
	@Offset(0x004A58)
	ushort UNKNOWN_7E4A58;
	ushort UNKNOWN_7E4A5A;
	ushort UNKNOWN_7E4A5C;
	ushort UNKNOWN_7E4A5E;
	ubyte MAGIC_BUTTERFLY;

	@Offset(0x004A66)
	ushort SHOW_NPC_FLAG;
	ubyte UNKNOWN_7E4A68;

	@Offset(0x004A72)
	ubyte UNKNOWN_7E4A72;

	@Offset(0x004A8C)
	ubyte CURRENT_BATTLE_GROUP;

	@Offset(0x004DBA)
	ushort UNKNOWN_7E4DBA;
	ubyte BATTLE_INITIATIVE;

	@Offset(0x004DC2)
	ushort BATTLE_DEBUG;
	ushort UNKNOWN_7E4DC4;
	ushort UNKNOWN_7E4DC6;
	ubyte CHOSEN_FOUR_PTRS;

	@Offset(0x004DD4)
	ushort UNKNOWN_7E4DD4;
	ubyte UNKNOWN_7E4DD6;

	@Offset(0x005156)
	ubyte[0xC00] PLAYER_POSITION_BUFFER;
	ushort MISC_DEBUG_FLAGS;
	ushort UNKNOWN_7E5D58;
	ushort UNKNOWN_7E5D5A;
	ushort UNKNOWN_7E5D5C;
	ushort UNKNOWN_7E5D5E;
	ushort BATTLE_SWIRL_COUNTDOWN;
	ushort CURRENT_TPT_ENTRY;
	ushort UNKNOWN_7E5D64;
	ubyte[12] UNKNOWN_7E5D66;
	ushort UNKNOWN_7E5D72;
	ushort UNKNOWN_7E5D74;
	ushort UNKNOWN_7E5D76;
	ubyte UNKNOWN_7E5D78;

	@Offset(0x005D8C)
	ushort UNKNOWN_7E5D8C;

	@Offset(0x005D98)
	ushort OVERWORLD_STATUS_SUPPRESSION;
	ubyte UNKNOWN_7E5D9A;

	@Offset(0x005DA0)
	ushort MUSHROOMIZED_WALKING_FLAG;
	ushort UNKNOWN_7E5DA2;
	ushort UNKNOWN_7E5DA4;
	ushort UNKNOWN_7E5DA6;
	ushort UNKNOWN_7E5DA8;
	ushort UNKNOWN_7E5DAA;
	ushort UNKNOWN_7E5DAC;
	ubyte UNKNOWN_7E5DAE;

	@Offset(0x005DB4)
	ushort UNKNOWN_7E5DB4;
	ushort UNKNOWN_7E5DB6;
	ushort UNKNOWN_7E5DB8;
	ushort UNKNOWN_7E5DBA;
	ushort UNKNOWN_7E5DBC;
	ushort UNKNOWN_7E5DBE;
	ushort UNKNOWN_7E5DC0;
	ushort UNKNOWN_7E5DC2;
	ushort UNKNOWN_7E5DC4;
	ubyte UNKNOWN_7E5DC6;

	@Offset(0x005DCA)
	ushort UNKNOWN_7E5DCA;
	ushort UNKNOWN_7E5DCC;
	ushort UNKNOWN_7E5DCE;
	ushort UNKNOWN_7E5DD0;
	ushort UNKNOWN_7E5DD2;
	ushort UNKNOWN_7E5DD4;
	ushort UNKNOWN_7E5DD6;
	ushort UNKNOWN_7E5DD8;
	ushort UNKNOWN_7E5DDA;
	ushort UNKNOWN_7E5DDC;
	ushort UNKNOWN_7E5DDE;
	ubyte UNKNOWN_7E5DE0;

	@Offset(0x005DEA)
	ushort UNKNOWN_7E5DEA;
	uint UNKNOWN_7E5DEC;

	@Offset(0x005E02)
	ushort UNKNOWN_7E5E02;
	ushort UNKNOWN_7E5E04;
	uint[12] UNKNOWN_7E5E06;
	//An index for the preceding table?
	ushort UNKNOWN_7E5E36;
	uint UNKNOWN_7E5E38;

	@Offset(0x005E6C)
	ubyte UNKNOWN_7E5E6C;
	ubyte UNKNOWN_7E5E6D;
	ushort UNKNOWN_7E5E6E;
	ubyte UNKNOWN_7E5E70;
	ushort UNKNOWN_7E5E71;
	ushort UNKNOWN_7E5E73;
	ubyte UNKNOWN_7E5E75;
	ubyte UNKNOWN_7E5E76;
	ubyte UNKNOWN_7E5E77;
	ubyte UNKNOWN_7E5E78;
	ubyte UNKNOWN_7E5E79;
	ushort UNKNOWN_7E5E7A;
	ubyte UNKNOWN_7E5E7C;

	@Offset(0x007C42)
	ubyte[32] UNKNOWN_7E7C42;
	ubyte[32] UNKNOWN_7E7C62;
	ubyte UNKNOWN_7E7C82;

	@Offset(0x007F04)
	ubyte[6] UNKNOWN_7E7F04;
	ubyte[26] UNKNOWN_7E7F0A;
	ubyte[6] UNKNOWN_7E7F24;
	ubyte[11] UNKNOWN_7E7F2A;
	ubyte[5] UNKNOWN_7E7F35;
	ubyte[7] UNKNOWN_7E7F3A;
	ubyte[3] UNKNOWN_7E7F41;
	ubyte[2] UNKNOWN_7E7F44;
	ubyte[4] UNKNOWN_7E7F46;
	ubyte[21] UNKNOWN_7E7F4A;

	@Offset(0x008000)
	ubyte UNKNOWN_7E8000;

	@Offset(0x008650)
	WindowStats[8] WINDOW_STATS_TABLE;
	ushort UNKNOWN_7E88E0;
	ushort UNKNOWN_7E88E2;
	ubyte[116] WINDOW_EXISTENCE_TABLE;
	ushort CURRENT_FOCUS_WINDOW;
	ubyte UNKNOWN_7E895A;

	@Offset(0x00895F)
	ubyte UNKNOWN_7E895F;
	ubyte UNKNOWN_7E8960;

	@Offset(0x0089C9)
	ubyte UNKNOWN_7E89C9;
	ushort PSI_WINDOW_CHARACTER;
	ushort UNKNOWN_7E89CC;
	ushort UNKNOWN_7E89CE;
	ushort UNKNOWN_7E89D0;
	ushort UNKNOWN_7E89D2;
	Unknown89D4Entry[70] UNKNOWN_7E89D4;
	ubyte UNKNOWN_7E9622;
	ubyte UNKNOWN_7E9623;
	ubyte UNKNOWN_7E9624;
	ushort SELECTED_TEXT_SPEED;
	ushort UNKNOWN_7E9627;
	ushort UNKNOWN_7E9629;

	@Offset(0x009631)
	//Text pointers?
	uint[4] UNKNOWN_7E9631;
	ushort UNKNOWN_7E9641;
	ushort BATTLE_MODE_FLAG;
	ushort INPUT_LOCK_FLAG;
	ushort UNKNOWN_7E9647;
	ushort UNKNOWN_7E9649;
	ushort UNKNOWN_7E964B;
	ushort BLINKING_TRIANGLE_FLAG;
	ubyte UNKNOWN_7E964F;

	@Offset(0x009652)
	ushort UNKNOWN_7E9652;
	ubyte UNKNOWN_7E9654;

	@Offset(0x009658)
	ushort UNKNOWN_7E9658;
	ubyte UNKNOWN_7E965A;
	ubyte[5] UNKNOWN_7E965B;
	@Offset(0x009660)
	ushort UNKNOWN_7E9660;
	ushort UNKNOWN_7E9662;

	@Offset(0x009684)
	ushort UNKNOWN_7E9684;
	ushort UNKNOWN_7E9686;
	ushort UNKNOWN_7E9688;
	ushort UNKNOWN_7E968A;
	ubyte UNKNOWN_7E968C;
	uint UNKNOWN_7E968D;
	uint UNKNOWN_7E9691;
	ushort UNKNOWN_7E9695;
	ubyte UNKNOWN_7E9697;
	ushort UNKNOWN_7E9698;
	ushort[4] UNKNOWN_7E969A;
	ushort[4] UNKNOWN_7E96A2;
	ubyte UNKNOWN_7E96AA;
	ubyte[269] UNKNOWN_7E96AB;
	@Offset(0x0097B8)
	ushort UNKNOWN_7E97B8;
	ubyte CC_ARGUMENT_STORAGE;

	@Offset(0x0097CA)
	ushort CC_ARGUMENT_GATHERING_LOOP_COUNTER;
	ubyte[4] WRAM_SCRIPT_WORK_MEMORY;
	ubyte[4] WRAM_SCRIPT_ARG_MEMORY;
	ubyte[4] WRAM_SCRIPT_SEC_MEMORY;

	@Offset(0x0097D5)
	ubyte UNKNOWN_7E97D5;
	ubyte UNKNOWN_7E97D6;
	@Offset(0x0097D7)
	ubyte UNKNOWN_7E97D7;
	ubyte[3] UNKNOWN_7E97D8;
	ubyte UNKNOWN_7E97DA;
	GameState gameState;
	Character[6] partyMembers;
	ubyte[80] eventFlags;
	ubyte[852] k;
	Battler[30] battlers;
	ubyte[22320] raw2;
	//$7F0000
	ubyte[64] buf1;
	ubyte[48] buf2;
	ubyte[144] buf3;
	ubyte[256] buf4;
	ubyte[512] buf5;
	ubyte[240] buf6;
	ubyte[256] buf7;
	ubyte[16] buf8;
	ubyte[256] buf9;
	ubyte[256] buf10;
	ubyte[64] buf11;
	ubyte[192] buf12;
	ubyte[256] buf13;
	ubyte[512] buf14;
	ubyte[1024] buf15;
	ubyte[4096] buf16;
	ubyte[2560] buf17;
	ubyte[512] buf18;
	ubyte[1024] buf19;
	ubyte[512] buf20;
	ubyte[3584] buf21;
	ubyte[12288] buf22;
	ubyte[2048] buf23;
	ubyte[1024] buf24;
	ubyte[256] buf25;
	ubyte[256] buf27;
	ubyte[256] buf28;
	ubyte[256] buf29;
	ubyte[30720] buf30;
	ubyte[2048] tileCollisionBuffer;
}

//static assert(RAM.sizeof == 0x20000);
