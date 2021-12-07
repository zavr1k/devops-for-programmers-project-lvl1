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
prepare:
	cp -n .env.example .env || true
ci: prepare
	docker-compose -f docker-compose.yml up --abort-on-container-exit
compose-dev:
	docker-compose up

.PHONY: compose compose-down ci compose-dev compose-build prepare
