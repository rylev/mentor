class ProgrammingLanguage < ActiveRecord::Base
  has_many :characteristics, through: :descriptions
end