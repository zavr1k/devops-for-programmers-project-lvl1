compose:
	docker-compose up -d
compose-build:
	docker-compose build
compose-logs:
	docker-compose logs -f
compose-down:
	docker-compose down || true
compose-stop:
	docker-compose stop || true
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit
compose-dev:
	docker-compose -f docker-compose.yml up

.PHONY: compose compose-down ci compose-dev compose-build