FROM debian:stretch-slim

LABEL "com.github.actions.name"="Check repository"
LABEL "com.github.actions.description"="Run repository tests"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/guillon/test-workflow"
LABEL "homepage"="https://github.com/guillon/test-workflow"
LABEL "maintainer"="Christophe Guillon <christophe.guillon.perso@gmail.com>"

COPY docker-entrypoint.sh /dockerfiles/action-check/docker-entrypoint.sh
ENTRYPOINT ["/dockerfiles/action-check/docker-entrypoint.sh"]
