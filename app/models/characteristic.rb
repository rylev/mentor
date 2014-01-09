class Characteristic < ActiveRecord::Base
  has_many :answer_weights
  has_many :programming_languages, through: :descriptions
end