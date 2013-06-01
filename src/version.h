#ifndef VERSION_H
#define VERSION_H

namespace AutoVersion{
	
	//Date Version Types
	static const char DATE[] = "02";
	static const char MONTH[] = "06";
	static const char YEAR[] = "2013";
	static const char UBUNTU_VERSION_STYLE[] = "13.06";
	
	//Software Status
	static const char STATUS[] = "Beta";
	static const char STATUS_SHORT[] = "b";
	
	//Standard Version Type
	static const long MAJOR = 1;
	static const long MINOR = 5;
	static const long BUILD = 587;
	static const long REVISION = 3230;
	
	//Miscellaneous Version Types
	static const long BUILDS_COUNT = 785;
	#define RC_FILEVERSION 1,5,587,3230
	#define RC_FILEVERSION_STRING "1, 5, 587, 3230\0"
	static const char FULLVERSION_STRING[] = "1.5.587.3230";
	
	//These values are to keep track of your versioning state, don't modify them.
	static const long BUILD_HISTORY = 87;
	

}
#endif //VERSION_H
