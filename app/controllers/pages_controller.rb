class PagesController < ApplicationController
  layout false
  skip_before_filter :authenticate_user, only: [:land]

  def land
  end

  def greeting
    render 'greeting', layout: 'application'
  end
end
