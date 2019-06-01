module libgamestruct.platforms.gba.common;

import std.range;

align(1) struct GBAHeader {
	align(1):
		uint firstInstruction;
		ubyte[0x9C] logo;
		char[12] gameName;
		char[4] gameID;
		ushort makerID;
		ubyte unknownHeaderByte;
		ubyte unitCode;
		ubyte deviceType;
		ubyte[7] reserved;
		ubyte version_;
		ubyte checksum;
		ubyte[2] reserved2;
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		import std.format : formattedWrite;
		sink.formattedWrite!"%s/%s"(gameID, gameName);
	}
}

unittest {
	import std.outbuffer;
	GBAHeader().toString(new OutBuffer);
}

mixin template GBAVerify(T, size_t size) {
	import std.format : format;
	import std.traits : getSymbolsByUDA, getUDAs;
	static foreach (field; getSymbolsByUDA!(T, Offset)) {
		static assert(field.offsetof == getUDAs!(field, Offset)[0].offset-0x08000000, format!"Bad offset for %s: %08X, expecting %08X - adjust previous field by 0x%X"(field.stringof, field.offsetof, getUDAs!(field, Offset)[0].offset-0x08000000, getUDAs!(field, Offset)[0].offset-0x08000000-field.offsetof));
	}
	static assert(T.sizeof == size, format!"Bad size for %s: 0x%08X != 0x%08X"(T.stringof, T.sizeof, size));
}

align(1) struct GBATile(size_t bpp = 4) {
	align(1):
	ubyte[(8 * 8 * bpp) / 8] raw;
}
