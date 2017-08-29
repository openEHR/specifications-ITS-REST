#!/bin/bash

find *.apib | while read -r file; do
	name="${file%.*}";
	echo "building $file as $name.html";
	aglio --theme-template triple --theme-full-width --theme-style default --theme-style /project/styles/layout-openEHR.less --theme-variables flatly -i /project/$file -o /project/docs/$name.html;
    echo "...done";
    
done