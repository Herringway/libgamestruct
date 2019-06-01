module libgamestruct.mmbn.mmbn6;

import libgamestruct.mmbn.common;

import std.algorithm;
import std.format;
import std.range;
import std.traits;

align(1) struct MMBN6 {
	align(1):
	enum extension = "gba";
	@Offset(0x08000000) GBAHeader gbaHeader;
	ubyte[0x7FFF40] unknownEnd;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
	}
	bool verify() const @safe {
		return gbaHeader.gameID == "BR6E" || gbaHeader.gameID == "BR5E";
	}
	string loadedGame() const @safe {
		switch (gbaHeader.gameID) {
			case "BR6E": return "Mega Man Battle Network 6 - Cybeast Falzar";
			case "BR5E": return "Mega Man Battle Network 6 - Cybeast Gregar";
			default: assert(0);
		}
	}
}
mixin GBAVerify!(MMBN6, 0x800000);
