class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :to
      t.string :from
      t.string :subject
      t.string :cc
      t.string :bcc
      t.text :body
      t.string :project_id

      t.timestamps
    end
     add_index :emails, :project_id
  end
end
