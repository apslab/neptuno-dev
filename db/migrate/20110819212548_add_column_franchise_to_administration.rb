class AddColumnFranchiseToAdministration < ActiveRecord::Migration
  def self.up
    add_column :administrations, :franchise_id, :integer
  end

  def self.down
    remove_column :administrations, :franchise_id
  end
end
