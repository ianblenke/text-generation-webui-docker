up:
	@if [ ! -f .env ]; then \
		echo "Please read the README. You need to copy the .env.example file to .env and edit it" ; \
		exit 1 ; \
	fi
	git submodule update --init --recursive
	docker-compose -f docker-compose.yml.build build
	docker-compose -f docker-compose.yml.build up --force-recreate -d
	docker-compose -f docker-compose.yml.build logs -f

