#!/bin/sh
bindir=$(pwd)
cd /cise/homes/psainath/Desktop/project3sainath/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /cise/homes/psainath/Desktop/project3sainath/build/misc05_picking_slow_easy 
	else
		"/cise/homes/psainath/Desktop/project3sainath/build/misc05_picking_slow_easy"  
	fi
else
	"/cise/homes/psainath/Desktop/project3sainath/build/misc05_picking_slow_easy"  
fi
