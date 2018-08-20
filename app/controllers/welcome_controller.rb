class WelcomeController < ApplicationController
  require 'base64'

  def index
    @name = params[:n]

    if(@name.include? ' e ')
      @prefix = ", "
    else
      @prefix = " e "
    end

    @days_remaining = (Date.parse("2018-09-04") - Date.today).to_i
  end
end
