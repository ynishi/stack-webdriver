# stack-build-docker-compose
docker-compose for stack-build image

## Usage
* short cut is made with make
```sh
$ make usage
```
### ghci
```sh
$ docker-compose run stack stack ghci
# or
$ make ghci
# with args
$ make ghci ARGS='--package mtl'
# in project
$ make do COMM=ghci PRJ=${PROJECT_NAME}
```
### create new project
```sh
$ docker-compose run stack stack new ${PROJECT_NAME}
# or 
$ make new PRJ=${PROJECT_NAME}
```
### build
```sh
$ docker-compose run --workdir=/stack/${PROJECT_NAME} stack stack build
# or
$ make build PRJ=${PROJECT_NAME}
```
### exec
```sh
$ docker-compose run --workdir=/stack/${PROJECT_NAME} stack stack exec ${PROJECT_NAME}-exe
# or
$ make exec PRJ=${PROJECT_NAME}
```
### install
```sh
$ docker-compose run --workdir=/stack/${PROJECT_NAME} stack stack install ${PACKAGE_NAME}
# or
$ make install PRJ=${PROJECT_NAME} ARGS=${PACKAGE_NAME}
```
### do stack command
```sh
$ docker-compose run --workdir=/stack/${PROJECT_NAME} stack stack ${COMMAND} ${ARGS}
# or
$ make do PRJ=${PROJECT_NAME} COMM=${COMMAND} ARGS=${ARGS}
```
## LICENSE
* MIT, see LICENSE
