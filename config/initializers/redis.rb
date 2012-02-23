# if ENV['REDISTOGO_URL'].blank?
#   config = YAML::load(File.open("#{ Rails.root }/config/redis.yml"))[Rails.env]

#   REDIS_STORE_URL = if config['url'].blank?
#     host     = config['host'] || 'localhost'
#     port     = config['port'] || 6379
#     user     = config['user'].presence
#     password = config['password'].presence

#     URI::Generic.build(scheme: 'redis', userinfo: [user, password], host: host, port: port).to_s
#   else
#     config['url']
#   end
# else
#   REDIS_STORE_URL = ENV['REDISTOGO_URL']
# end

# uri = URI.parse(REDIS_STORE_URL)
# REDIS = Redis.new(host: uri.host, port: uri.port, user: uri.user, password: uri.password)
# REDIS.ping