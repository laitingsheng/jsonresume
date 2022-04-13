#!/usr/bin/env bash

set -eu

mkdir -p docs/pdfs

for folder in jsons/*
do
	lang=`awk -F/ '{print $NF}' <<< $folder`
	cp $folder/resume.json .

	npm run build:pdf
	npm run build:html

	mkdir -p docs/$lang
	mv resume.html docs/$lang/index.html
	mv resume.pdf docs/pdfs/$lang.pdf
done
