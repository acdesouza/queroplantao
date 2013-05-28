class PagesController < ApplicationController
  skip_before_filter :authenticate_user, only: [:land]

  def land
  end

  def greeting
  end
end
