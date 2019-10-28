class CreateTaskManagements < ActiveRecord::Migration[6.0]
  def change
    create_table :task_managements do |t|
      t.string :title
      t.date :deadline
      t.text :memo

      t.timestamps
    end
  end
end
