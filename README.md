### Steps to reporoduce issue
1. Execute `make setup && make install`
2. curl http://localhost/api results in custom 503 html page from the custom default backend
3. curl -X "1" http://localhost/api results in 500 default nginx error page which appears to be a result of failed 400 handling by the custom default backend