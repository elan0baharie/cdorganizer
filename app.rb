require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/cdcatalog')

get('/') do
  erb(:index)
end
#
# get('/cdcataloger') do
#   @allcds = NewCD.all()
#   erb(:cdview)
# end

post('/cdcataloger') do
  name = params.fetch('title')
  NewCD.new(name).save()
  @cd = NewCD.all()
  erb(:cdview)
end
