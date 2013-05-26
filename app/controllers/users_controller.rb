class UsersController < ApplicationController
  respond_to :html, :json
  before_filter :load_current_user

  def show
    respond_with @user
  end

  def edit
  end

  def update
    if @user.nil?
      redirect_to root_path
    elsif @user.update_attributes params[:user]
      redirect_to greeting_path
    end
  end

  private
  def load_current_user
    @user = current_user
  end
end
