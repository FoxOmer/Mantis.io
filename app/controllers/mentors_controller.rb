class MentorsController < ApplicationController

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.create!(mentor_params)
    redirect_to "/feed"
    # @mentor = params[:mentor]
  end

  private
  def mentor_params
    params.require(:mentor).permit(:name, :profile_pic, :about, :topic)
  end

end
