class IdeasController < ApplicationController
  before_action :set_challenge

  def create
    @idea = @challenge.ideas.create(idea_params)
    redirect_to @challenge
  end

  def destroy
    @idea = @challenge.ideas.find(params[:id])
    if @idea.destroy
      flash[:success] = "Idea was deleted."
    else
      flash[:error] = "Idea could not be deleted."
    end

    redirect_to @challenge
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:challenge_id])
  end

  def idea_params
    params[:idea].permit(:title, :content)
  end

end
