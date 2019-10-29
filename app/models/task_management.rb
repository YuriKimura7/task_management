class TaskManagement < ApplicationRecord
  validates :title, presence: true
  validates :deadline, presence: true
  validates :title, length: { maximum: 20 }
end
