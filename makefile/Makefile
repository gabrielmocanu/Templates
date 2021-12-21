CC = gcc
CFLAGS = -Wall -Wextra -Werror
LDFLAGS =

TARGET_EXEC = program_out

MKDIR_P ?= mkdir -p

SRCS := $(shell find $(SRC_DIRS) -name "*.c")
OBJS := $(SRCS:.c=.o)

$(info OBJS is $(OBJS))
$(info SRCS is $(SRCS))

$(TARGET_EXEC): $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDFLAGS)

.o: %.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c $< -o $@

.PHONY: clean

clean:
	$(RM) -r *.o $(TARGET_EXEC)
