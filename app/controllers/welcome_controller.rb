class WelcomeController < ApplicationController
  require 'base64'

  def index
    @name = str_decode(params[:n])

    @days_remaining = (Date.parse("2018-09-04") - Date.today).to_i
  end

  def generator
    redirect_to '/' << str_encode(params[:n])
  end

  private

  def str_encode str
    Base64.encode64(str)
  end

  def str_decode str
    Base64.decode64(str).force_encoding('UTF-8')
  end
end
