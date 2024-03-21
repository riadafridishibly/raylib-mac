COMPILER = clang
SOURCE_LIBS = -Isrc/include
OSX_OPT = -Llib -framework CoreVideo -framework IOKit -framework Cocoa -framework GLUT -framework OpenGL lib/libraylib.a
OSX_OUT = -o "a.out"
CFILES = src/*.c

.PHONY: build
build:
	$(COMPILER) $(CFILES) $(SOURCE_LIBS) $(OSX_OUT) $(OSX_OPT)

.PHONY: clean
clean:
	rm -rf a.out
