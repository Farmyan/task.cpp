BUILD_DIR = build
SOURCE_DIR = src

GTEST = -lgtest_main -lgtest -lpthread

all: main

main:  $(BUILD_DIR)/test.o $(BUILD_DIR)/prime.o
		clang++   -o $(GTEST) $(BUILD_DIR)/prime.o  $(BUILD_DIR)/test.o

$(BUILD_DIR)/prime.o: $(SOURCE_DIR)/prime.cpp
		clang++  -c $(SOURCE_DIR)/prime.cpp -o $(BUILD_DIR)/prime.o

$(BUILD_DIR)/test.o: $(SOURCE_DIR)/test.cpp 
		clang++ -c $(SOURCE_DIR)/test.cpp   -o $(BUILD_DIR)/test.o

clean:
		rm -f  $(BUILD_DIR)/*.*

.PHONY: all clean