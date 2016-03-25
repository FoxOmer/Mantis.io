class FoundersController < ApplicationController

  def new
    @founder = Founder.new
  end

  def create
    @founder = Founder.create!(founder_params)
    redirect_to "/questions/new"
  end

  private
  def founder_params
    params.require(:founder).permit(:name, :about_me, :mission_state, :company_description, :company_status)
  end
end
