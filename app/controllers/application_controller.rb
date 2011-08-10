class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource_or_scope)
    questions_solve_path(current_team.questions_attempted.to_i)
  end
  
end
