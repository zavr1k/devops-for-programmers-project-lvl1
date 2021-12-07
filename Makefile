compose-down:
	docker-compose down || true
compose-stop:
	docker-compose stop || true
prepare:
	cp -n .env.example .env || true
ci: prepare
	docker-compose -f docker-compose.yml up --abort-on-container-exit
dev:
	docker-compose up

.PHONY: compose-down compose-stop ci dev prepare