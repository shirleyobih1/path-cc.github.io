# PATh - Partnership to Advance Throughput Computing

[PATh](https://path-cc.io/) brings together the Center for High Throughput Computing and the Open Science Grid in order to advance the nation’s campuses and science communities through the use of distributed High Throughput Computing.

Thie website is a [Jekyll](https://jekyllrb.com/) based website.  The theme is based on [Jekyll-Serif](https://github.com/zerostaticthemes/jekyll-serif-theme).  Please create a pull request to modify the website.

# Installation

### Installing Ruby & Jekyll
 
If this is your first time using Jekyll, please follow the [Jekyll docs](https://jekyllrb.com/docs/installation/) and make sure your local environment (including Ruby) is setup correctly.

### Installing Theme

Download or clone the theme.

To run the theme locally, navigate to the theme directory and run:

```
$ bundle install
``` 

$ To start the Jekyll local development server.

```
$ bundle exec jekyll serve
``` 

To build the website.
 
```
$ bundle exec jekyll build
```

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
