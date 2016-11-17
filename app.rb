require('sinatra')
require('sinatra/reloader')
require('./lib/coin')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin-form') do
  @coin_input = params.fetch('coin')
  @coin_output = (@coin_input.to_i).coin_combination()
  erb(:coin_output)
end
