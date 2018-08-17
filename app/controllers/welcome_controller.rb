class WelcomeController < ApplicationController

  def index
    @name = params[:name]
    @days_remaining = (Date.parse("2018-09-04") - Date.today).to_i
  end

end
