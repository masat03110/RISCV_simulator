cd assemble
g++ main.cpp
cd pre_assemble
g++ main.cpp
cd ../../make_bin
g++ main.cpp
cd ../find_line
g++ main.cpp
cd ../simulator
make clean
make
