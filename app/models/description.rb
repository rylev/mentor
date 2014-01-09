class Description < ActiveRecord::Base
  belongs_to :characteristic
  belongs_to :programming_language
end