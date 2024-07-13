up:
	docker compose -f ganache-node.yml up -d && docker compose up -d
down:
	docker compose down\
	 && sudo rm -rf services/logs\
	 && sudo rm -rf services/*-data\
	 && docker compose -f ganache-node.yml down\
	 && sudo rm -rf lib/*
