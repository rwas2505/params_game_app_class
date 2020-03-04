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
end
