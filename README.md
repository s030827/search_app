# README

01-basic

* docker run --name elasticsearch-rails-searchapp --publish 9200:9200 --env "discovery.type=single-node" --env "cluster.name=elasticsearch-rails" --env "cluster.routing.allocation.disk.threshold_enabled=false" --rm docker.elastic.co/elasticsearch/elasticsearch-oss:6.4.0

* run  "rails runner 'Article.__elasticsearch__.create_index! force: true'"

* rake "db:seed"

02-pretty.rb

* docker run --name elasticsearch-rails-searchapp --publish 9200:9200 --env "discovery.type=single-node" --env "cluster.name=elasticsearch-rails" --env "cluster.routing.allocation.disk.threshold_enabled=false" --rm docker.elastic.co/elasticsearch/elasticsearch-oss:6.4.0

* generate "kaminari:views", "bootstrap3", "--force"

* run  "rails runner 'Article.__elasticsearch__.create_index! force: true'"

* rake "db:seed COUNT=1000"

03-expert

* docker run --name elasticsearch-rails-searchapp --publish 9200:9200 --env "discovery.type=single-node" --env "cluster.name=elasticsearch-rails" --env "cluster.routing.allocation.disk.threshold_enabled=false" --rm docker.elastic.co/elasticsearch/elasticsearch-oss:6.4.0

* bundle exec sidekiq --queue elasticsearch --verbose

* cd db/ && wget https://raw.githubusercontent.com/elastic/elasticsearch-rails/master/elasticsearch-rails/lib/rails/templates/articles.yml.gz

* rails db:reset

* rails environment elasticsearch:import:model CLASS='Article' BATCH=100 FORCE=y



