# n8n community dockerized

This repo is super small. Simply a docker compose setup to run a n8n instance with a postgres database.

from [https://docs.n8n.io/hosting/installation/docker/](https://docs.n8n.io/hosting/installation/docker/)

> [!WARNING]
> This is meant for development purposes only. You'll need to add security and secret management for production use.

## Requirements

- Docker
- Docker Compose
- Make

## Usage

#### first time setup
1. Clone this repo
2. Run `make build`
3. Run `make start` to start the n8n instance
4. Visit `http://localhost:5678` in your browser
5. Follow the on screen instructions to setup your n8n admin user
6. Once you're done, you can stop the n8n instance by running `make stop`

#### subsequent runs
1. Run `make start` to start the n8n instance
2. Visit `http://localhost:5678` in your browser
3. Once you're done, you can stop the n8n instance by running `make stop`

### safely clean space (keeping all data)
1. Run `make stop`
2. Run `make clean`

### clean everything
1. Run `make stop`
2. Run `make docker-clean-all`