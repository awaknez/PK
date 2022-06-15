class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string     :project_name,   null:false
      t.date       :start_day,      null:false
      t.date       :deadline,       null:false
      t.references :team,           fareign_key:true
      t.timestamps
    end
  end
end
