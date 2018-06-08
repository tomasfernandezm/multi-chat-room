 
#!/usr/bin/env bash

for ind in `seq 1 6`; do \
 docker run -d -v $PWD/redis.conf:/usr/local/etc/redis/redis.conf \
 --name "redis-$ind" \
 --net red_cluster \
 redis redis-server /usr/local/etc/redis/redis.conf; \
done

echo 'yes' | docker run -i --rm --net red_cluster ruby sh -c '\
 gem install redis \
 && wget http://download.redis.io/redis-stable/src/redis-trib.rb \
 && ruby redis-trib.rb create --replicas 1 \
 '"$(for ind in `seq 1 6`; do \
  echo -n "$(docker inspect -f \
  '{{(index .NetworkSettings.Networks "red_cluster").IPAddress}}' \
  "redis-$ind")"':6379 '; \
  done)"