class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user, status: 200
    else
      render json: {message: 'User not found'}, status: 404
    end
  end

  def update
    user = User.find_by(id: params[:id])
    if user
      user.update(user_params)
      redirect_to user_url(user)
    else
      render json: {message: 'User not found'}, status: 404
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy unless user.nil?
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end



end
