class QuestionsController < ApplicationController

  before_filter :authenticate_team!

  def solve
    to_attempt = params[:attempted].to_i + 1
    redirect_to questions_solve_path(current_team.questions_attempted.to_i) and return if params[:attempted].to_i != current_team.questions_attempted.to_i
    @question = Question.find_by_id(to_attempt)
    redirect_to completed_path if @question.blank?
  end

  def check
    @question = Question.find(params[:attempted])
    redirect_to completed_path if @question.blank?
    if @question.answer.to_s.downcase == params[:answer].to_s.downcase
      current_team.questions_attempted = current_team.questions_attempted.to_i + 1 
      current_team.save
      redirect_to questions_solve_path(current_team.questions_attempted.to_i)
    else
      redirect_to questions_solve_path(current_team.questions_attempted.to_i), :notice => "keep trying.. :(:("
    end
  end
end
