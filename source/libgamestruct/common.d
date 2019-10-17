module libgamestruct.common;

import std.range : isOutputRange;

struct Offset {
	ulong offset;
}

struct GameWrapper(T) {
	T* game;
	this(string path) {
		import reversineer : readStruct = read;
		import std.file : read;
		ubyte[] data = cast(ubyte[])read(path);
		game = new T;
		data.readStruct!T(game);
	}
	this(ubyte[] data) {
		assert(data.length >= T.sizeof, "Not enough data in file");
		import reversineer : readStruct = read;
		game = new T;
		data.readStruct!T(game);
	}
	void toString(T)(T sink) const if (isOutputRange!(T, const(char))) {
		game.toString(sink);
	}
	bool verify() @safe const {
		return game.verify();
	}
	string name() @safe const {
		return game.loadedGame;
	}
	const(ubyte)[] raw() @trusted const {
		union RawAccess {
			const(T)* game;
			const(ubyte[T.sizeof])* data;
		}
		RawAccess r;
		r.game = game;
		return (*r.data)[0 .. T.sizeof];
	}
	enum minimumSize = T.sizeof;
}

struct Palette {
	bool shareSeed = false;
	bool dontSkipFirst = false;
}
struct Name {
}

struct Label {
	string name;
	string description;
}

align(1) struct SimpleChar(alias table) {
	align(1):
	ubyte val;
	string toChar() const @safe {
		import std.format : format;
		if (val in table) {
			return table[val];
		} else {
			return format!"[%02X]"(val);
		}
	}
}

align(1) struct SimpleString(alias table, ubyte terminator, size_t Length) {
	align(1):
	import siryul : SerializationMethod;
	ubyte[Length] str;
	size_t length() const @safe {
		return Length;
	}
	@SerializationMethod
	string toString() const @safe {
		string result;
		foreach (chr; str) {
			if (chr == terminator) {
				break;
			}
			result ~= SimpleChar!table(chr).toChar();
		}
		return result;
	}
	void opAssign(const string input) @safe {
		str[] = terminator;
		foreach (i, inChar; input) {
			bool found;
			foreach (k, v; table) {
				if (v == [inChar]) {
					found = true;
					str[i] = k;
					break;
				}
			}
			assert(found, "Game does not support character '"~inChar~"'");
		}
	}
}

align(1) struct SimpleStrings(alias table, ubyte terminator, size_t Length) {
	align(1):
	import siryul : SerializationMethod;
	ubyte[Length] str;
	size_t length() const @safe {
		return Length;
	}
	@SerializationMethod
	string[] toString() const @safe {
		string[] result;
		string buf;
		foreach (chr; str) {
			if (chr == terminator) {
				result ~= buf;
				buf = "";
			} else {
				buf ~= SimpleChar!table(chr).toChar();
			}
		}
		return result;
	}
	void opAssign(const string input) @safe {
		str[] = terminator;
		foreach (i, inChar; input) {
			bool found;
			foreach (k, v; table) {
				if (v == [inChar]) {
					found = true;
					str[i] = k;
					break;
				}
			}
			assert(found, "Game does not support character '"~inChar~"'");
		}
	}
}

struct Randomize {}
