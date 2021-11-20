compose:
	docker-compose up
compose-down:
	docker-compose down
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit
compose-dev:
	docker-compose -f docker-compose.yml up

.PHONY: compose compose-down ci compose-dev