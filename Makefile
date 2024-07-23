# CC = gcc
# main_exe : main.o a.o b.o
# 	gcc -o main_exe main.o a.o b.o

# a.o : a.c
# 	gcc -c -o a.o a.c
# b.o : b.c
# 	gcc -c -o b.o b.c

# main.o : main.c
# 	gcc -c -o main.o main.c

# clean :
# 	rm *.o main_exe

CC = gcc
TARGET = main_exe
OBJECTS = a.o b.o main.o

all : $(TARGET)

$(TARGET) : $(OBJECTS)
	$(CC) -o $@ $^

clean :
	rm *.o main_exe
