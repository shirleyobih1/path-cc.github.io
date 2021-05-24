# PATh - Partnership to Advance Throughput Computing

[PATh](https://path-cc.io/) brings together the Center for High Throughput Computing and the OSG in order to advance the nation’s campuses and science communities through the use of distributed High Throughput Computing.

Thie website is a [Jekyll](https://jekyllrb.com/) based website.  The theme is based on [Jekyll-Serif](https://github.com/zerostaticthemes/jekyll-serif-theme).  Please create a pull request to modify the website.

# Installation

### Installing Ruby & Jekyll
 
If this is your first time using Jekyll, please follow the [Jekyll docs](https://jekyllrb.com/docs/installation/) and make sure your local environment (including Ruby) is setup correctly.

### Using Docker for Development

Depending on your environment, it may be more useful to run Jekyll inside a container.  To do this, run the following from your laptop while inside the checked-out copy of the website source:

```
docker run -p 8000:8000 --rm --volume $PWD:/srv/jekyll -it jekyll/jekyll:latest /bin/sh
```

This will utilize the latest Jekyll version and map port `8000` to your host.  Within the container, a small HTTP server can be started with the following command:

```
jekyll serve --watch -H 0.0.0.0 -P 8000
```

This will build and serve the website; it can be viewed by navigating your web browser to <http://localhost:8000>.

With the `--watch` flag set, any changes you make to the website source will cause a new version of the website to be built; it usually takes 4-5 seconds between hitting "Save" and then "Refresh" on the website.

# Making Website Changes

This repository uses [GitHub Actions](https://github.com/path-cc/path-cc.github.io/tree/master/.github/worfklows)
to deploy a website preview from the `master` branch to the [web-preview repository](https://path-cc.io/web-preview/).
The production website (https://path-cc.io/) is built automatically by GitHub Pages from the `production` branch.

To make changes to the website, use the following workflow:

1.  Submit a pull request with website updates to the `master` branch (the default) and request a review
1.  Upon approval and merge of the pull request, changes can be previewed at https://path-cc.io/web-preview/
1.  If additional changes are necessary, repeat steps 1 and 2.
1.  When satisfied with the preview website, submit a
    [pull request](https://github.com/path-cc/path-cc.github.io/compare/production...master?expand=1)
    from `production` to `master`
1.  After the pull request from step 4 has been merged, verify the changes at https://path-cc.io
