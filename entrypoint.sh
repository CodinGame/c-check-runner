#!/bin/sh

# Move to project
cd /project/target

# Copy answer
cp -r /project/answer/* .

# Compile
if make > /tmp/compilation_logs 2>&1; then
	export CK_RUN_CASE=$2
	make check > /dev/null 2>&1

	# Run
	echo "CG> redirect-streams \"Test results\""
	tests/$1
else
	# Print error
	echo "CG> redirect-streams \"Compilation logs\""
	cat /tmp/compilation_logs
	exit 1
fi
