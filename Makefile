#Braden Windsor
#Makefile
#9-21-23
#Compiles
CC = g++

#Compile with all errors and warnings
CFLAGS = -g -Wall -Wextra
TARGET = employee

default: all


all: $(TARGET)


#Gathers all .o files then links them together under the name TARGET
$(TARGET): Employee.o Officer.o Supervisor.o main.o
	$(CC) $(CFLAGS) -o $(TARGET) Employee.o Officer.o Supervisor.o main.o


#Main requires all .h files
main.o: main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) -c main.cpp


Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp


Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp


Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp


#use the varible instead of employee to keep consistent
clean:
	$(RM) $(TARGET) *.o *~
