ELF = airkiss
SRCS = main.c 
SRCS += capture/common.c capture/osdep.c capture/linux.c capture/radiotap/radiotap-parser.c
SRCS += utils/wifi_scan.c
OBJS = $(patsubst %.c,%.o,$(SRCS))

LIBIW = -liw
TIMER = -lrt
AIRKISS_LOG = ./libairkiss_log.a
AIRKISS = ./libairkiss.a

CC = gcc
CCFLAGS = -c -g -Wall -Wno-unused-but-set-variable

all: $(ELF)
$(ELF) : $(OBJS)
	$(CC) $^ -o $@ $(LIBIW) $(TIMER)
$(OBJS):%.o:%.c
	$(CC) $(CCFLAGS) $< -o $@ $(AIRKISS) $(AIRKISS_LOG)

clean:
	rm -f  $(ELF) $(OBJS)

.PHONY: all clean
