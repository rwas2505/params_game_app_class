class Api::ParamsController < ApplicationController
  def show_name
    @result = params["name"].upcase
    if @result[0].downcase == "a"
      @result = "Hey, your name starts with the first letter of the alphabet, #{@result}!"
    else
      @result
    end
    render "show_name.json.jb"
  end

  def guess
    number = 21
    @reply = ""
    @guess = params["user_number"].to_i
    if @guess < number
      @reply = "Your guess of was too low!"
    elsif @guess > number
      @reply = "Your guess was too high!"
    else
      @reply = "That is correct!"
    end
    render "guess_number.json.jb"
  end
end
