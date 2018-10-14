class Api::GamesController < ApplicationController

  def name
    @name = params[:name]
    if @name[0].upcase == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    else
      @message = "nice name"
    end
    render "name_game.json.jbuilder"
  end
  @answer = 0
  def numbers
    if @answer == 0 
      @answer = rand(1..100)
    end
    user_guess
  end

  def user_guess
    @guess = params[:guess]
    @answer == @guess ? "CORRECT" : "WRONG"
    render "numbers_game.json.jbuilder"
  end
end
