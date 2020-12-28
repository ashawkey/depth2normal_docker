g++ depth2normal_parallel.cpp -o depth2normal_parallel -std=c++11 -I ./include/ -Wall -O3 -fopenmp `pkg-config opencv --cflags --libs`
