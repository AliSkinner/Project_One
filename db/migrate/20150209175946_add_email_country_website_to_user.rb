class AddEmailCountryWebsiteToUser < ActiveRecord::Migration
  def change
    add_column :users, :email, :string
    add_column :users, :country, :string
    add_column :users, :website, :string
  end
end
