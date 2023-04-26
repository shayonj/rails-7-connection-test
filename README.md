# Test repo

Setup based on: https://github.com/ryanwi/rails7-on-docker

### Setup

If setting up ruby locally:

- Install rbenv / rvm
- `rbenv install 3.2.2`
- bundle install
- bundle rake db:setup

Using Docker

- Start DB: `docker compose up db`
- Spin up console: `docker compose run --rm console`
