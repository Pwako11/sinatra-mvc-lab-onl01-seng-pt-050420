require_relative 'config/environment.rb'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base

 get '/' do
   erb :user_input
 end

 post '/' do
   @user_phrase = PigLatinizer.new(params[:user_text])
   erb :results
 end

 get '/results' do
   erb :results
 end

end
