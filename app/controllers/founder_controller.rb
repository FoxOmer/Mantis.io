class FoundersController < ApplicationController

  def new
    @founder = Founder.new
  end

  def create
    @founder = Founder.create!(founder_params)
    redirect_to "/ask_questions"
  end

  private
  def founder_params
    params.require(:mentor).permit(:name, :profile_pic, :about, :topic)
  end

end
