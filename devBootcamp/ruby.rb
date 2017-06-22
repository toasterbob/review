
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
