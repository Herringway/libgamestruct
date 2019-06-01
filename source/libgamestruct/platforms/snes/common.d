module libgamestruct.platforms.snes.common;

mixin template SNESVerify(T, size_t size) {
	import std.format : format;
	import std.traits : getSymbolsByUDA, getUDAs;
	static foreach (field; getSymbolsByUDA!(T, Offset)) {
		static assert(field.offsetof == getUDAs!(field, Offset)[0].offset, format!"Bad offset for %s: %08X, expecting %08X - adjust previous field by 0x%X"(field.stringof, field.offsetof, getUDAs!(field, Offset)[0].offset, getUDAs!(field, Offset)[0].offset-field.offsetof));
	}
	static assert(T.sizeof == size, format!"Bad size for %s: 0x%08X != 0x%08X"(T.stringof, T.sizeof, size));
}

align(1) struct SNESHeader {
	align(1):
		ubyte[2] makerID;
		char[4] gameID;
		ubyte[7] reserved;
		ubyte expansionRAMSize;
		ubyte specialVersion;
		ubyte cartridgeType;
		char[21] internalName;
		ubyte mapMode;
		ubyte romType;
		ubyte romSize;
		ubyte sramSize;
		ubyte destinationCode;
		ubyte unknownVal;
		ubyte versionID;
		ushort checksumComplement;
		ushort checksum;
		CPUVector nativeModeVectors;
		CPUVector emulationModeVectors;
}
align(1) struct CPUVector {
	align(1):
		ushort unused;
		ushort unused2;
		ushort coprocessor;
		ushort programBreak;
		ushort abort;
		ushort nonMaskableInterrupt;
		ushort reset;
		ushort interruptRequest;
}
