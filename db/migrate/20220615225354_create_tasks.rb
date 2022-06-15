class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string      :task_name,      null:false
      t.text        :detail
      t.date        :schedule_day
      t.date        :deadline
      t.references  :user,           fareign_key:true
      t.references  :project,        fareign_key:true
      t.timestamps
    end
  end
end
