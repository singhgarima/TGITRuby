class QuestionsController < ApplicationController

  before_filter :authenticate_team!

  def solve
    to_attempt = params[:attempted].to_i + 1 
    @question = Question.find(to_attempt)
  end

  def check
    @question = Question.find(params[:attempted])
    if @question.answer.to_s == params[:answer].to_s
      current_team.questions_attempted = current_team.questions_attempted.to_i + 1 
      current_team.save
      redirect_to questions_solve_path(current_team.questions_attempted.to_i)
    else
      redirect_to questions_solve_path(current_team.questions_attempted.to_i), :notice => "keep trying.. :(:("
    end
  end
end
