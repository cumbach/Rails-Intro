class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:name, :email)
  end

  # def create
  #   user = User.new(user_params)
  #   if user.save
  #     render json: user
  #   else
  #     render text: "nope"
  #   end
  # end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def index
    # user = User.find_by(id: params[:id])
    render json: User.all
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user
  end

  def update
    user = User.find_by(id: params[:id])
    if user.update(user_params)
      render json: user
    else
      render text: 'no'
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user.destroy(user_params)
      render json: user
    else
      render text: 'no'
    end
  end

end
