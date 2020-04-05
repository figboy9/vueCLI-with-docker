NODE_VAR = lts-alpine

vue-create:
	docker run --rm -it -v ${PROJECT_PATH}:${PROJECT_PATH} -w ${PROJECT_PATH} \
	node:${NODE_VAR} sh -c "yarn global add @vue/cli && cd .. && \
	vue create --merge ${shell basename ${PROJECT_PATH}}"