redis = {
  url: ENV['REDIS_SIDEKIQ_URL'],
  namespace: "sk_#{Rails.application.class.parent_name.underscore}"
}

Sidekiq.configure_server do |config|
  config.redis = redis
end

Sidekiq.configure_client do |config|
  config.redis = redis
end