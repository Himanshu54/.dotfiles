#!/bin/bash

set -e
output=/tmp/pscircle.png

pscircle --output=$output \
	--max-children=60 \
	--output-width=1400 \
	--output-height=900 \
	--tree-radius-increment=90 \
	--dot-radius=3 \
	--link-width=1.3 \
	--tree-font-size=10 \
	--toplists-bar-width=30 \
	--toplists-font-size=11 \
	--toplists-bar-height=3 \
	--toplists-row-height=15 \
	--cpulist-center=400.0:-80.0 \
	--memlist-center=400.0:80.0 \
	--link-color-min=375143a0 \
	--link-color-max=375143 \
	--dot-color-min=7c762f \
	--dot-color-max=b56e46 \
	--tree-font-color=94bfd1 \
	--tree-font-face="Noto Sans" \
	--toplists-font-color=C8D2D7 \
	--toplists-pid-font-color=7B9098 \
	--toplists-font-face="Liberation Sans" \
	--toplists-bar-height=7 \
	--toplists-bar-background=444444 \
	--toplists-bar-color=7d54dd \


if command -v feh >/dev/null; then
	feh --bg-fill $output
	rm $output
fi


