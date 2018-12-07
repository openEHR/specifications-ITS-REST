#!/bin/bash
mkdir -p /project/docs
cd /project/src
find *.apib | while read -r file;
do
	name="${file%.*}";
	echo "building $file as $name.html";
	aglio --theme-template triple \
	    --theme-full-width \
	    --theme-style default \
	    --theme-style /project/src/styles/layout-openEHR.less \
	    --theme-variables flatly \
	    -i /project/src/$file \
	    -o /project/docs/$name.html;
    echo "...done";
    
done

