module libgamestruct.mmbn.mmbn3;

import libgamestruct.mmbn.common;

import std.algorithm;
import std.format;
import std.range;
import std.traits;

align(1) struct MMBN3 {
	align(1):
	enum extension = "gba";
	@Offset(0x08000000) GBAHeader gbaHeader;
	ubyte[0x7FFF40] unknownEnd;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
	}
	bool verify() const @safe {
		return gbaHeader.gameID == "A3XE" || gbaHeader.gameID == "A6BE";
	}
	string loadedGame() const @safe {
		switch (gbaHeader.gameID) {
			case "A3XE": return "Mega Man Battle Network 3 - Blue";
			case "A6BE": return "Mega Man Battle Network 3 - White";
			default: assert(0);
		}
	}
}
mixin GBAVerify!(MMBN3, 0x800000);
