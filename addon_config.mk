# All variables and this file are optional, if they are not present the PG and the
# makefiles will try to parse the correct values from the file system.
#
# Variables that specify exclusions can use % as a wildcard to specify that anything in
# that position will match. A partial path can also be specified to, for example, exclude
# a whole folder from the parsed paths from the file system
#
# Variables can be specified using = or +=
# = will clear the contents of that variable both specified from the file or the ones parsed
# from the file system
# += will add the values to the previous ones in the file or the ones parsed from the file 
# system
# 
# The PG can be used to detect errors in this file, just create a new project with this addon 
# and the PG will write to the console the kind of error and in which line it is

meta:
	ADDON_NAME = ofxOpenNI
	ADDON_DESCRIPTION = Addon for interfacing with OpenNI
	ADDON_AUTHOR = Modified from  gameoverhack by Nick B
	ADDON_TAGS = "camera" "openni" "kinect"
	ADDON_URL = https://github.com/SolitaryCipher/ofxOpenNI

common:
	# dependencies with other addons, a list of them separated by spaces 
	# or use += in several lines
	# ADDON_DEPENDENCIES =
	
	# include search paths, this will be usually parsed from the file system
	# but if the addon or addon libraries need special search paths they can be
	# specified here separated by spaces or one per line using +=
	# ADDON_INCLUDES =
	
	# any special flag that should be passed to the compiler when using this
	# addon
	# ADDON_CFLAGS =
	
	# any special flag that should be passed to the linker when using this
	# addon, also used for system libraries with -lname
	# ADDON_LDFLAGS =
	
	# linux only, any library that should be included in the project using
	# pkg-config
	# ADDON_PKG_CONFIG_LIBRARIES =
	
	# osx/iOS only, any framework that should be included in the project
	# ADDON_FRAMEWORKS =
	
	# source files, these will be usually parsed from the file system looking
	# in the src folders in libs and the root of the addon. if your addon needs
	# to include files in different places or a different set of files per platform
	# they can be specified here
	# ADDON_SOURCES =
	
	# some addons need resources to be copied to the bin/data folder of the project
	# specify here any files that need to be copied, you can use wildcards like * and ?
	# ADDON_DATA = 
	
	# when parsing the file system looking for libraries exclude this for all or
	# a specific platform
	# ADDON_LIBS_EXCLUDE =
	
linux64:
	# binary libraries, these will be usually parsed from the file system but some 
	# libraries need to passed to the linker in a specific order 
	ADDON_LIBS =
	ADDON_CFLAGS  = -I /usr/include/ni -I /usr/include/nite
	ADDON_LDFLAGS = /usr/lib/libOpenNI.so

linux:
	ADDON_LIBS =
	ADDON_CFLAGS = -I /usr/include/ni -I /usr/include/nite
	ADDON_LDFLAGS = /usr/lib/libOpenNI.so

osx:
	# can the libs/osx/ path be changed to data/mac/openni/lib/ ?
	# Either way, its ~22 mb.
	# Or seperate these files. 
	ADDON_LIBS =
	ADDON_LIBS += libs/osx/libnimCodecs.dylib
	ADDON_LIBS += libs/osx/libnimMockNodes.dylib
	ADDON_LIBS += libs/osx/libnimRecorder.dylib
	ADDON_LIBS += libs/osx/libOpenNI.dylib
	ADDON_LIBS += libs/osx/libusb-1.0.0.dylib
	ADDON_LIBS += libs/osx/libXnCore.dylib
	ADDON_LIBS += libs/osx/libXnDDK.dylib
	ADDON_LIBS += libs/osx/libXnDeviceFile.dylib
	ADDON_LIBS += libs/osx/libXnDeviceSensorV2KM.dylib
	ADDON_LIBS += libs/osx/libXnFormats.dylib
	ADDON_LIBS += libs/osx/libXnVCNITE_1_5_2.dylib
	ADDON_LIBS += libs/osx/libXnVFeatures_1_5_2.dylib
	ADDON_LIBS += libs/osx/libXnVHandGenerator_1_5_2.dylib
	ADDON_LIBS += libs/osx/libXnVNite_1_5_2.dylib

win_cb:
	ADDON_LIBS =

linuxarmv6l:
	ADDON_LIBS =
	
linuxarmv7l:
	ADDON_LIBS =

android/armeabi:	
	ADDON_LIBS =

android/armeabi-v7a:	
	ADDON_LIBS =

