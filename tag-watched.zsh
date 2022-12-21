#!/usr/bin/zsh
FILE="${1:-.}";
TAGS="$(getfattr -n user.xdg.tags ${FILE} | grep 'tags=' | cut -d '=' -f2 | sed -e s/\"//g | sed -e 's/,WATCHED//g')";
NEWTAGS="${TAGS},WATCHED";
setfattr -n user.xdg.tags -v "${NEWTAGS}" "${FILE}" 2>/dev/null &;
disown
# TAGS="$(getfattr -n user.xdg.tags ${FILE} | grep 'tags=' | cut -d '=' -f2 | sed -e s/\"//g)";
