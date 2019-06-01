module libgamestruct.mother.mother3;

import libgamestruct.common;
import libgamestruct.platforms.gba;

align(1) struct Mother3 {
	align(1):
	enum extension = "gba";
	@Offset(0x08000000) GBAHeader gbaHeader;
}