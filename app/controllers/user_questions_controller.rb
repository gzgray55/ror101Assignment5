class UserQuestionsController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to next_user_question || :root
  end

  def show
    question_assignments.find_by(question_id: params[:id])
  end

private

  def question_assignments
    @question_assignments ||= current_user.question_assignments
  end

  def question
    @question ||= question_assignments.find_by(question_id: params[:id])
  end
end
