CXX = c++
CC = cc
CXXFLAGS = -O2 -std=c++17
CFLAGS = -O2 -I.
TARGET = voronoi

$(TARGET): main.cpp lbfgs.o
	$(CXX) $(CXXFLAGS) main.cpp lbfgs.o -o $(TARGET)

lbfgs.o: lbfgs.c lbfgs.h
	$(CC) $(CFLAGS) -c lbfgs.c -o lbfgs.o

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(TARGET) lbfgs.o *.svg *.png
