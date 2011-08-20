class AddColumnConsortiumToFunctionalUnits < ActiveRecord::Migration
  def self.up
    add_column :functional_units, :consortium_id, :integer
  end

  def self.down
    remove_column :functional_units, :consortium_id
  end
end
