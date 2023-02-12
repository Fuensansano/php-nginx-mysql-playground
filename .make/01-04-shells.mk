##@ [Shells: Connect to each container]

.PHONY: bash-php
bash-php: ## Connect to PHP container.
	docker-compose run --rm --service-ports -u $(DOCKER_NORMAL_USER_UUID=1000
) $(APP_CONTAINER_NAME) /bin/bash

.PHONY: bash-db
bash-db: ## Connect to BD container.
	docker-compose run --rm --service-ports -u $(DOCKER_NORMAL_USER_UUID=1000
) $(DB_CONTAINER_NAME) /bin/bash

.PHONY: bash-nginx
bash-nginx: ## Connect to NGINX container.
	docker-compose run --rm --service-ports -u $(DOCKER_NORMAL_USER_UUID=1000
) $(NGINX_CONTAINER_NAME) /bin/bash
