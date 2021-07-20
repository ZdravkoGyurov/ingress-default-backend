setup:
	@echo Preparing images and ingress controller dependency chart
	docker build --no-cache -t idb-custom-backend images/custom-backend
	docker build --no-cache -t idb-server images/server
	helm dep update .

install:
	@echo Installing helm chart
	helm upgrade ingress-default-backend . --install --namespace idb --create-namespace

uninstall:
	@echo Uninstalling helm chart
	helm uninstall -n idb ingress-default-backend 

cleanup:
	@echo Deleting images
	docker image rm idb-custom-backend idb-server