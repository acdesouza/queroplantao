class PagesController < ApplicationController
  skip_before_filter :authenticate_user, only: [:land]

  def land
    unless current_user.nil?
      if current_user.phone.nil?
        redirect_to edit_user_path
      else
        redirect_to greeting_path
      end
    end
  end

  def greeting
  end
end
