class IdeasController < ApplicationController
  before_action :set_challenge

  def create
    @idea = @challenge.ideas.create(idea_params)
    redirect_to @challenge
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:challenge_id])
  end

  def idea_params
    params[:idea].permit(:title, :description)
  end




end
