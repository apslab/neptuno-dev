require 'compass'
require 'compass/app_integration/rails'

# hack for heroku works
Compass.configuration.sass_options = {:never_update => true} if Rails.env.production?

#Compass::AppIntegration::Rails.initialize!
