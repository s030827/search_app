# README

01-basic

* docker run --name elasticsearch-rails-searchapp --publish 9200:9200 --env "discovery.type=single-node" --env "cluster.name=elasticsearch-rails" --env "cluster.routing.allocation.disk.threshold_enabled=false" --rm docker.elastic.co/elasticsearch/elasticsearch-oss:6.4.0

* run "Article.__elasticsearch__.create_index! force: true
* run "rails db:seed"

02-pretty.rb

* docker run --name elasticsearch-rails-searchapp --publish 9200:9200 --env "discovery.type=single-node" --env "cluster.name=elasticsearch-rails" --env "cluster.routing.allocation.disk.threshold_enabled=false" --rm docker.elastic.co/elasticsearch/elasticsearch-oss:6.4.0

* run "rails generate kaminari:views bootstrap3 --force"
* run "Article.__elasticsearch__.create_index! force: true"
* run "rails db:seed COUNT=1000"

03-expert

* docker run --name elasticsearch-rails-searchapp --publish 9200:9200 --env "discovery.type=single-node" --env "cluster.name=elasticsearch-rails" --env "cluster.routing.allocation.disk.threshold_enabled=false" --rm docker.elastic.co/elasticsearch/elasticsearch-oss:6.4.0

* run "bundle exec sidekiq --queue elasticsearch --verbose"
* run "cd db/ && wget https://raw.githubusercontent.com/elastic/elasticsearch-rails/master/elasticsearch-rails/lib/rails/templates/articles.yml.gz"
* run "rails db:reset"
* run "rails environment elasticsearch:import:model CLASS='Article' BATCH=100 FORCE=y"



