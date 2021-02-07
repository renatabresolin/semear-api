class UsersController < ApplicationController
before_action :authorized, only: [:auto_login]
before_action :set_user, only: [:show]

  def index
    @users = User.all
  end

  def show
  end

  # REGISTER
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid email or password"}
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid email or password"}
    end
  end

  def auto_login
    render json: @user
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:email, :name, :password, :age, :description, :linkedin, :github, :learns =>[], :carrers => [], :learns => [])
  end
end
