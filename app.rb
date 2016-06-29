require('sinatra')
require('sinatra/reloader')
require('./lib/title_case')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/index') do
  @title = params.fetch('title').title_case()
  erb(:title)
end
