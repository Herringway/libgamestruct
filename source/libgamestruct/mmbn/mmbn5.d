module libgamestruct.mmbn.mmbn5;

import libgamestruct.mmbn.common;

import std.algorithm;
import std.format;
import std.range;
import std.traits;

align(1) struct MMBN5 {
	align(1):
	enum extension = "gba";
	@Offset(0x08000000) GBAHeader gbaHeader;
	ubyte[0x7FFF40] unknownEnd;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
	}
	bool verify() const @safe {
		return gbaHeader.gameID == "BRKE" || gbaHeader.gameID == "BRBE";
	}
	string loadedGame() const @safe {
		switch (gbaHeader.gameID) {
			case "BRKE": return "Mega Man Battle Network 5 - Team Colonel";
			case "BRBE": return "Mega Man Battle Network 5 - Team Protoman";
			default: assert(0);
		}
	}
}
mixin GBAVerify!(MMBN5, 0x800000);
