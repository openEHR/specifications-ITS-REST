In order to build HTML from.apib files you need to:
 - download Aglio `Dockerfile` from https://github.com/danielgtaylor/aglio/blob/master/Dockerfile
 - run 
```
docker run -v $(pwd):/tmp -t aglio --theme-template triple --theme-full-width --theme-style default --theme-style /tmp/styles/layout-openEHR.less --theme-variables flatly -i /tmp/ehr.apib -o /tmp/docs/ehr.html
```
 - see more about [usage info](https://github.com/danielgtaylor/aglio#executable)
 
