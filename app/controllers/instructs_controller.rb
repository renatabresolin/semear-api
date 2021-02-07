class InstructsController < ApplicationController
  def index
    @instructs = Instruct.all
    render json: { user: @user }
  end
end
