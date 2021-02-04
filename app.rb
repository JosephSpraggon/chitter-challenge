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
    @timeline = Peep.all
    erb :timeline
  end

  post '/timeline' do
    Peep.create(peep: params['peep'])
    @timeline = Peep.all
    erb :timeline
  end

  run if app_file == $0
end