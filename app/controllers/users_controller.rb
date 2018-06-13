class UsersController < ApplicationController
  before_action :require_current_user!, except: [:create,:new]

  def new
    @user = User.new
    render :new
  end

  def show
    render :show
  end

  def create
    @user = User.new(user_params)

    if @user.save

      login_user!(@user)
      #redirect to user show page
      redirect_to user_url(@user)

    else
      flash.now[:errors] = @user.errors.full_messages
      render :new

    end
  end





  private

  def user_params
    params.require(:user).permit(:email, :password)
  end






end
