class AddStatusToTaskManagements < ActiveRecord::Migration[6.0]
  def change
    add_column :task_managements, :status, :integer, default: 0
  end
end
