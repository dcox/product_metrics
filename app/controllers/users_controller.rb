class UsersController < ApplicationController
  def create
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end
end
