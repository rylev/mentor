class AnswerWeight < ActiveRecord::Model
  belongs_to :answer
  belongs_to :characteristic
end