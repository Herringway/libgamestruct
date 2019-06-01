module libgamestruct.mmbn.mmbn1;

import libgamestruct.mmbn.common;

import pixelatrix.color;

import std.algorithm;
import std.format;
import std.range;
import std.traits;

align(1) struct MMBN1 {
	align(1):
	enum extension = "gba";
	@Offset(0x08000000) GBAHeader gbaHeader;
	@Offset(0x080000C0) ubyte[0x7CB0] unknown;
	@Offset(0x08007D70) BattleChip[202] battleChips;
	@Offset(0x08009388) ubyte[0xA4C] unknown2;
	@Offset(0x08009DD4) Enemy[161] enemies;
	//@Offset(0x08009388) ubyte[0xA4C] unknown2;
	@Offset(0x0800B1F4) EnemyPlacementEntry[127] bossPlacementEntries;
	@Offset(0x0800B3F0) uint[16] unknownPointers;
	@Offset(0x0800B430) EnemyPlacementData!52 virusPlacementEntries;
	@Offset(0x0800B580) EnemyPlacementData!53 virusPlacementEntries2;
	@Offset(0x0800B6D4) EnemyPlacementData!53 virusPlacementEntries3;
	@Offset(0x0800B828) EnemyPlacementData!55 virusPlacementEntries4;
	@Offset(0x0800B984) EnemyPlacementData!55 virusPlacementEntries5;
	@Offset(0x0800BAE0) uint[2] unknownPointers2;
	@Offset(0x0800BAE8) EnemyPlacementData!54 virusPlacementEntries6;
	@Offset(0x0800BC40) EnemyPlacementData!61 virusPlacementEntries7;
	@Offset(0x0800BDB4) uint[6] unknownPointers3;
	@Offset(0x0800BDCC) EnemyPlacementData!50 virusPlacementEntries8;
	@Offset(0x0800BF14) EnemyPlacementData!50 virusPlacementEntries9;
	@Offset(0x0800C05C) EnemyPlacementData!50 virusPlacementEntries10;
	@Offset(0x0800C1A4) EnemyPlacementData!50 virusPlacementEntries11;
	@Offset(0x0800C2EC) EnemyPlacementData!52 virusPlacementEntries12;
	@Offset(0x0800C43C) EnemyPlacementData!52 virusPlacementEntries13;
	@Offset(0x0800C58C) uint[3901] unclassifiedEnemyEncounterData;
	@Offset(0x08010280) ubyte[0x6C5A8] unknown2_;
	@Offset(0x0807C828) ProgramAdvance!3[41] threeChipProgramAdvances;
	uint programAdvanceDivider1;
	@Offset(0x0807C974) ProgramAdvance!4[7] fourChipProgramAdvances;
	ushort programAdvanceDivider2;
	@Offset(0x0807C9BC) ProgramAdvance!5[34] fiveChipProgramAdvances;
	ubyte[0x875C] unknown2__;
	@Offset(0x080852B0) BattleSettings[0x2E] battleConfigs;
	@Offset(0x080857B8) ubyte[0x15B708] unknown3_;
	@Offset(0x081E0EC0) GBATile!4[1578] graphics1;
	@Offset(0x081ED400) ubyte[0x44B234] unknown3;
	@Offset(0x08638634) GBATile!4[2*2][240] miniChipGraphics;
	@Offset(0x0863FE34) GBATile!4[249] miscBattleGraphics;
	@Offset(0x08641D54) ubyte[0x28C] unknown3_____;
	@Offset(0x08641FE0) TextData!(0x8AC) textData;
	//ubyte[0x89B] unknown3_________;
	@Offset(0x0864288C) GBATile!4[115] moreMiscBattleGraphics;
	@Offset(0x086436EC) ubyte[0x4B0] unknown3______;
	@Offset(0x08643B9C) GBATile!4[139] evenMoreMiscBattleGraphics;
	@Offset(0x08644CFC) ubyte[0x4B0] unknown3_______;
	@Offset(0x086451AC) GBATile!4[135] stillMoreMiscBattleGraphics;
	@Offset(0x0864628C) ubyte[0x4F0] unknown3________;
	@Offset(0x0864677C) GBATile!4[96] lastMiscBattleGraphics;
	@Offset(0x0864737C) GBATile!4[56] zennyRewardGraphics;
	@Offset(0x08647A7C) ubyte[0x80] unknown3__;
	@Offset(0x08647AFC) GBATile!4[7*8][181] chipGraphics;
	@Offset(0x08696DFC) @Label("Battlechip Palettes") @Palette(false) BGR555[16][176] battleChipPalettes;
	@Offset(0x086983FC) ubyte[0x8A52F] unknown3___;
	@Offset(0x0872292B) GMDDropSet gmdTable;
	ubyte[0x108E] unknown4;
	@Offset(0x08723A56) GMDDropSet gmdTable2;
	ubyte[0xC14] unknown5;
	@Offset(0x08724707) GMDDropSet gmdTable3;
	ubyte[0x877] unknown6;
	@Offset(0x0872501B) GMDDropSet gmdTable4;
	ubyte[0x76E] unknown7;
	@Offset(0x08725826) GMDDropSet gmdTable5;
	ubyte[0x3D8] unknown8;
	@Offset(0x08725C9B) GMDDropSet gmdTable6;
	ubyte[0x3D6] unknown9;
	@Offset(0x0872610E) GMDDropSet gmdTable7;
	ubyte[0x2C4] unknown10;
	@Offset(0x0872646F) GMDDropSet gmdTable8;
	ubyte[0x492] unknown11;
	@Offset(0x0872699E) GMDDropSet gmdTable9;
	ubyte[0x7A4] unknown12;
	@Offset(0x087271DF) GMDDropSet gmdTable10;
	ubyte[0x4FB] unknown13;
	@Offset(0x08727777) GMDDropSet gmdTable11;
	ubyte[0x3BF] unknown14;
	@Offset(0x08727BD3) GMDDropSet gmdTable12;
	ubyte[0x45E] unknown15;
	@Offset(0x087280CE) GMDDropSet gmdTable13;
	ubyte[0x60F] unknown16;
	@Offset(0x0872877A) GMDDropSet gmdTable14;
	ubyte[0x56A] unknown17;
	@Offset(0x08728D81) GMDDropSet gmdTable15;
	ubyte[0x436] unknown18;
	@Offset(0x08729254) GMDDropSet gmdTable16;
	ubyte[0x56903] unknownLate;
	@Offset(0x0877FBF4) @Palette(true) BGR555[16][34] backgroundPalettes;
	ubyte[0x7FFCC] unknownFinal;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"%s\n"(gbaHeader);
		foreach (name, data; lockstep(battleChipNames, battleChips[])) {
			sink.formattedWrite!"% 8s %s\n"(name, data);
		}
		sink.formattedWrite!"%(%s\n%)\n\n"(bossPlacementEntries[].split!(x => x.isEmpty).filter!(x => !x.empty));
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries2);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries3);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries4);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries5);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries6);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries7);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries8);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries9);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries10);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries11);
		sink.formattedWrite!"%s\n\n"(virusPlacementEntries12);
		sink.formattedWrite!"%s\n"(virusPlacementEntries13);
		sink.formattedWrite!"%(%s\n%)\n"(battleConfigs[]);
		sink.formattedWrite!"%(%s\n%)\n"(threeChipProgramAdvances[]);
		sink.formattedWrite!"%(%s\n%)\n"(fourChipProgramAdvances[]);
		sink.formattedWrite!"%(%s\n%)\n"(fiveChipProgramAdvances[]);
		foreach (name, data; lockstep(enemyNames, enemies[])) {
			sink.formattedWrite!"% 20s: %s\n"(name, data);
		}
		sink.formattedWrite!"%s\n"(textData);
	}
	bool verify() const @safe {
		return gbaHeader.gameID == "AREE";
	}
	string loadedGame() const @safe {
		return "Mega Man Battle Network";
	}
}
mixin GBAVerify!(MMBN1, 0x800000);

unittest {
	import std.outbuffer;
	(new MMBN1).toString(new OutBuffer);
}

align(1) struct BattleChip {
	align(1):
	ubyte[5] chipCodes;
	Element element;
	ubyte chipFamily;
	ubyte chipSubFamily;
	ubyte rarity;
	ubyte libraryID;
	ushort alphabeticalOrderID;
	ubyte power;
	ubyte[3] unknown2;
	uint miniTilePointer;
	uint fullGraphicPointer;
	uint palettePointer;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"[% 5s] Element: % 8s, Power: % 4s [%(%02X %)]"(chipCodes[].filter!(x => x != 255).map!(x => cast(char)(x+'A')), element, power, unknown2);
	}
}

unittest {
	import std.outbuffer;
	BattleChip().toString(new OutBuffer);
}

align(1) struct Enemy {
	align(1):
	ushort hp;
	Element element;
	ubyte[9] unknown;
	BattleReward[10] battleRewards;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"% 5s HP (% 8s) [%(%02X %)] Rewards: %(%s, %)"(hp, element, unknown[], battleRewards);
	}
}

unittest {
	import std.outbuffer;
	Enemy().toString(new OutBuffer);
}

align(1) struct GMDDropSet {
	align(1):
	BattleChipWithCode[16] battleChips;
	ubyte[0x3D] unknown;
	uint[16] zennyAmounts;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"%(%s, %), %(%sZ%|, %)"(battleChips[], zennyAmounts[]);
	}
}
align(1) struct BattleChipWithCode {
	align(1):
	ubyte chipID;
	ubyte chipCode;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"%s %s"(battleChipNames[chipID], cast(char)(chipCode+'A'));
	}
}
unittest {
	import std.outbuffer;
	BattleChipWithCode().toString(new OutBuffer);
}

align(1) struct BattleReward {
	align(1):
	ubyte chipID;
	ubyte chipCode;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		if ((chipCode&0x80) != 0) {
			sink.formattedWrite!"%s Zenny"(((chipCode&0x7F)<<8)+chipID);
		} else {
			sink.formattedWrite!"%s %s"(battleChipNames[chipID], cast(char)(chipCode+'A'));
		}
	}
}
align(1) struct ProgramAdvance(size_t num) {
	align(1):
	BattleChipWithCode[num] chips;
	ushort result;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"%s: %(%s, %)"(result, chips[]);
	}
}

align(1) struct EnemyPlacementData(size_t entries) {
	uint[32] pointers;
	EnemyPlacementEntry[entries] enemyPlacementEntries;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"%(%s\n%)"(enemyPlacementEntries[].split!(x => x.isEmpty).filter!(x => !x.empty));
	}
}

align(1) struct EnemyPlacementEntry {
	align(1):
	ubyte enemyID;
	ubyte xPos;
	ubyte yPos;
	ubyte unknown;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		if (isEmpty) {
			sink.formattedWrite!"Nothing"();
		} else {
			sink.formattedWrite!"%s (%s, %s)"(enemyID > enemyNames.length ? format!"Enemy %s"(enemyID) : enemyNames[enemyID], xPos, yPos);
		}
	}
	bool isEmpty() const @safe {
		return enemyID == 0xFF;
	}
}
unittest {
	import std.outbuffer;
	EnemyPlacementEntry().toString(new OutBuffer);
}
align(1) struct BattleSettings {
	align(1):
		uint ObjectSetupPointer;
		uint FolderPointer;
		ubyte BackgroundID;
		ubyte BattleMode;
		ubyte FolderOrder;
		ubyte[17] unknown;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"%08X % 15s % 18s % 9s [%(%02X %)]"(FolderPointer, BGNames[BackgroundID], BattleModes[BattleMode], FolderOrder == 1 ? "Randomized" : "Ordered", unknown);
	}
}
unittest {
	import std.outbuffer;
	BattleSettings().toString(new OutBuffer);
}

align(1) struct TextData(size_t num) {
	align(1):
	ubyte[num] textData;
	auto stringRange() const @safe {
		static struct Result {
			ubyte[num] data;
			size_t offset;
			size_t strEnd;
			bool empty() const @safe {
				return offset >= num;
			}
			void popFront() @safe {
				offset = strEnd;
				while (strEnd < num) {
					switch (data[strEnd]) {
						case 0xE5: strEnd += 1; break;
						case 0xE7: strEnd += 2; break;
						case 0xE9: strEnd += 2; break;
						case 0xEA: strEnd += 3; break;
						case 0xEC: strEnd += 1; break;
						case 0xED:
							switch (data[strEnd+1]) {
								case 0x00: strEnd += 3; break;
								case 0x01: strEnd += 1; break;
								case 0x02: strEnd += 2; break;
								default: assert(0);
							}
							break;
						case 0xEE: strEnd += 1; break;
						case 0xEF: strEnd += 2; break;
						case 0xF0: strEnd += 2; break;
						case 0xF1: strEnd += data[strEnd+1]; break;
						case 0xF2: strEnd += 1; break;
						case 0xF3: strEnd += 3; break;
						case 0xF4:
							switch (data[strEnd+1]) {
								case 0x00: strEnd += 5; break;
								case 0x04: strEnd += 5; break;
								case 0x08: strEnd += 4; break;
								case 0x10: strEnd += 5; break;
								case 0x14: strEnd += 5; break;
								case 0x18: strEnd += 5; break;
								default: assert(0);
							}
							break;
						case 0xF5: strEnd += 1; break;
						case 0xF6: strEnd += 1 + data[strEnd+1]*2; break;
						case 0xF7:
							switch (data[strEnd+1]) {
								case 0x00: strEnd += 6; break;
								case 0x01: strEnd += 6; break;
								case 0x02: strEnd += 3; break;
								case 0x03: strEnd += 6; break;
								case 0x10: strEnd += 7; break;
								case 0x11: strEnd += 7; break;
								case 0x12: strEnd += 4; break;
								case 0x14: strEnd += 7; break;
								case 0x15: strEnd += 7; break;
								default: assert(0);
							}
							break;
						case 0xF8:
							switch (data[strEnd+1]) {
								case 0x00: strEnd += 3; break;
								case 0x04: strEnd += 5; break;
								case 0x08: strEnd += 8; break;
								case 0x0C: strEnd += 1; break;
								case 0x10: strEnd += 5; break;
								default: assert(0);
							}
							break;
						case 0xF9: strEnd += 1; break;
						case 0xFA:
							switch (data[strEnd+1]) {
								case 0x00: strEnd += 1; break;
								case 0x04: strEnd += 2; break;
								case 0x08: strEnd += 1; break;
								case 0x0C: strEnd += 1; break;
								case 0x10: strEnd += 1; break;
								default: /*assert(0);*/ break;
							}
							break;
						case 0xFB:
							switch (data[strEnd+1]) {
								case 0x00: strEnd += 3; break;
								case 0x04: strEnd += 3; break;
								case 0x08: strEnd += 5; break;
								case 0x0C: strEnd += 3; break;
								case 0x10: strEnd += 3; break;
								default: assert(0);
							}
							break;
						case 0xFC:
							switch (data[strEnd+1]) {
								case 0x00: strEnd += 3; break;
								case 0x04: strEnd += 3; break;
								case 0x08: strEnd += 1; break;
								case 0x0C: strEnd += 1; break;
								case 0x10: strEnd += 1; break;
								case 0x14: strEnd += 3; break;
								default: assert(0);
							}
							break;
						case 0xFD:
							switch (data[strEnd+1]) {
								case 0x00: strEnd += 9 + data[strEnd+2] * 4; break;
								case 0x04: strEnd += 7 + data[strEnd+2] * 2; break;
								case 0x08: strEnd += 1; break;
								case 0x0C: strEnd += 2; break;
								case 0x10: strEnd += 8; break;
								case 0x14: strEnd += 3; break;
								case 0x18: strEnd += 1; break;
								default: assert(0);
							}
							break;
						case 0xFE: strEnd += 2; break;
						case 0xFF: strEnd += 1; return;
						default: break;
					}
					strEnd++;
				}
			}
			auto front() @safe const {
				if (__ctfe) {
					return "";
				}
				string result;
				auto buf = data[offset..strEnd];
				while (buf.length > 0) {
					switch (buf[0]) {
						case 0xE5:
							if (buf[1] in textTableE5) {
								result ~= textTableE5[buf[1]];
							}
							buf = buf[2..$];
							break;
						case 0xE7:
							result ~= format!"[DELAYEND %04X]"((buf[1]<<8)+buf[2]);
							buf = buf[3..$];
							break;
						case 0xE8:
							result ~= "\n";
							buf = buf[1..$];
							break;
						case 0xE9:
							result ~= format!"[DELAYCLEARMSG %04X]"((buf[1]<<8)+buf[2]);
							buf = buf[3..$];
							break;
						case 0xEB:
							result ~= "[PAUSE]";
							buf = buf[1..$];
							break;
						case 0xED:
							switch (buf[1]) {
								case 0x00:
									result ~= format!"[MUGSHOTSHOW %02X %02X]"(buf[2], buf[3]);
									buf = buf[4..$];
									break;
								case 0x01:
									result ~= "[MUGSHOTHIDE]";
									buf = buf[2..$];
									break;
								case 0x02:
									result ~= format!"[MUGSHOTPALETTE %02X]"(buf[2]);
									buf = buf[3..$];
									break;
								default:
									result ~= format!"[ED %02X %02X]"(buf[1], buf[2]);
									buf = buf[3..$];
									break;
							}
							break;
						case 0xEE:
							result ~= format!"[MUGSHOTANIM %02X]"(buf[1]);
							buf = buf[2..$];
							break;
						case 0xEF:
							switch (buf[1]) {
								case 0x00:
									result ~= format!"[SPACERIGHT %02X]"(buf[2]);
									break;
								case 0x01:
									result ~= format!"[SPACELEFT %02X]"(buf[2]);
									break;
								default:
									result ~= format!"[EF %02X %02X]"(buf[1], buf[2]);
									break;
							}
							buf = buf[3..$];
							break;
						case 0xF2:
							switch (buf[1]) {
								case 0x00:
									result ~= "[MSGOPEN]";
									break;
								case 0x01:
									result ~= "[MSGCLOSE]";
									break;
								case 0x02:
									result ~= "[MSGOPENQUICK]";
									break;
								case 0x03:
									result ~= "[MSGCLOSEQUICK]";
									break;
								default: assert(0);
							}
							buf = buf[2..$];
							break;
						case 0xF3:
							switch (buf[1]) {
								case 0x00:
									result ~= format!"[SETFLAG %04X]"((buf[2]<<8) + buf[3]);
									break;
								case 0x04:
									result ~= format!"[CLEARFLAG %04X]"((buf[2]<<8) + buf[3]);
									break;
								case 0x02:
									result ~= format!"[SETMAILFLAG %04X]"((buf[2]<<8) + buf[3]);
									break;
								default: assert(0);
							}
							buf = buf[4..$];
							break;
						case 0xFE:
							result ~= format!"[SAVE %02X %02X]"(buf[1], buf[2]);
							buf = buf[3..$];
							break;
						case 0xFF:
							result ~= "[RETURN]";
							buf = buf[1..$];
							break;
						default:
							if (buf[0] in textTable) {
								result ~= textTable[buf[0]];
							} else {
								result ~= format!"[%02X]"(buf[0]);
							}
							buf = buf[1..$];
							break;
					}
				}
				return result;
			}
		}
		auto result = Result(textData);
		result.popFront();
		return result;
	}
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"%-(%s\n%)"(stringRange);
	}
}
unittest {
	import std.outbuffer;
	TextData!1().toString(new OutBuffer);
}

static string[] BGNames = [
"NumberMan",
"FireMan",
"IceMan",
"ColorMan",
"ElecMan",
"WWW Stage",
"Internet",
"Generic",
"Lan's HP",
"Mayl's HP",
"Yai's HP",
"Dex's HP",
"Dr. Hikari's HP",
"Sal's HP",
"Miyu's HP",
"Masa's HP",
"Life Virus"
];
static string[] enemyNames = [
"Megaman",
"Mettaur 1",
"Mettaur 2",
"Mettaur 3",
"Cannondumb 1",
"Cannondumb 2",
"Cannondumb 3",
"Vulgear",
"Vatgear",
"Vulgear (copy)",
"Spooky 1",
"Spooky 2",
"Spooky 3",
"Beetank 1",
"Beetank 2",
"Beetank 3",
"Handy 1",
"Handy 2",
"Handy 3",
"Flappy 1",
"Flappy 2",
"Flappy 3",
"Floshell 1",
"Floshell 2",
"Floshell 3",
"HardHead 1",
"HardHead 2",
"HardHead 3",
"Swordy 1",
"Swordy 2",
"Swordy 3",
"Fishy 1",
"Fishy 2",
"Fishy 3",
"Piranha 1",
"Piranha 2",
"Piranha 3",
"Aqua Puffy",
"Heat Puffy",
"White Dot",
"ColdBear",
"ColdBear 2",
"ColdBear 3",
"Cloudy 1",
"Cloudy 2",
"Cloudy 3",
"Ratty 1",
"Ratty 2",
"Ratty 3",
"Miney 1",
"Miney 2",
"Miney 3",
"Ammonicule 1",
"Ammonicule 2",
"Ammonicule 3",
"Jelly",
"HeatJelly",
"EarthJelly",
"Gaia 1",
"Gaia 2",
"Gaia 3",
"Popper 1",
"Popper 2",
"Popper 3",
"Satella 1",
"Satella 2",
"Satalla 3",
"Fanner 1",
"Fanner 2",
"Fanner 3",
"Remobit 1",
"Remobit 2",
"Remobit 3",
"Billy",
"Silly",
"Killy",
"Prog 1",
"Prog 2",
"Prog 3",
"Megalian A",
"Megalian H",
"Megalian W",
"CanDevil 1",
"CanDevil 2",
"CanDevil 3",
"BigSnake 1",
"BigSnake 2",
"BigSnake 3",
"Mosqurito 1",
"Mosqurito 2",
"Mosqurito 3",
"Poitton 1",
"Poitton 2",
"Poitton 3",
"Mole",
"White Dot 2",
"GutsMan V1",
"GutsMan V2",
"GutsMan V3",
"ProtoMan V1",
"ProtoMan V2",
"ProtoMan V3",
"WoodMan V1",
"WoodMan V2",
"WoodMan V3",
"FireMan V1",
"FireMan V2",
"FireMan V3",
"NumberMan V1",
"NumberMan V2",
"NumberMan V3",
"StoneMan V1",
"StoneMan V2",
"StoneMan V3",
"IceMan V1",
"IceMan V2",
"IceMan V3",
"SkullMan V1",
"SkullMan V2",
"SkullMan V3",
"ColorMan V1",
"ColorMan V2",
"ColorMan V3",
"BombMan V1",
"BombMan V2",
"BombMan V3",
"SharkMan V1",
"SharkMan V2",
"SharkMan V3",
"ElecMan V1",
"ElecMan V2",
"ElecMan V3",
"PharaohMan V1",
"PharaohMan V2",
"PharaohMan V3",
"ShadowMan V1",
"ShadowMan V2",
"ShadowMan V3",
"White Dot 3",
"White Dot 4",
"White Dot 5",
"MagicMan V1",
"MagicMan V2",
"MagicMan V3",
"Bass",
"White Dot 6",
"White Dot 7",
"Life Virus",
"Blue Color Dummy V1",
"Red Color Dummy V1",
"Blue Color Dummy V2",
"Red Color Dummy V2",
"Blue Color Dummy V3",
"Red Color Dummy V3",
"Invincible ElecMan",
"SharkMan Fin V1",
"SharkMan Fin V1 (2)",
"SharkMan Fin V2",
"SharkMan Fin V2 (2)",
"SharkMan Fin V3",
"SharkMan Fin V3 (2)"
];
static string[] BattleModes = [
"Normal",
"Tutorial1",
"Tutorial2",
"Normal, No Results",
"Tutorial3",
"Invincible ElecMan",
"Life Virus",
"Boss",
"Save Game"
];

static string[] battleChipNames = [
"",
"Cannon",
"HiCannon",
"M-Cannon",
"Sword",
"WideSwrd",
"LongSwrd",
"LilBomb",
"CrosBomb",
"BigBomb",
"Spreader",
"Bubbler",
"Heater",
"MiniBomb",
"Shotgun",
"CrossGun",
"ShokWave",
"SoniWave",
"DynaWave",
"FireTowr",
"AquaTowr",
"WoodTowr",
"Quake1",
"Quake2",
"Quake3",
"FireSwrd",
"ElecSwrd",
"AquaSwrd",
"GutsPnch",
"IcePunch",
"FtrSword",
"Dash",
"KngtSwrd",
"HeroSwrd",
"MetGuard",
"",
"",
"TriArrow",
"TriSpear",
"TriLance",
"Typhoon",
"Huricane",
"Cyclone",
"Howitzer",
"Thunder1",
"Thunder2",
"Thunder3",
"",
"",
"Snakegg1",
"Snakegg2",
"Snakegg3",
"Hammer",
"",
"",
"BodyBurn",
"",
"",
"Ratton1",
"Ratton2",
"Ratton3",
"Lockon1",
"Lockon2",
"Lockon3",
"X-Panel1",
"X-Panel3",
"",
"Recov10",
"Recov30",
"Recov50",
"Recov80",
"Recov120",
"Recov150",
"Recov200",
"Recov300",
"",
"Steal",
"",
"",
"Geddon1",
"Geddon2",
"",
"Escape",
"Interupt",
"LifeAura",
"AquaAura",
"FireAura",
"WoodAura",
"Repair",
"",
"",
"Cloud",
"Cloudier",
"Cloudest",
"IceCube",
"RockCube",
"",
"TimeBom1",
"TimeBom2",
"TimeBom3",
"Invis1",
"Invis2",
"Invis3",
"IronBody",
"",
"Remobit1",
"Remobit2",
"Remobit3",
"BstrGard",
"BstrBomb",
"BstrSwrd",
"BstrPnch",
"RingZap1",
"RingZap2",
"RingZap3",
"Candle1",
"Candle2",
"Candle3",
"SloGauge",
"FstGauge",
"",
"Drain1",
"Drain2",
"Drain3",
"Mine1",
"Mine2",
"Mine3",
"Gaia1",
"Gaia2",
"Gaia3",
"BblWrap1",
"BblWrap2",
"BblWrap3",
"Wave",
"RedWave",
"BigWave",
"Muramasa",
"Dropdown",
"Popup",
"Dynamyt1",
"Dynamyt2",
"Dynamyt3",
"Anubis",
"",
"",
"IronShld",
"LeafShld",
"Barrier",
"PharoMan",
"PharoMn2",
"PharoMn3",
"ShadoMan",
"ShadoMn2",
"ShadoMn3",
"",
"",
"",
"MagicMan",
"MagicMn2",
"MagicMn3",
"Roll",
"Roll2",
"Roll3",
"GutsMan",
"GutsMan2",
"GutsMan3",
"ProtoMan",
"ProtoMn2",
"ProtoMn3",
"WoodMan",
"WoodMan2",
"WoodMan3",
"FireMan",
"FireMan2",
"FireMan3",
"NumbrMan",
"NumbrMn2",
"NumbrMn3",
"StoneMan",
"StoneMn2",
"StoneMn3",
"IceMan",
"IceMan2",
"IceMan3",
"SkullMan",
"SkullMn2",
"SkullMn3",
"ColorMan",
"ColorMn2",
"ColorMn3",
"BombMan",
"BombMan2",
"BombMan3",
"SharkMan",
"SharkMn2",
"SharkMn3",
"ElecMan",
"ElecMan2",
"ElecMan3",
"Bass",
"",
""
];

enum Element : ubyte {
	neutral,
	electric,
	fire,
	aqua,
	wood
}
string[ubyte] textTable;
string[ubyte] textTableE5;
static this() {
	textTable = [
		0x00: " ",
		0x01: "0",
		0x02: "1",
		0x03: "2",
		0x04: "3",
		0x05: "4",
		0x06: "5",
		0x07: "6",
		0x08: "7",
		0x09: "8",
		0x0A: "9",
		0x0B: "[Lv.]",
		0x0C: "[11]",
		0x5E: "-",
		0x5F: "A",
		0x60: "B",
		0x61: "C",
		0x62: "D",
		0x63: "E",
		0x64: "F",
		0x65: "G",
		0x66: "H",
		0x67: "I",
		0x68: "J",
		0x69: "K",
		0x6A: "L",
		0x6B: "M",
		0x6C: "N",
		0x6D: "O",
		0x6E: "P",
		0x6F: "Q",
		0x70: "R",
		0x71: "S",
		0x72: "T",
		0x73: "U",
		0x74: "V",
		0x75: "W",
		0x76: "X",
		0x77: "Y",
		0x78: "Z",
		0x79: "a",
		0x7A: "b",
		0x7B: "c",
		0x7C: "d",
		0x7D: "e",
		0x7E: "f",
		0x7F: "g",
		0x80: "h",
		0x81: "i",
		0x82: "j",
		0x83: "k",
		0x84: "l",
		0x85: "m",
		0x86: "n",
		0x87: "o",
		0x88: "p",
		0x89: "q",
		0x8A: "r",
		0x8B: "s",
		0x8C: "t",
		0x8D: "u",
		0x8E: "v",
		0x8F: "w",
		0x90: "x",
		0x91: "y",
		0x92: "z",
		0x93: "[.]",
		0x94: "[×]",
		0x95: "[=]",
		0x96: "[:]",
		0xE8: "\n"
	];
	textTableE5 = [
		0x00: "!",
		0x01: "‼",
		0x02: "?",
		0x03: "“",
		0x04: "„",
		0x05: "#",
		0x06: "♭",
		0x07: "$",
		0x08: "%",
		0x09: "&",
		0x0A: "'",
		0x0B: "(",
		0x0C: ")",
		0x0D: "~",
		0x0E: "^",
		0x0F: "\"",
		0x10: "∧",
		0x11: "∨",
		0x12: "<",
		0x13: ">",
		0x14: ",",
		0x15: "。",
		0x16: ".",
		0x17: "・",
		0x18: "/",
		0x19: "\\",
		0x1A: "_",
		0x1B: "「",
		0x1C: "」",
		0x1D: "[",
		0x1E: "]",
		0x1F: "[bracket1]",
		0x20: "[bracket2]",
		0x21: "⊂",
		0x22: "⊃",
		0x23: "∩",
		0x24: "[raindrop]",
		0x25: "↑",
		0x26: "→",
		0x27: "↓",
		0x28: "←",
		0x29: "∀",
		0x2A: "α",
		0x2B: "β",
		0x2C: "@",
		0x2D: "★",
		0x2E: "♥",
		0x2F: "♪",
		0x30: "℃",
		0x31: "♂",
		0x32: "♀",
		0x33: "＿",
		0x34: "｜",
		0x35: "￣",
		0x36: ":",
		0x37: ";",
		0x38: "…",
		0x39: "¥",
		0x3A: "+",
		0x3B: "×",
		0x3C: "÷",
		0x3D: "=",
		0x3E: "※",
		0x3F: "*",
		0x40: "○",
		0x41: "●",
		0x42: "◎",
		0x43: "□",
		0x44: "■",
		0x45: "◇",
		0x46: "◆",
		0x47: "△",
		0x48: "▲",
		0x49: "▽",
		0x4A: "▼",
		0x4B: "▶",
		0x4C: "◀",
		0x4D: "☛",
		0xAB: "¼",
		0xAC: "[infinity1]",
		0xAD: "[infinity2]"
	];
}