all: build

build_sim:
	docker build -t offk/eth_simulator:local -f simulator/Dockerfile simulator

run_sim:
	@docker-compose run sim sh

run_client:
	@docker-compose up -d client