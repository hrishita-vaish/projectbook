class AddSeqIdToProject < ActiveRecord::Migration
  def change
    add_column :projects, :seq_id, :integer
  end
end
