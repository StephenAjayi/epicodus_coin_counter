require('sinatra')
require('sinatra/reloader')
require('./lib/coin_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/final_tally') do

  @change = params.fetch('change').to_i().coin_counter()
  # @dimes  = params.fetch('change').coin_counter()
  # @nickels = params.fetch('change').coin_counter()
  # @pennies = params.fetch('change').coin_counter()
  erb(:final_tally)
end
