class Answer < ActiveRecord::Base
  has_many :answer_weights
  belongs_to :question
end
