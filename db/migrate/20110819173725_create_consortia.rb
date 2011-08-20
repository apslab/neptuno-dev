class CreateConsortia < ActiveRecord::Migration
  def self.up
    create_table :consortia do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :consortia
  end
end
