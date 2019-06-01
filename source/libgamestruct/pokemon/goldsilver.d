module libgamestruct.pokemon.goldsilver;

import libgamestruct.common;
import libgamestruct.platforms.gbc;

import pixelatrix.color;

align(1) struct PokemonGS {
	enum extension = "gbc";
	align(1):
	@Offset(0) ubyte[0x100] unknown;
	@Offset(0x100) GBCHeader gbcHeader;
	ubyte[0xABF5] unknown2;
	@Offset(0xAD45) @Label("Pokemon Palettes") @Palette(false, true) BGR555[2][259*2] pokePalettes;
	@Offset(0xB55D) ubyte[0x201] unknownB55D;
	@Offset(0xB75E) @Label("Tile Palettes") @Palette(true, true) BGR555[4][42] bgPalettes;
	@Offset(0xB8AE) @Label("Object Palettes") @Palette(true, true) BGR555[4][32] objPalettes;
	@Offset(0xB9AE) @Label("Roof Palettes") @Palette(true, true) BGR555[4][27] roofPalettes;
	@Offset(0xBA86) @Palette(false, true) BGR555[4][8] unkPalettes;
	@Offset(0xBAC6) @Palette(false, true) BGR555[4][14] unkPalettes2;
	@Offset(0xBB36) @Palette(false, true) BGR555[4][5] unkPalettes3;
	@Offset(0xBB5E) @Palette(false, true) BGR555[4][2] unkPalettes4;
	@Offset(0xBB6E) @Palette(false, true) BGR555[4][6] unkPalettes5;
	@Offset(0xBB9E) @Palette(false, true) BGR555[4][4] unkPalettes6;
	@Offset(0xBBBE) @Palette(false, true) BGR555[4][16] unkPalettes7;
	@Offset(0xBC3E) ubyte[0x1A4F36] unknownBC3E;
	@Offset(0x1B0B74) @Label("Pokemon Names") @Name() PokemonGSString!10[251] pokemonNames;
	ubyte[0x4EABE] unknownEnd;
	bool verify() const @safe {
		return (gbcHeader.gameID == "AAXE") || (gbcHeader.gameID == "AAUE");
	}
	string loadedGame() const @safe {
		switch (gbcHeader.gameID) {
			case "AAUE": return "Pokemon Gold";
			case "AAXE": return "Pokemon Silver";
			default: assert(0);
		}
	}
}

mixin GBCVerify!(PokemonGS, 0x200000);

static immutable string[ubyte] basicTextTable;

alias PokemonGSChar = SimpleChar!basicTextTable;
alias PokemonGSString(size_t Len) = SimpleString!(basicTextTable, 0x50, Len);

shared static this() {
	basicTextTable = [
		0x4F:"=",
		0x57:"#",
		0x51:"*",
		0x52:"A1",
		0x53:"A2",
		0x54:"PK",
		0x55:"+",
		0x58:"$",
		0x7F:" ",
		0x80:"A",
		0x81:"B",
		0x82:"C",
		0x83:"D",
		0x84:"E",
		0x85:"F",
		0x86:"G",
		0x87:"H",
		0x88:"I",
		0x89:"J",
		0x8A:"K",
		0x8B:"L",
		0x8C:"M",
		0x8D:"N",
		0x8E:"O",
		0x8F:"P",
		0x90:"Q",
		0x91:"R",
		0x92:"S",
		0x93:"T",
		0x94:"U",
		0x95:"V",
		0x96:"W",
		0x97:"X",
		0x98:"Y",
		0x99:"Z",
		0x9C:":",
		0xA0:"a",
		0xA1:"b",
		0xA2:"c",
		0xA3:"d",
		0xA4:"e",
		0xA5:"f",
		0xA6:"g",
		0xA7:"h",
		0xA8:"i",
		0xA9:"j",
		0xAA:"k",
		0xAB:"l",
		0xAC:"m",
		0xAD:"n",
		0xAE:"o",
		0xAF:"p",
		0xB0:"q",
		0xB1:"r",
		0xB2:"s",
		0xB3:"t",
		0xB4:"u",
		0xB5:"v",
		0xB6:"w",
		0xB7:"x",
		0xB8:"y",
		0xB9:"z",
		0xBA:"‚",
		0xBC:"'l",
		0xBD:"'s",
		0xBE:"'t",
		0xBF:"'v",
		0xE0:"'",
		0xE1:"PK",
		0xE2:"MN",
		0xE3:"-",
		0xE4:"'r",
		0xE5:"'m",
		0xE6:"?",
		0xE7:"!",
		0xE8:".",
		0xF4:",",
		0xF6:"0",
		0xF7:"1",
		0xF8:"2",
		0xF9:"3",
		0xFA:"4",
		0xFB:"5",
		0xFC:"6",
		0xFD:"7",
		0xFE:"8",
		0xFF:"9",
	];
}
