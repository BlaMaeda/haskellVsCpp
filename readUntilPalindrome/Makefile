all: haskell cpp

test: haskell cpp
	bash test.sh

haskell: solution.hs
	ghc solution.hs -o haskellSolution

cpp: solution.cpp
	g++ -std=c++11 solution.cpp -o cppSolution

clean:
	rm haskellSolution solution.hi solution.o

