CURRENT_DIR = $(shell pwd)

vue-create:
	cp ./docker-compose.yml ${PROJECT_PATH}/docker-compose.yml
	docker run --rm -it -v ${PROJECT_PATH}:${PROJECT_PATH} -w ${PROJECT_PATH} \
	node:lts-alpine sh -c "yarn global add @vue/cli && cd .. && \
	vue create --merge ${shell basename ${PROJECT_PATH}}"