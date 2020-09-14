#!/bin/sh
sed -i \
         -e 's/#7a5b9a/rgb(0%,0%,0%)/g' \
         -e 's/#eeeee7/rgb(100%,100%,100%)/g' \
    -e 's/#2d262d/rgb(50%,0%,0%)/g' \
     -e 's/#cbd44e/rgb(0%,50%,0%)/g' \
     -e 's/#3f3e56/rgb(50%,0%,50%)/g' \
     -e 's/#dad8ef/rgb(0%,0%,50%)/g' \
	"$@"
