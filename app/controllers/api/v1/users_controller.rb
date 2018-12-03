class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :delete]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: {error: 'Unable to create user.'}
    end
  end

  def update
    @user.update(user_params)
    render json: @user
  end

  def delete
    @user.destroy
    render json: {message: 'The user has been deleted!'}
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(
      :username
    )
  end
end
