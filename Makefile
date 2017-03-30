CXX = g++
CXXFLAGS = -g 
SRC = ./src
INSRC = ./include
TESTCASE = ./test
INCS = ./include
OBJS = temp.o temp_unittest.o
TESTS = temp_unittest


all : $(TESTS)

temp.o: $(SRC)/temp.cc $(INSRC)/temp.h
	$(CXX) -I$(INCS) -c $(SRC)/temp.cc $(INCS) 

temp_unittest.o: $(TESTCASE)/temp_unittest.cc $(INSRC)/temp.h
	$(CXX) $(CXXFLAGS) -I$(INCS) -c $(TESTCASE)/temp_unittest.cc 

temp_unittest:$(OBJS)
	$(CXX) $(CXXFLAGS)  $(OBJS) -o $(TESTS) -lgtest -lgtest_main -lpthread

clean:
	rm *.o $(TESTS)