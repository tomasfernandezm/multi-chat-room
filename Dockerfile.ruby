FROM ruby

CMD  ggem install redis \
     && wget http://download.redis.io/redis-stable/src/redis-trib.rb \
     && ruby redis-trib.rb create --replicas 1 \
     multi-chat-room_redis_1:6379; \
     multi-chat-room_redis_2:6379; \
     multi-chat-room_redis_3:6379; \
     multi-chat-room_redis_4:6379; \
     multi-chat-room_redis_5:6379; \
     multi-chat-room_redis_6:6379;'