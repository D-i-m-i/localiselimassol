class LocalExperiencesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @localexperiences = LocalExperience.all
  end
end
