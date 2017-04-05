require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)
# include all subdirectories 
 
module Cv
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
config.active_job.queue_adapter = :delayed_job

# include all subdirectories 
config.autoload_paths += Dir["#{config.root}/lib/**/"]  
config.cache_store = :redis_store, "redis://l27.0.0.1:6379/0/cache", { expires_in: 90.minutes }
  end
end
