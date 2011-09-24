class AddColumnimageFileNameToFranchises < ActiveRecord::Migration
  def self.up
    add_column :franchises, :image_file_name, :string
  end

  def self.down
    remove_column :franchises, :image_file_name
  end
end
