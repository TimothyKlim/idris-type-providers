
all: sqlite_provider.so sqlite_provider.o

sqlite_provider.o : sqlite_provider.h sqlite_provider.c
	gcc -lsqlite3 -c sqlite_provider.c

sqlite_provider.so : sqlite_provider.h sqlite_provider.c
	gcc -lsqlite3 -fPIC -o sqlite_provider.so -shared sqlite_provider.c

clean_ibc:
	rm *.ibc
	rm Providers/*.ibc
	rm Data/*.ibc



