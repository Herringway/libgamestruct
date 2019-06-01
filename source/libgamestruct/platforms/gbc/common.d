module libgamestruct.platforms.gbc.common;

mixin template GBCVerify(T, ulong size) {
	import std.format : format;
	import std.traits : getSymbolsByUDA, getUDAs;
	static foreach (field; getSymbolsByUDA!(T, Offset)) {
		static assert(field.offsetof == getUDAs!(field, Offset)[0].offset, format!"Bad offset for %s: %08X, expecting %08X - adjust previous field by 0x%X"(field.stringof, field.offsetof, getUDAs!(field, Offset)[0].offset, getUDAs!(field, Offset)[0].offset-field.offsetof));
	}
	static assert(T.sizeof == size, format!"Bad size for %s: 0x%08X != 0x%08X"(T.stringof, T.sizeof, size));
}

align(1) struct GBCHeader {
	align(1):
	ubyte[4] entryPoint;
	ubyte[48] nintendoLogo;
	char[11] gameTitle;
	char[4] gameID;
	ubyte cgbFlag;
	char[2] licenseeCode;
	ubyte sgbFlag;
	ubyte cartridgeType;
	ubyte romSize;
	ubyte ramSize;
	ubyte destination;
	ubyte oldLicenseeCode;
	ubyte maskROMVersion;
	ubyte headerChecksum;
	ushort globalChecksum;
}
