class CareersController < ApplicationController
  def index
    @careers = Career.all
    render json: { user: @user }
  end
end
