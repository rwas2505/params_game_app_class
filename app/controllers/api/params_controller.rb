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
      @reply = "Your guess of was #{@guess} too low!"
    elsif @guess > number
      @reply = "Your guess of #{@guess} was too high!"
    else
      @reply = "#{@guess} is correct!"
    end
    render "guess_number.json.jb"
  end


  # To do delete below method and make the url segment param reference the guess method and rename the key to match

  def segment
    number = 21
    @guess = params[:number].to_i
    if @guess < number
      @reply = "Your guess of #{@guess} was  too low!"
    elsif @guess > number
      @reply = "Your guess of #{@guess} was too high!"
    else
      @reply = "#{@guess} is correct!"
    end
    render "segment_param.json.jb"
  end

  def posted
    number = 21
    @guess = params[:user_number].to_i
    p @guess
    if @guess < number
      @reply = "Your guess of #{@guess} was  too low!"
    elsif @guess > number
      @reply = "Your guess of #{@guess} was too high!"
    else
      @reply = "#{@guess} is correct!"
    end
    render 'post_route.json.jb'
  end

  def login
    user_name = params[:user_name]
    password = params[:password]
    if user_name == "hugh" && password == "swordfish"
      @reply = "Valid Credentials"
    else
      @reply = "Invalid Credentials"
    end
    render "login.json.jb"
  end
end
