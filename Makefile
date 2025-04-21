.PHONY: all clean run

CXX = g++
CXXFLAGS = -I ./inc -std=c++11
WARNINGS = -g -Wall

SRCDIR = src
OBJDIR = obj

SRCS = $(wildcard $(SRCDIR)/*.cpp)
OBJS = $(patsubst $(SRCDIR)/%.cpp,$(OBJDIR)/%.o,$(SRCS))

TARGET = Lab07

all: $(TARGET)

$(OBJDIR):
	@mkdir -p $(OBJDIR)

$(TARGET): main.cpp $(OBJS)
	$(CXX) $(WARNINGS) $(CXXFLAGS) $^ -o $@

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp | $(OBJDIR) Makefile
	$(CXX) $(WARNINGS) $(CXXFLAGS) -c $< -o $@

run:
	./$(TARGET) $(cell) $(opt) $(output)

clean:
	@echo "Cleaning up..."
	rm -rf $(OBJDIR)/*.o $(TARGET)

