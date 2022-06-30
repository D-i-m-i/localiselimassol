class LocalExperiencesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @localexperiences = LocalExperience.all
  end

  def show
    @localexperience = LocalExperience.find(params[:id])
  end
end
