#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

rails db:create
rails db:migrate RAILS_ENV=development
=======
docker-compose run web rake db:create
bin/rails db:migrate RAILS_ENV=development

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"