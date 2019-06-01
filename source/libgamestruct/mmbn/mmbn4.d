module libgamestruct.mmbn.mmbn4;

import libgamestruct.mmbn.common;

import std.algorithm;
import std.format;
import std.range;
import std.traits;

align(1) struct MMBN4 {
	align(1):
	enum extension = "gba";
	@Offset(0x08000000) GBAHeader gbaHeader;
	ubyte[0x7FFF40] unknownEnd;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
	}
	bool verify() const @safe {
		return gbaHeader.gameID == "B4WE" || gbaHeader.gameID == "B4BE";
	}
	string loadedGame() const @safe {
		switch (gbaHeader.gameID) {
			case "B4WE": return "Mega Man Battle Network 4 - Red Sun";
			case "B4BE": return "Mega Man Battle Network 4 - Blue Moon";
			default: assert(0);
		}
	}
}
mixin GBAVerify!(MMBN4, 0x800000);
