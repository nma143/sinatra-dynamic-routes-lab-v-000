require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # Accepts a name and renders the name backwards.
  get '/reversename/:name' do
    @name= params[:name]
    @reversename = @name.reverse
    "#{@reversename}"
  end

  # Accepts a number and returns the square of that number
  get '/square/:number' do
    @num= params[:number].to_i
    "#{@num*@num}"
  end

  # Accepts a number and a phrase and returns that phrase in a string the number of times given
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @count = 0
    while @count <= @num
      @count = @count +1
      "#{@phrase}"
     end
  end

end
