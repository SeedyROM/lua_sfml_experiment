# Global settings
CC= g++
FLAGS= --std=c++14 -O3
SEARCH_PATHS= -Iinclude/ -I/usr/include/lua5.2/
LINKED_LIBS= -llua5.2 -lsfml-graphics -lsfml-window -lsfml-system

# Macro's for project directories
__ROOT_DIR__= -D__ROOT_DIR__=\(std::string\)\"$(shell pwd)\"
__SRC_DIR__= -D__SRC_DIR__=__ROOT_DIR__+\"/src\"
__INCLUDE_DIR__= -D__INCLUDE_DIR__=__ROOT_DIR__+\"/include\"
__TEST_DIR__= -D__TEST_DIR__=__ROOT_DIR__+\"/test\"
DIR_MACROS= $(__ROOT_DIR__) $(__SRC_DIR__) $(__INCLUDE_DIR__) $(__TEST_DIR__)

# Build the main executable
all: src/main.cpp
	@echo "Building main executable..."
	@$(CC) -o bin/lua_c++ src/main.cpp $(SEARCH_PATHS) $(LINKED_LIBS) $(FLAGS) $(DIR_MACROS)

run:
	./bin/lua_c++
