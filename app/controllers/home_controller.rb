class HomeController < ApplicationController
  
  def index
    redirected_to questions_solve_path(current_team.questions_attempted) if team_signed_in?
  end
end
