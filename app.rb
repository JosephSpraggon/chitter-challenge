require 'sinatra/base'

class Chitter < Sinatra::Base

  # enable :sessions
  # set :sessions_secret, 'super secret'

  get '/' do
    'Welcome to Chitter'
  end

  get '/post_peep' do
    erb :post_peep
  end

  post'/timeline' do
    @peep = params[:peep]
    erb :timeline
  end



  run if app_file == $0
end