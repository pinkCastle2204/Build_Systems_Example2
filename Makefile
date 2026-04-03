CXX = g++
CXXFLAGS = -Iinclude

# all: main.o ui.o sensor.o
# 	$(CXX) $(CXXFLAGS) main.o ui.o sensor.o -o output

# main.o : src/main.cpp
# 	$(CXX) $(CXXFLAGS) -c src/main.cpp

# sensor.o : src/sensor.cpp
# 	$(CXX) $(CXXFLAGS) -c src/sensor.cpp

# ui.o : src/ui.cpp
# 	$(CXX) $(CXXFLAGS) -c src/ui.cpp


all: main.o ui.o sensor.o 
	$(CXX) $(CXXFLAGS) $^ -o $@

%.o : src?%.cpp	
	$(CXX) $(CXXFLAGS) -c $<

.PHONY : clean
clean :
	rm main.o ui.o sensor.o