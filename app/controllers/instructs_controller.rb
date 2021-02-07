class InstructsController < ApplicationController
  def index
    @instructs = Instruct.all
  end
end
