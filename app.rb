require 'sinatra/base'
require './lib/peep'
require './database_connection_setup'

class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/peep' do
    erb :peep
  end

  post '/timeline' do
    @peeps = Peep.all
    erb :timeline
  end

  run if app_file == $0
end