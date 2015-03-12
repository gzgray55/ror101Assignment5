class CorrectChoice < ActiveRecord::Base
  belongs_to :choice
  belongs_to :question
end
