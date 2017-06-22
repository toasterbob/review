
# phoenix - concurrency - real time chats

#database indexing
#poorly written queries

# benchmark and profile app
# tools
# -ruby-prof - gem that shows performance
# rack-mini-profiler -gem- more comprehensive than ruby-prof

#Heroku has a free tier - benchmarking

# 2. write better queries
# don't write n + 1 queries
# use .includes @user = User.find(id).includes
# eager loading
User.eager_load(:addresses)
User.includes(:addresses)

#becareful not to load lots of unnecessary data

# 3. Cache
# app servers not free - only use when you really need to
#HTTP caching - great when your content doesn't change over time
#Application caching

#varnish - sits between client and app servers - keeps info cached - serves info back without going to
# server on next request

#key-value storage - memcache and redis
#fast lookup - no trip to the database

#cache invalidation

# 4. do things later - transactional email sent later

#background workers - delayed job, sidekiq, resque

#learn how to properly index your database
#denormalize frequently looked up data - store address on user table if you need it all the time
#do your math in your database
#select only what you need
#use a CDN
#remove gems and middlewares you don't use




#
