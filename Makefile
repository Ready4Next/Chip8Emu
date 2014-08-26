#------------------------------------------------------------------------------#
# This makefile was generated by 'cbp2make' tool rev.147                       #
#------------------------------------------------------------------------------#


WORKDIR = `pwd`

CC = gcc
CXX = g++
AR = ar
LD = g++
WINDRES = windres

INC = -I/usr/i586-mingw32msvc/include/wx-3.0/
CFLAGS = -std=c++11 -Wall -g `wx-config --cflags --gl-libs`
RESINC = 
LIBDIR = -L../../../../../usr/i586-mingw32msvc/lib
LIB = -lGL
LDFLAGS = `wx-config --cflags --gl-libs` -lSDL2 -lSDL2_mixer -lrt -lftgl

INC_DEBUG = $(INC) -Iinclude -IChip8
CFLAGS_DEBUG = $(CFLAGS) -std=c++11 -g `wx-config --cflags`
RESINC_DEBUG = $(RESINC)
RCFLAGS_DEBUG = $(RCFLAGS)
LIBDIR_DEBUG = $(LIBDIR)
LIB_DEBUG = $(LIB)
LDFLAGS_DEBUG =  `wx-config --libs` -lSDL2 $(LDFLAGS)
OBJDIR_DEBUG = obj/Debug
DEP_DEBUG = 
OUT_DEBUG = bin/Debug/Mega8

INC_RELEASE = $(INC) -Iinclude -IChip8
CFLAGS_RELEASE = $(CFLAGS) -O2 -std=c++11 `wx-config --cflags --gl-libs`
RESINC_RELEASE = $(RESINC)
RCFLAGS_RELEASE = $(RCFLAGS)
LIBDIR_RELEASE = $(LIBDIR)
LIB_RELEASE = $(LIB)
LDFLAGS_RELEASE =  -s `wx-config --libs` -lSDL2 $(LDFLAGS)
OBJDIR_RELEASE = obj/Release
DEP_RELEASE = 
OUT_RELEASE = bin/Release/Mega8

OBJ_DEBUG = $(OBJDIR_DEBUG)/Chip8/Chip8.o $(OBJDIR_DEBUG)/Chip8/Chip8Sound.o $(OBJDIR_DEBUG)/Mega8App.o $(OBJDIR_DEBUG)/Mega8Main.o $(OBJDIR_DEBUG)/src/Chip8GL.o

OBJ_RELEASE = $(OBJDIR_RELEASE)/Chip8/Chip8.o $(OBJDIR_RELEASE)/Chip8/Chip8Sound.o $(OBJDIR_RELEASE)/Mega8App.o $(OBJDIR_RELEASE)/Mega8Main.o $(OBJDIR_RELEASE)/src/Chip8GL.o

all: debug release

clean: clean_debug clean_release

before_debug: 
	test -d bin/Debug || mkdir -p bin/Debug
	test -d $(OBJDIR_DEBUG)/Chip8 || mkdir -p $(OBJDIR_DEBUG)/Chip8
	test -d $(OBJDIR_DEBUG) || mkdir -p $(OBJDIR_DEBUG)
	test -d $(OBJDIR_DEBUG)/src || mkdir -p $(OBJDIR_DEBUG)/src

after_debug: 

debug: before_debug out_debug after_debug

out_debug: before_debug $(OBJ_DEBUG) $(DEP_DEBUG)
	$(LD) $(LIBDIR_DEBUG) -o $(OUT_DEBUG) $(OBJ_DEBUG)  $(LDFLAGS_DEBUG) $(LIB_DEBUG)

$(OBJDIR_DEBUG)/Chip8/Chip8.o: Chip8/Chip8.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Chip8/Chip8.cpp -o $(OBJDIR_DEBUG)/Chip8/Chip8.o

$(OBJDIR_DEBUG)/Chip8/Chip8Sound.o: Chip8/Chip8Sound.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Chip8/Chip8Sound.cpp -o $(OBJDIR_DEBUG)/Chip8/Chip8Sound.o

$(OBJDIR_DEBUG)/Mega8App.o: Mega8App.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Mega8App.cpp -o $(OBJDIR_DEBUG)/Mega8App.o

$(OBJDIR_DEBUG)/Mega8Main.o: Mega8Main.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c Mega8Main.cpp -o $(OBJDIR_DEBUG)/Mega8Main.o

$(OBJDIR_DEBUG)/src/Chip8GL.o: src/Chip8GL.cpp
	$(CXX) $(CFLAGS_DEBUG) $(INC_DEBUG) -c src/Chip8GL.cpp -o $(OBJDIR_DEBUG)/src/Chip8GL.o

clean_debug: 
	rm -f $(OBJ_DEBUG) $(OUT_DEBUG)
	rm -rf bin/Debug
	rm -rf $(OBJDIR_DEBUG)/Chip8
	rm -rf $(OBJDIR_DEBUG)
	rm -rf $(OBJDIR_DEBUG)/src

before_release: 
	test -d bin/Release || mkdir -p bin/Release
	test -d $(OBJDIR_RELEASE)/Chip8 || mkdir -p $(OBJDIR_RELEASE)/Chip8
	test -d $(OBJDIR_RELEASE) || mkdir -p $(OBJDIR_RELEASE)
	test -d $(OBJDIR_RELEASE)/src || mkdir -p $(OBJDIR_RELEASE)/src

after_release: 

release: before_release out_release after_release

out_release: before_release $(OBJ_RELEASE) $(DEP_RELEASE)
	$(LD) $(LIBDIR_RELEASE) -o $(OUT_RELEASE) $(OBJ_RELEASE)  $(LDFLAGS_RELEASE) $(LIB_RELEASE)

$(OBJDIR_RELEASE)/Chip8/Chip8.o: Chip8/Chip8.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Chip8/Chip8.cpp -o $(OBJDIR_RELEASE)/Chip8/Chip8.o

$(OBJDIR_RELEASE)/Chip8/Chip8Sound.o: Chip8/Chip8Sound.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Chip8/Chip8Sound.cpp -o $(OBJDIR_RELEASE)/Chip8/Chip8Sound.o

$(OBJDIR_RELEASE)/Mega8App.o: Mega8App.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Mega8App.cpp -o $(OBJDIR_RELEASE)/Mega8App.o

$(OBJDIR_RELEASE)/Mega8Main.o: Mega8Main.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c Mega8Main.cpp -o $(OBJDIR_RELEASE)/Mega8Main.o

$(OBJDIR_RELEASE)/src/Chip8GL.o: src/Chip8GL.cpp
	$(CXX) $(CFLAGS_RELEASE) $(INC_RELEASE) -c src/Chip8GL.cpp -o $(OBJDIR_RELEASE)/src/Chip8GL.o

clean_release: 
	rm -f $(OBJ_RELEASE) $(OUT_RELEASE)
	rm -rf bin/Release
	rm -rf $(OBJDIR_RELEASE)/Chip8
	rm -rf $(OBJDIR_RELEASE)
	rm -rf $(OBJDIR_RELEASE)/src

.PHONY: before_debug after_debug clean_debug before_release after_release clean_release
