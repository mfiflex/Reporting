# Be sure to restart your server when you modify this file

# Load the rails application
#require File.expand_path('../application', __FILE__)

# Initialize the rails application
MFiFlexInternetBanking::Application.initialize!

# Specifies gem version of Rails to use when vendor/rails is not present
# RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
#require File.join(File.dirname(__FILE__), 'boot')

#Rails::Initializer.run do |config|
#  config.gem "asf-soap-adapter", :lib => 'asf-soap-adapter'
#  config.database_configuration_file = File.join(RAILS_ROOT, 'config', 'salesforce.yml')
#  config.time_zone = 'UTC'
#end

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
   :address => "smtp.gmail.com",
   :port => 587,
   :domain => "mfiflex.com",
   :authentication => 'plain',
   :user_name => "support@mfiflex.com",
   :password => "Plebeian123",
   :tls => true,
   :enable_starttls_auto => true 
}

#Notifier.deliver_email("snehal.fulzele@mfiflex.com")
