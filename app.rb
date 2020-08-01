require_relative 'config/environment'
require_relative 'models/PigLatinizer'


class App < Sinatra::Base

 get '/' do

   erb :user_input
 end

 post '/' do

   @Pig_Latin = PigLatinizer.new(params[:user_text])
   erb :results
 end

end
