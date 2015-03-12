class AnswersController < ApplicationController
  before_action :authenticate_user!

  def index
    @answers = current_user.answers
  end

  def create
    if new_answer.save
      redirect_to next_user_question || :root
    else
      render :new
    end
  end

private

  def new_answer
    current_user.answers.build(answer_params)
  end

  def answer_params
    params.require(:answer).permit(:choice_id)
  end
end
