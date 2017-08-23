# GitHub GraphQL API: Query Samples

This repository holds query samples for the GitHub GraphQL API. It's an easy way to get started using the GraphQL API for common workflows. You can copy and paste these queries into [GraphQL Explorer](https://developer.github.com/early-access/graphql/explorer) or you can use the included script.

### How to use the included script

1. Generate a [personal access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for use with these queries. Set is as an environment variable called `GITHUB_TOKEN`: `export GITHUB_TOKEN=<OAuth Token>`
1. Run `script/bootstrap` to install the required Ruby gem dependencies
1. Pick the name of one of the included queries like `viewer.graphql`.
1. Run `script/query viewer`.
