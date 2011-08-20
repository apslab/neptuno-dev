class AddColumnCompanyToFranchise < ActiveRecord::Migration
  def self.up
    add_column :franchises, :company_id, :integer
  end

  def self.down
    remove_column :franchises, :company_id
  end
end
