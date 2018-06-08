# usage
# make PRJ=projcet_name command
#
PRJ=wd
COMM=build
.PHONY: usage ghci new init build exec do

usage:
	@echo Usage: make PRJ=project_name command
	@echo [debug] PRJ: $(PRJ)

ghci:
	$(MAKE) do COMM=ghci

new:
	$(MAKE) do COMM=new ARGS=$(PRJ) PRJ=

init:
	$(MAKE) do COMM=init

build:
	$(MAKE) do COMM=build

exec: build
	$(MAKE) do COMM=exec ARGS=$(PRJ)-exe

install:
	$(MAKE) do COMM=install

do:
	docker-compose run --workdir=/stack/$(PRJ) stack stack $(COMM) $(ARGS)
