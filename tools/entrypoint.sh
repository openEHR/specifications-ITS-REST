#!/bin/bash
mkdir -p /project/docs
cd /project/src
find *.apib | while read -r file;
do
	name="${file%.*}";
	echo "building $file as $name.html";
	aglio --theme-template /project/src/templates/openehr.jade \
	    --theme-full-width \
	    --theme-variables /project/src/styles/variables-default.less \
	    --theme-style /project/src/styles/layout-default.less \
	    --theme-style /project/src/styles/layout-openEHR.less \
	    -i /project/src/$file \
	    -o /project/docs/$name.html;
    echo "...done";
    
done

