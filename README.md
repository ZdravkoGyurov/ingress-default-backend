### Steps to reporoduce [issue](https://github.com/kubernetes/ingress-nginx/issues/7367)
1. Execute `helm dep update . && helm upgrade ingress-default-backend . --install --namespace idb --create-namespace`
2. curl http://localhost/api results in a custom 503 html page from the custom default backend because the server is scaled down to 0 replicas
3. curl http://localhost/non/existing/path results in a custom 404 html page from the custom default backend because this is a path which is not registered in any ingress rule
4. curl -X "1" http://localhost/api results in 500 default nginx error page which comes from the ingress controller, it never reaches the custom default backend
