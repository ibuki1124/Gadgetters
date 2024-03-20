class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @gadgets = @user.gadgets
  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to users_path
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), success: "プロフィールを更新しました"
    else
      render :edit
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :icon_image)
  end
end
