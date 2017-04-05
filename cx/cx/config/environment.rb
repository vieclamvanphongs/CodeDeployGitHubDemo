# Load the Rails application.
require_relative 'application'
require 'delayed_job'

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
  :user_name => 'vieclamvanphongs@gmail.com',
  :password => 'aw205497105',
  :domain => 'vieclamvanphongs.com',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}