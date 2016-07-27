CXX = g++

PREFIX ?= /usr/local
HEADER = sort.hpp
DEMO = sort

demo : $(TARGET)
	$(CXX) -std=c++14 -fPIC main.cpp -o $(DEMO)
    
install :
	install -m 644 $(HEADER) $(PREFIX)/include

uninstall :
	rm -f $(PREFIX)/include/$(HEADER)

clean :
	-rm -f $(DEMO)
