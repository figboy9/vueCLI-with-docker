# VueCLI-with-docker
## Usage
You can create vue project with docker.

First create an empty vue project folder.

```bash
git clone https://github.com/ezio1119/VueCLI-with-docker.git
```
```bash
cd VueCLI-with-docker
```
PROJECT_PATH is absolute path of your created vue project
```bash
make PROJECT_PATH=<your project path>
```
```bash
cd <your project path>
```
```bash
docker-compose up
```