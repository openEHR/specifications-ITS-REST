#!/bin/bash
mkdir -p project/docs
cd project/src || exit
find *.apib | while read -r file;
do
	name="${file%.*}";
	echo "building $file as $name.html";
	aglio --theme-template templates/openehr.jade \
	    --theme-full-width \
	    --theme-variables styles/variables-default.less \
	    --theme-style styles/layout-default.less \
	    --theme-style styles/layout-openEHR.less \
	    -i "$file" \
	    -o /project/docs/"$name".html;
    echo "...done";

done

