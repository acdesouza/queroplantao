class UsersController < ApplicationController
  respond_to :html, :json
  before_filter :load_current_user, only: [:show, :edit]

  def show
    respond_with @user
  end

  def edit
  end

  private
  def load_current_user
    @user = current_user
  end
end
