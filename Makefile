CFLAGS   = -Wall -O2 -finput-charset=utf-8 -fexec-charset=CP932
LDFLAGS  = -mwindows
SRCDIR   = src
OBJDIR   = obj
BINDIR   = bin

SRCS     = $(wildcard $(SRCDIR)/*.c)
OBJS     = $(SRCS:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
BIN      = $(BINDIR)/$(TARGET)

TARGET = helloworld.exe

all: $(BIN)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(BINDIR):
	mkdir -p $(BINDIR)

$(BIN): $(OBJS) $(BINDIR)
	$(CC) $(LDFLAGS) -o $@ $(OBJS)

$(OBJDIR)/%.o: $(SRCDIR)/%.c $(OBJDIR)
	$(CC) $(CFLAGS) -c -o $@ $<

.PHONY: clean
clean:
	rm -rf $(BINDIR) $(OBJDIR)
