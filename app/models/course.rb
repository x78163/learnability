class Course < ApplicationRecord
  belongs_to :establishment
  has_many :reviews, through: :appointments
  validates :title, presence: true
  validates :price, presence: true
  validates :category,  presence: true, inclusion: { in: %w[free-time sports programming languages cooking enterteinment art other], allow_nil: false }
end
