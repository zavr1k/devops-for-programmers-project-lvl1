compose:
	docker-compose up -d
copmose-build:
	docker-compose build
compose-logs:
	docker-compose logs -f
compose-down:
	docker-compose down
compose-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit
