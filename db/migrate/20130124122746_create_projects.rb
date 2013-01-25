class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_id
      t.string :name
      t.string :status
      t.string :sponsor
      t.string :cc
      t.string :coordinator
      t.string :backup_coordinator
      t.date :created_on
      t.date :last_action
      t.string :ci_status
      t.text :office_address
      t.string :url
      t.string :pid
      t.string :charge_code

      t.timestamps
    end
  end
end
