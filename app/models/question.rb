class Question < ActiveRecord::Base
  has_many :choices, dependent: :destroy
  has_many :correct_choices, dependent: :destroy
  has_many :user_questions
end
