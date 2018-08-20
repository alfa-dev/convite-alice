class WelcomeController < ApplicationController
  require 'base64'

  def index

    @name = params[:n].nil? ? 'você' : params[:n]

    if !@name.nil? && @name.include?(' e ') then
      @prefix = ", "
    else
      @prefix = " e "
    end

    @days_remaining = (Date.parse("2018-09-04") - Date.today).to_i
  end

  def maps

  end
end
