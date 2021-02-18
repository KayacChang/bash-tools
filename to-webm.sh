#!/usr/bin/env bash

source=$1
filename="${source%.*}"

ffmpeg \
	-i $source \
	-c:v libvpx-vp9 \
	-crf 30 \
	-b:v 0 \
	-b:a 128k \
	-c:a libopus \
	$filename.webm
