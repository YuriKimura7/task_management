class TaskManagement < ApplicationRecord
  validates :title, presence: true
  validates :deadline, presence: true
  validates :title, length: { maximum: 20 }

  enum status:{ "未着手": 0, "着手": 1, "完了": 2 }
end
