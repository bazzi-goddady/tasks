class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 250 }
  validates :description, length: { maximum: 2500 }
  validates :due_date, comparison: { greater_than_or_equal_to: Date.today }
end