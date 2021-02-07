class LearnsController < ApplicationController
  def index
    @learns = Learn.all
    render json: { user: @user }
  end
end
