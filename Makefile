# Compiler
CC=g++

# Compiler flags
CFLAGS=-c -Wall -g -O0 -std=c++11

# Linker flags
LDFLAGS=

# Source files
SOURCES=main.cpp ext2.cpp interface.cpp utility.cpp vdi_reader.cpp
#SOURCES=main.cpp exceptions.cpp ext2.cpp interface.cpp utility.cpp vdi_reader.cpp

# Object files
OBJECTS=$(SOURCES:.cpp=.o)

# Miscellaneous debug files
MISCDEBUG=*.cpp.*

# Executable
EXECUTABLE=vexplorer

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm $(OBJECTS) $(EXECUTABLE)

clean_debug:
	rm $(OBJECTS) $(EXECUTABLE) $(MISCDEBUG)
