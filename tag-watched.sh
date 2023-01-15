#!/bin/sh
FILE="${1:-.}";
TAGS="$(getfattr --absolute-names --only-values -n user.xdg.tags ${FILE} 2>/dev/null | sed -e 's/[,]WATCHED//g')";
NEWTAGS="${TAGS},WATCHED";
setfattr -n user.xdg.tags -v "${NEWTAGS}" "${FILE}" 2>/dev/null
