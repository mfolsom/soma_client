require 'sinatra/base'
require_relative 'soma'

class Client < Sinatra::Base

  def soma
    Soma.new ENV['BASE_URL'] || 'http://localhost:3000'
  end

  get '/' do
    @data = soma.get_hb
    erb :index
  end

  get '/results' do
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
