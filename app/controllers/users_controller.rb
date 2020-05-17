class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    # redirect_to
  end

  def index
    @users = User.all
  end

  def destroy
    user = User.find(params[:id])
    # user = User.find_by(id: params[:id])
    user.destroy
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end


  private

  def user_params
    params.require(:user).permit(:name, :age)
  end

end
