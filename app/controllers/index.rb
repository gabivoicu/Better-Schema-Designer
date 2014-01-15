get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/info' do
  Demo.new(self).info
end
