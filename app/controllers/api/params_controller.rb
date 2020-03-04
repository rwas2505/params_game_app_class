class Api::ParamsController < ApplicationController
  def show_name
    render "show_name.json.jb"
  end
end
