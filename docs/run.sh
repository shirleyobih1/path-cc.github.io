docker container kill $(docker ps | awk '/path-cc-website/ {print $1}')

PORT=8003

docker run --name path-cc-website -p $PORT:$PORT --rm --volume $PWD:/srv/jekyll -it jekyll/jekyll:latest /bin/sh

jekyll serve --watch -H 0.0.0.0 -P 8003
