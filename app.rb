require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
      erb :user_phrase
    end

    post '/piglatinize' do
      user_phrase= PigLatinizer.new
      @end_result= user_phrase.to_pig_latin(params[:user_phrase])
      erb :piglatinize
    end
end
