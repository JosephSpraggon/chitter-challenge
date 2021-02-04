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

  get '/timeline' do
    @peeps = Peep.all
    erb :timeline
  end

  post '/timeline' do
    Peep.create(peep: params['peep'])
    @peeps = Peep.all
    @time = Peep.time
    erb :timeline
  end

  run if app_file == $0
end