# GitHub API demos

This repository contains basic API demos for both the GitHub [REST API v3](https://developer.github.com/v3/) and [GraphQL API v4](https://developer.github.com/v4/).

## Contents & prerequisites

### Bash (w/ [`jq`](https://github.com/stedolan/jq))

The `/bash` directory contains sample Bash scripts that access the REST API v3. Because parsing JSON can be challenging, we use the [`jq`](https://github.com/stedolan/jq)) library to do some of the heavy lifting for us. See the `jq` project README for installation instructions. Mac users will be best served by installing via [Homebrew](https://brew.sh/), e.g.: `brew install jq`.

### Ruby

The `/ruby` directory contains sample [Ruby](https://www.ruby-lang.org/en/) scripts that access the REST API v3. To use these, you'll want to install a 2.x version of Ruby on your computer using the [instructions from the download page](https://www.ruby-lang.org/en/downloads/). Mac users should be able to run these scripts directly.

Note that we also use the [Octokit](http://octokit.github.io) library to do the heavy lifting of interacting with the GitHub API. Octokit wraps the raw API calls in language-specific methods.

### GraphQL

The `/graphql` directory contains sample [GraphQL](http://graphql.org) queries and a lightweight script to POST these queries to the GraphQL API v4. The included `run-query` script also requires Ruby, though as an alternative, you can run GitHub GraphQL queries using the web-based [GraphQL Explorer](https://developer.github.com/v4/explorer/).
