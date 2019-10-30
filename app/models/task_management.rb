class TaskManagement < ApplicationRecord
  validates :title, presence: true
  validates :deadline, presence: true
  validates :title, length: { maximum: 20 }
  enum status:{ backlog: 0, wip: 1, closed: 2 }
  validate :check_status

  def check_status
    if status == "wip" && TaskManagement.where(status: "wip").count >= 1
      unless status == "wip"
        errors.add(:status, "は着手中です")
      end
    end
  end
end
