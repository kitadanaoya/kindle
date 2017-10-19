class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "アカウントの作成に成功しました！"
      redirect_to @user
    else
      flash.now[:danger] = "入力が間違っています。もう一度お試しください。"
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
  end
end
