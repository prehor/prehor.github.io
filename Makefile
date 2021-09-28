JEKYLL_VERSION		?= 4
JEKYLL_IMAGE		?= jekyll/builder

GITHUB_USERNAME		= $(shell basename $$(dirname $$(git config --get remote.origin.url)))
GITHUB_REPOSITORY	= $(shell basename -s .git $$(git config --get remote.origin.url))
PAGES_REPO_NWO		= $(GITHUB_USERNAME)/$(GITHUB_REPOSITORY)

DOCKER_COMPOSE		= env \
			  JEKYLL_VERSION=$(JEKYLL_VERSION) \
			  docker-compose

all: clean up logs

update: bundle-clean all

up:
	@set -x; \
	${DOCKER_COMPOSE} up -d

logs:
	@set -x; \
	${DOCKER_COMPOSE} logs -f

down:
	@set -x; \
	${DOCKER_COMPOSE} down

clean: down
	@set -x; \
	rm -rf _site .jekyll-cache .jekyll-metadata .sass-cache

bundle-clean: clean
	@set -x; \
	rm -f Gemfile.lock
