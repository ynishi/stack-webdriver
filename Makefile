# usage
# make PRJ=projcet_name command
#
PRJ=myprj
COMM=build
.PHONY: new build exec do

usage:
	@echo Usage: make PRJ=project_name command
	@echo [debug] PRJ: $(PRJ)

ghci:
	$(MAKE) do COMM=ghci PRJ=

build:
	$(MAKE) do COMM=build

exec: build
	$(MAKE) do COMM=exec ARGS=$(PRJ)-exe

new:
	$(MAKE) do COMM=new

do:
	docker-compose run --workdir=/stack/$(PRJ) stack stack $(COMM) $(ARGS)
