CURRENT_DIR = $(shell pwd)
PROJECT_NAME = vue-project

vue-init:
	mkdir ../${PROJECT_NAME}
	cp ./docker-compose.yml ../${PROJECT_NAME}/docker-compose.yml
	cd ../${PROJECT_NAME}
	docker run --rm -it -v ${CURRENT_DIR}:${CURRENT_DIR} -w ${CURRENT_DIR} \
	node:lts-alpine sh -c "yarn global add @vue/cli && cd .. && \
	vue create -f ${PROJECT_NAME}"