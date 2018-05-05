# usage
# make PRJ=projcet_name command
#
PRJ=myprj
COMM=build
.PHONY: usage ghci new build exec do

usage:
	@echo Usage: make PRJ=project_name command
	@echo [debug] PRJ: $(PRJ)

ghci:
	$(MAKE) do COMM=ghci PRJ=

new:
	$(MAKE) do COMM=new

build:
	$(MAKE) do COMM=build

exec: build
	$(MAKE) do COMM=exec ARGS=$(PRJ)-exe

do:
	docker-compose run --workdir=/stack/$(PRJ) stack stack $(COMM) $(ARGS)
