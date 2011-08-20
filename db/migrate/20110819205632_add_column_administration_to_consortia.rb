class AddColumnAdministrationToConsortia < ActiveRecord::Migration
  def self.up
    add_column :consortia, :administration_id, :integer
  end

  def self.down
    remove_column :consortia, :administration_id
  end
end
