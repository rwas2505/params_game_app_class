class Api::ParamsController < ApplicationController
  def show_name
    @name = params["name"].upcase
    render "show_name.json.jb"
  end
end
