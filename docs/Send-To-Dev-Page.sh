#!/bin/bash
PORT=9003
CURRENT_BRANCH=$(git branch --show-current)

docker run -d --name path-cc-website-dev -p $PORT:$PORT --rm --volume $PWD:/srv/jekyll -it jekyll/jekyll:latest /bin/sh

docker exec path-cc-website-dev bundle install

docker exec path-cc-website-dev bundle exec jekyll build --config "_config.yml,_dev_config.yml"

# Hope this gets run after the docker build
sleep 5m

# Add the _site folder to docs and add it
git checkout --orphan gh-pages
mv _site docs
git add docs/.
git commit ./docs/. -m "Dev Pages"
git push --force --set-upstream origin gh-pages
git checkout -f $CURRENT_BRANCH
git branch -d gh-pages

docker container kill $(docker ps | awk '/path-cc-website-dev/ {print $1}')