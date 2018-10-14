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

  @answer = 5

  def numbers
    if (1..100).include? @answer.to_i
      @answer = rand(1..6)
    end
    @answer = 5
    puts "current @answer: #{@answer}"
    p @answer
    user_guess
  end

  def user_guess
    @guess = params[:guess].to_i
    # p @guess
    # p @answer
    if @guess == @answer
      @message = "CORRECT"
    elsif @guess < @answer
      puts "Guess too low"
      @message = "Too low"
    elsif @guess > @answer
      puts "Guess too high"
      @message = "Too high"
    end 
    render "numbers_game.json.jbuilder"
  end
end
