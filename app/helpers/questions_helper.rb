module QuestionsHelper

  def next_user_question
    assigned = current_user.question_assignments.map(&:question)
    answered = current_user.answers.map(&:choice).map(&:question)

    UserQuestion.find_by(question_id: (assigned - answered).first.id)
  end

end
