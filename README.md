# stack-build-docker-compose with webdriver
docker-compose for stack-build with webdriver image
default project is webdriver.

## Usage
* short cut is made with make
```sh
$ make usage
```
### ghci
```sh
$ make ghci
# with args
$ make ghci ARGS='--package mtl'
```
### build
```sh
$ docker-compose run --workdir=/stack/wd stack stack build
# or
$ make build
```
### exec
```sh
$ docker-compose run --workdir=/stack/wd stack stack exec wd-exe
# or
$ make exec
```
### install
```sh
$ docker-compose run --workdir=/stack/wd stack stack install ${PACKAGE_NAME}
# or
$ make install ARGS=${PACKAGE_NAME}
```
### do stack command
```sh
$ docker-compose run --workdir=/stack/wd stack stack ${COMMAND} ${ARGS}
# or
$ make do COMM=${COMMAND} ARGS=${ARGS}
```
## LICENSE
* MIT, see LICENSE
