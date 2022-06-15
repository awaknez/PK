class CreateTeamUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :team_users do |t|
      t.references :team,           fareign_key:true
      t.references :user,           fareign_key:true
      t.timestamps
    end
  end
end
