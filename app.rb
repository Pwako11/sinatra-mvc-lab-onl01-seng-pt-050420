require_relative 'config/environment.rb'
require_relative 'models/piglatinizer.rb'


class App < Sinatra::Base

 get '/' do
   erb :user_input
 end

 post '/piglatinize' do
   @user_phrase = PigLatinizer.new(params[:user_text])
   erb :piglatinize
 end

 get '/piglatinize' do
   erb :piglatinize
 end

end
