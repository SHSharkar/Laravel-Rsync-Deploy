FROM debian:stable-slim

RUN apt update
RUN apt -yq install rsync openssh-client

# Labels
LABEL "com.github.actions.name"="Laravel Rsync Deploy"
LABEL "com.github.actions.description"="Deploy Laravel developed project with Rsync"
LABEL "com.github.actions.color"="blue"
LABEL "com.github.actions.icon"="upload"

LABEL "repository"="https://github.com/SHSharkar/Laravel-Rsync-Deploy"
LABEL "homepage"="https://github.com/SHSharkar/Laravel-Rsync-Deploy"
LABEL "maintainer"="Md. Sazzad Hossain Sharkar <sh@sharkar.net>"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
