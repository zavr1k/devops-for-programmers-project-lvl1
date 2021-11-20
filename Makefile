compose:
	docker-compose up
compose-down:
	docker-compose down
compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit
compose-dev:
	docker-compose -f docker-compose.yml up