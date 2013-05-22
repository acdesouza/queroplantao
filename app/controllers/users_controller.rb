class UsersController < ApplicationController
  respond_to :html, :json

  def show
    @user = current_user

    respond_with @user
  end

  def edit
    @user = current_user
  end
end
