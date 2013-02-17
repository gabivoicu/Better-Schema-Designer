# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

configure do
  # See: http://www.sinatrarb.com/faq.html#sessions
  enable :sessions
  set :session_secret, ENV['SESSION_SECRET'] || 'this is a secret shhhhh'
end

run Sinatra::Application
