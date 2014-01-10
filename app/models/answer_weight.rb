class AnswerWeight < ActiveRecord::Model
  LOWEST_WEIGHT = 1
  HEIGHEST_WEIGHT = 5

  belongs_to :answer
  belongs_to :characteristic

  validates :weight, presence: true
  validate :weight_is_within_range

  private

  def weight_is_within_range
    unless weight.between?(LOWEST_WEIGHT, HEIGHEST_WEIGHT)
      errors.add(:weight, "must be within the range #{LOWEST_WEIGHT} to #{HEIGHEST_WEIGHT}")
    end
  end
end