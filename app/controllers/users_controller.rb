class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]
  before_action :set_user, only: [:follow, :unfollow, :show, :update]

  def index
    @users = User.all
    render json: { user: @users }
  end

  def show
    render json: { user: @user }
  end

  def follow
    current_user.follow(params[:id])
    render json: { user: @users }
  end

  def unfollow
    current_user.unfollow(params[:id])
    render json: { user: @users }
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

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    render json: @user
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
    params.permit(:id, :email, :name, :password, :age, :description, :linkedin, :github, :learns, :carrers, :instructs )
  end
end
