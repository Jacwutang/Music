class SessionsController < ApplicationController
  def new
    render :new
  end


  def create
    user = User.find_by_credentials(
      params[:user][:email],
      params[:user][:password]
    )

    if user.nil?
      flash.now[:errors] = ["Wrong Credentials"]
      render :new
    else
      login_user!(user)
        #redirect to user show page
      redirect_to user_url(user)


    end

  end


  def destroy
    logout!
    redirect_to new_session_url
  end





end
