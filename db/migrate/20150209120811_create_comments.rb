class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
