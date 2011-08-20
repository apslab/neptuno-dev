class CreateFunctionalUnits < ActiveRecord::Migration
  def self.up
    create_table :functional_units do |t|
      t.integer :owner_id
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :functional_units
  end
end
